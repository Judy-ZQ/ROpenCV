// 手写的入口。生成器够不着或者不该让它自动生成的，放这里。
//
// minMaxIdx 是第一个，原因值得写清楚，因为它差点变成一个内存踩踏：
//
// cv::minMaxIdx 的签名是
//     minMaxIdx(InputArray src, double* minVal, double* maxVal,
//               int* minIdx, int* maxIdx, InputArray mask)
// 文档明确写着 minIdx / maxIdx 要「allocated with a size of src.dims」——
// 二维图要 2 个 int，三维要 3 个。生成器把所有 T* 出参当标量处理，
// 于是产出的是
//     int _o2 = 0;
//     ::cv::minMaxIdx(..., &_o2, &_o3, ...);
// OpenCV 会往里写 dims 个 int，第二个开始就落到栈上相邻的变量里。
// 读数看着「差不多对」（因为只读回第一个），实际已经把栈写坏了。
//
// 这类「出参长度取决于输入维度」的形状无法从声明里推出来，所以不做通用规则，
// 单独手写一个。

#include <Rcpp.h>
#include <opencv2/core.hpp>
#include <opencv2/flann/defines.h>
#include <map>
#include <string>
#include <vector>
#include "ropecv.h"

// ---------------------------------------------------------------- 类型码常量
//
// 值一律取自 C++ 宏，R 侧不写死数字：OpenCV 5 把 CV_CN_SHIFT 从 3 改成 5，
// CV_8UC3 由 16 变 64，任何硬编码都会错。
//
// 这个函数原来写在 probe/src/cv_types.cpp 里——那是**生成文件**
// （`emit.py types` 的输出，文件头就写着「请勿手改」）。因为 types.hpp 里
// 只有 inline 定义，修好 cvparse 的 grab_decl 之前那模块一个自由函数都产不出，
// 文件长期没被重写，手写内容就「赖」在那儿没出事。修完之后
// rectangleIntersectionArea 被解析出来，模块第一次进入生成列表，文件被覆盖，
// 常量当场全丢——链接时报 `undefined reference to _probe_cv_type_constants`。
// 挪到这里就再也不会被生成器碰到。
//
// [[Rcpp::export]]
Rcpp::List cv_type_constants() {
  return Rcpp::List::create(
      Rcpp::Named("CV_8U")   = (int)CV_8U,
      Rcpp::Named("CV_8S")   = (int)CV_8S,
      Rcpp::Named("CV_16U")  = (int)CV_16U,
      Rcpp::Named("CV_16S")  = (int)CV_16S,
      Rcpp::Named("CV_32S")  = (int)CV_32S,
      Rcpp::Named("CV_32F")  = (int)CV_32F,
      Rcpp::Named("CV_64F")  = (int)CV_64F,
      Rcpp::Named("CV_16F")  = (int)CV_16F,

      Rcpp::Named("CV_8UC1") = (int)CV_8UC1,
      Rcpp::Named("CV_8UC2") = (int)CV_8UC2,
      Rcpp::Named("CV_8UC3") = (int)CV_8UC3,
      Rcpp::Named("CV_8UC4") = (int)CV_8UC4,
      Rcpp::Named("CV_8SC1") = (int)CV_8SC1,
      Rcpp::Named("CV_8SC2") = (int)CV_8SC2,
      Rcpp::Named("CV_8SC3") = (int)CV_8SC3,
      Rcpp::Named("CV_8SC4") = (int)CV_8SC4,
      Rcpp::Named("CV_16UC1") = (int)CV_16UC1,
      Rcpp::Named("CV_16UC2") = (int)CV_16UC2,
      Rcpp::Named("CV_16UC3") = (int)CV_16UC3,
      Rcpp::Named("CV_16UC4") = (int)CV_16UC4,
      Rcpp::Named("CV_16SC1") = (int)CV_16SC1,
      Rcpp::Named("CV_16SC2") = (int)CV_16SC2,
      Rcpp::Named("CV_16SC3") = (int)CV_16SC3,
      Rcpp::Named("CV_16SC4") = (int)CV_16SC4,
      Rcpp::Named("CV_32SC1") = (int)CV_32SC1,
      Rcpp::Named("CV_32SC2") = (int)CV_32SC2,
      Rcpp::Named("CV_32SC3") = (int)CV_32SC3,
      Rcpp::Named("CV_32SC4") = (int)CV_32SC4,
      Rcpp::Named("CV_32FC1") = (int)CV_32FC1,
      Rcpp::Named("CV_32FC2") = (int)CV_32FC2,
      Rcpp::Named("CV_32FC3") = (int)CV_32FC3,
      Rcpp::Named("CV_32FC4") = (int)CV_32FC4,
      Rcpp::Named("CV_64FC1") = (int)CV_64FC1,
      Rcpp::Named("CV_64FC2") = (int)CV_64FC2,
      Rcpp::Named("CV_64FC3") = (int)CV_64FC3,
      Rcpp::Named("CV_64FC4") = (int)CV_64FC4,

      Rcpp::Named("CV_CN_SHIFT") = (int)CV_CN_SHIFT,

      // flann 的距离类型。cvflann::flann_distance_t 在 cvflann 命名空间下，
      // 枚举收集器只扫 cv:: 下面的，所以这一组不会出现在 cv_enums() 里。
      // 值仍由编译器算：FLANN_DIST_L2 和 FLANN_DIST_EUCLIDEAN 是同一个值，
      // 抄错了看不出来。
      Rcpp::Named("FLANN_DIST_EUCLIDEAN") = (int)cvflann::FLANN_DIST_EUCLIDEAN,
      Rcpp::Named("FLANN_DIST_L2") = (int)cvflann::FLANN_DIST_L2,
      Rcpp::Named("FLANN_DIST_MANHATTAN") = (int)cvflann::FLANN_DIST_MANHATTAN,
      Rcpp::Named("FLANN_DIST_L1") = (int)cvflann::FLANN_DIST_L1,
      Rcpp::Named("FLANN_DIST_MINKOWSKI") = (int)cvflann::FLANN_DIST_MINKOWSKI,
      Rcpp::Named("FLANN_DIST_MAX") = (int)cvflann::FLANN_DIST_MAX,
      Rcpp::Named("FLANN_DIST_HIST_INTERSECT") = (int)cvflann::FLANN_DIST_HIST_INTERSECT,
      Rcpp::Named("FLANN_DIST_HELLINGER") = (int)cvflann::FLANN_DIST_HELLINGER,
      Rcpp::Named("FLANN_DIST_CHI_SQUARE") = (int)cvflann::FLANN_DIST_CHI_SQUARE,
      Rcpp::Named("FLANN_DIST_KULLBACK_LEIBLER") = (int)cvflann::FLANN_DIST_KULLBACK_LEIBLER,
      Rcpp::Named("FLANN_DIST_HAMMING") = (int)cvflann::FLANN_DIST_HAMMING,
      Rcpp::Named("FLANN_DIST_DNAMMING") = (int)cvflann::FLANN_DIST_DNAMMING,
      Rcpp::Named("FLANN_DIST_CS") = (int)cvflann::FLANN_DIST_CS);
}

// [[Rcpp::export]]
SEXP cv_minMaxIdx(SEXP src, SEXP mask) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(mask);
    cv::_InputArray ia = _i0.ia();
    const int nd = ia.dims();
    // 多通道时 OpenCV 明确拒绝给下标：
    //   Assertion failed: (cn == 1 && ...) || (cn > 1 && _mask.empty() && !minIdx && !maxIdx)
    // 而 R 侧的数组是 (行, 列, 通道)，一张彩色图进到这里就是 cn=3，
    // 所以这条不是边角情况，是常规路径。多通道就只给数值，下标返回 NULL，
    // 让 R 侧用 which(a == maxVal, arr.ind = TRUE) 自己定位。
    const int cn = ia.channels();
    const bool want_idx = (cn == 1);
    double minVal = 0, maxVal = 0;
    // 按 src.dims 分配，并且用 -1 初始化：万一 OpenCV 因为某种原因没写满，
    // 返回 -1 比返回一个恰好为 0 的假下标好排查。
    std::vector<int> minIdx(static_cast<size_t>(want_idx ? nd : 0), -1);
    std::vector<int> maxIdx(static_cast<size_t>(want_idx ? nd : 0), -1);
    ::cv::minMaxIdx(ia, &minVal, &maxVal,
                    want_idx ? minIdx.data() : NULL,
                    want_idx ? maxIdx.data() : NULL,
                    _i1.ia());
    return Rcpp::List::create(
        Rcpp::Named("minVal") = Rf_ScalarReal(minVal),
        Rcpp::Named("maxVal") = Rf_ScalarReal(maxVal),
        Rcpp::Named("minIdx") = want_idx ? Rcpp::wrap(minIdx) : R_NilValue,
        Rcpp::Named("maxIdx") = want_idx ? Rcpp::wrap(maxIdx) : R_NilValue);
  } catch (const cv::Exception& e) {
    Rcpp::stop("minMaxIdx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("minMaxIdx: %s", e.what());
  }
  return R_NilValue;
}

// ---------------------------------------------------------------- 滑动条
//
// createTrackbar 的回调是 C 函数指针（void(*)(int, void*)），生成器翻不出来，
// 所以它一直没进绑定层。
//
// 位置怎么存：一开始按 OpenCV 4 的写法传一个 int*，跑起来 OpenCV 5 直接打警告
// "Using 'value' pointer is unsafe and deprecated. Use NULL as value pointer."
// 也就是说 OpenCV 5 自己否掉了这个契约（它把指针存下来、滑块移动时往里写，
// 生命周期全压在调用方身上）。传 NULL 之后位置由窗口自己保存，R 侧用
// getTrackbarPos 读。代价是没法在创建时指定初始位置，value 非零时补一次
// setTrackbarPos。
//
// 回调怎么接：ROpenCV 那版（ROpenCV/src/cv_highgui.cpp）用了一个
//     static trackbarCallback_object *m_ga;
// 单例来存 R 函数。这有两个问题：
//
//   1) 只能有一个带回调的滑动条。建第二个的时候 m_ga 被顶掉，
//      第一个滑块的拖动会去调第二个的函数。
//   2) doWork 里 catch 完只 Rcout 一句，异常被吞掉。用户看到的现象是
//      「R 函数不执行」，而屏幕上什么都没有——他们当时就是这么被卡的。
//
// 这里改成把回调对象挂到 userdata 上：OpenCV 原样传回来，不需要任何全局
// 单例，每个滑动条各有一份。注册表只用来持有所有权（防止 new 出来的对象
// 泄漏到没人管），键是「窗口名 + 单元分隔符 + 滑动条名」，同名重复创建时
// 旧对象被替换掉。
//
// 异常绝对不能穿过 OpenCV 的 C 栈：回调是在 waitKey 的消息泵里被调用的，
// 让 C++ 异常往上冒会穿过 C 帧。所以这里 catch(...) 兜住，用 Rcerr 报一行，
// 不调用任何可能 longjmp 的 R API。

namespace {

struct TrackbarCb {
  Rcpp::Function fn;   // Rcpp::Function 自带 PreserveStorage，SEXP 不会被 GC
  std::string key;
};

std::map<std::string, TrackbarCb*>& trackbar_registry() {
  static std::map<std::string, TrackbarCb*> m;
  return m;
}

std::string trackbar_key(const std::string& winname, const std::string& trackbarname) {
  // \x1f 是 ASCII 的单元分隔符，正常窗口名里不会出现，拿它拼接不会撞键。
  return winname + '\x1f' + trackbarname;
}

void trackbar_dispatch(int pos, void* userdata) {
  TrackbarCb* cb = static_cast<TrackbarCb*>(userdata);
  if (!cb) return;
  try {
    cb->fn(pos);
  } catch (const std::exception& e) {
    Rcpp::Rcerr << "滑动条回调出错（位置 " << pos << "）：" << e.what()
                << "\nR 代码在回调里报错不会中断窗口循环，修好后继续拖动即可。"
                << std::endl;
  } catch (...) {
    // R 侧 stop() 走的是 longjmp，Rcpp 转出来的不是 std::exception 派生类。
    // R 自己已经把 "Error in ... : 原因" 打到 stderr 了，这里不重复，
    // 只补一句说明循环没断。
    Rcpp::Rcerr << "滑动条回调出错（位置 " << pos
                << "）：原因见上一条 Error；窗口循环继续。" << std::endl;
  }
}

}  // namespace

// [[Rcpp::export]]
SEXP cv_createTrackbar(std::string trackbarname, std::string winname,
                       int value, int count, SEXP onChange) {
  try {
    if (count <= 0) {
      Rcpp::stop("count 必须为正，收到 %d", count);
    }
    if (value < 0 || value > count) {
      Rcpp::stop("初始位置 %d 超出 [0, %d]", value, count);
    }

    cv::TrackbarCallback cb = nullptr;
    void* userdata = nullptr;
    if (!Rf_isNull(onChange)) {
      if (TYPEOF(onChange) != CLOSXP && TYPEOF(onChange) != BUILTINSXP &&
          TYPEOF(onChange) != SPECIALSXP) {
        Rcpp::stop("onChange 必须是函数或 NULL");
      }
      const std::string key = trackbar_key(winname, trackbarname);
      auto& reg = trackbar_registry();
      auto it = reg.find(key);
      if (it != reg.end()) {          // 同名重复创建：换掉旧的，不留悬挂指针
        delete it->second;
        reg.erase(it);
      }
      TrackbarCb* slot = new TrackbarCb{Rcpp::Function(onChange), key};
      reg[key] = slot;
      cb = trackbar_dispatch;
      userdata = slot;
    }

    const int rv = ::cv::createTrackbar(trackbarname, winname, nullptr, count,
                                        cb, userdata);
    // 位置来自那个被废弃的 int*，传 NULL 之后只能事后设。
    // 注意：setTrackbarPos 会触发一次回调，所以带 onChange 创建时
    // R 函数会立刻被调用一次（位置就是 value）。
    if (value > 0) {
      ::cv::setTrackbarPos(trackbarname, winname, value);
    }
    return Rcpp::wrap(rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("createTrackbar: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createTrackbar: %s", e.what());
  }
  return R_NilValue;
}
