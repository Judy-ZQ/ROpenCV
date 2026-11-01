// 元素级运算：OpenCV 5 里没有的那几个，加上 Mat::convertTo。
//
// 为什么 sin / cos / tan / asin / acos / atan / log2 / log10 要自己写：
//
// OpenCV 4 的 core.hpp 里有
//     CV_EXPORTS_W void sin(InputArray src, OutputArray dst);
// 一整族一元函数。OpenCV 5 把它们从公开 API 里删干净了——现在整棵头文件树里
// 只剩 exp / log / sqrt / pow 四个（`grep -rn "CV_EXPORTS_W void .*(InputArray src, OutputArray dst)"`
// 只回这四行）。于是 `sin(img)` 这种最普通的写法在绑定层根本没有落点，
// 不是生成器漏了，是上游没了。
//
// 这里用 std:: 的同名函数按元素铺一遍，语义与 4.x 保持一致：
// 输入输出同尺寸、同通道数、同深度，逐元素计算。
//
// 两个刻意的取舍：
//
// 1) 一律先转 CV_64F 再算，最后 convertTo 回原深度。
//    代价是多一份 8 字节/元素的临时缓冲（640x480x3 约 7 MB），换来的是
//    所有 op 共用一条代码路径，不用为每种类型写一遍模板特化。
//    最后那步 convertTo 负责饱和回整数类型，行为与 OpenCV 其它地方一致。
//
// 2) 三角/对数/指数类要求 CV_32F 或 CV_64F，整数输入直接报错。
//    自动提升看着方便，但会悄悄改掉返回对象的类型，调用方拿到的
//    cvMat 已经不是原来那张图了。宁可让用户显式写一次 cv_mat_convert()。

#include <Rcpp.h>
#include <opencv2/core.hpp>
#include <cmath>
#include <string>
#include "ropecv.h"

namespace {

const char* depth_name(int d) {
  switch (d) {
    case CV_8U:  return "CV_8U";
    case CV_8S:  return "CV_8S";
    case CV_16U: return "CV_16U";
    case CV_16S: return "CV_16S";
    case CV_32S: return "CV_32S";
    case CV_32F: return "CV_32F";
    case CV_64F: return "CV_64F";
    default:     return "unknown";
  }
}

inline bool is_float_depth(int d) { return d == CV_32F || d == CV_64F; }

// 需要浮点深度的 op：整数输入报错，而不是悄悄提升。
inline bool needs_float(const std::string& op) {
  static const char* k[] = {"sin", "cos", "tan", "asin", "acos", "atan",
                            "log", "log2", "log10", "exp", "sqrt"};
  for (const char* s : k) if (op == s) return true;
  return false;
}

double apply_op(const std::string& op, double v, double param) {
  if (op == "sin")     return std::sin(v);
  if (op == "cos")     return std::cos(v);
  if (op == "tan")     return std::tan(v);
  if (op == "asin")    return std::asin(v);
  if (op == "acos")    return std::acos(v);
  if (op == "atan")    return std::atan(v);
  if (op == "log")     return std::log(v);
  if (op == "log2")    return std::log2(v);
  if (op == "log10")   return std::log10(v);
  if (op == "exp")     return std::exp(v);
  if (op == "sqrt")    return std::sqrt(v);
  if (op == "abs")     return std::fabs(v);
  if (op == "floor")   return std::floor(v);
  if (op == "ceiling") return std::ceil(v);
  // trunc 是「朝零取整」，round 是「四舍六入五成双」。
  // 后者用 nearbyint 而不是 round：R 的 round() 走的是 IEC 60559 的
  // 半值取偶规则，std::round 是「五远离零」，round(0.5) 两者差 1。
  if (op == "trunc")   return std::trunc(v);
  if (op == "round")   return std::nearbyint(v);
  if (op == "sign")    return (v > 0) - (v < 0);
  // 倒数族。存在的理由：R 侧 s / x 不能走 convertTo（它不是仿射变换），
  // 而 cv::divide(double, Mat) 在整数类型上是**截断**除法，和 m / 2 走的
  // convertTo（四舍六入五成双）对不上——同一张图上 251/2 得 126、2/251 得 0，
  // 两个方向用两套取整规则，很难解释。这里统一在 double 上算再饱和。
  if (op == "recip")   return 1.0 / v;
  if (op == "rdiv")    return param / v;
  Rcpp::stop("未知的一元运算：%s", op.c_str());
  return v;  // 到不了
}

}  // namespace

// [[Rcpp::export]]
SEXP cv_mat_convert(SEXP src, int rtype, double alpha, double beta) {
  try {
    cv::Mat& m = *ropecv::mat_ptr(src);
    if (m.empty()) {
      Rcpp::stop("cvMat 是空的（0x0），没法转换");
    }
    cv::Mat out;
    // rtype < 0 表示保持原类型，此时 alpha / beta 仍然生效——
    // 这正是 Mat::operator*=(double) / operator/=(double) 的内部做法。
    m.convertTo(out, rtype, alpha, beta);
    return ropecv::wrap_mat(std::move(out));
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertTo: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertTo: %s", e.what());
  }
  return R_NilValue;
}

// [[Rcpp::export]]
SEXP cv_mat_math(SEXP src, std::string op, double param) {
  try {
    cv::Mat& m = *ropecv::mat_ptr(src);
    if (m.empty()) {
      Rcpp::stop("cvMat 是空的（0x0），没法做 %s", op.c_str());
    }
    const int depth = m.depth();
    if (needs_float(op) && !is_float_depth(depth)) {
      Rcpp::stop("%s() 需要 CV_32F 或 CV_64F，当前是 %s；"
                 "先用 cv_mat_convert(x, CV_64F) 转成浮点再算。",
                 op.c_str(), depth_name(depth));
    }

    cv::Mat tmp;
    m.convertTo(tmp, CV_64F);
    // 多通道也走这条：convertTo 出来的 tmp 是交错的，
    // 把通道维摊平后逐个算，等价于 OpenCV 4 那批函数的行为。
    const size_t n = tmp.total() * static_cast<size_t>(tmp.channels());
    double* p = tmp.ptr<double>();
    for (size_t i = 0; i < n; ++i) p[i] = apply_op(op, p[i], param);

    // 整数类型表示不了 Inf / NaN，而 cvRound(Inf) 在 x86 上溢出成 INT_MIN，
    // 于是 saturate_cast 在不同深度上给出的结果不一致（CV_8U 得 0、
    // CV_16S 得 -32768）。除零在整数上是有可能出现的，这里统一按
    // cv::divide 的约定处理成 0，让结果不依赖类型宽度。
    if (!is_float_depth(depth)) {
      for (size_t i = 0; i < n; ++i) {
        if (!std::isfinite(p[i])) p[i] = 0.0;
      }
    }

    cv::Mat out;
    tmp.convertTo(out, depth);   // 饱和回原深度
    return ropecv::wrap_mat(std::move(out));
  } catch (const cv::Exception& e) {
    Rcpp::stop("%s: %s", op.c_str(), e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("%s: %s", op.c_str(), e.what());
  }
  return R_NilValue;
}
