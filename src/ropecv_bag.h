// 参数袋（parameter bag）的手写转换器。
//
// 有些类在 R 侧最自然的形态是命名 list，但用「字段表 -> 命名 list」这套
// 生成规则描述不了，因为键是运行期才知道的：
//
//   cv::dnn::LayerParams 继承 cv::dnn::Dict，参数键完全由层的类型决定
//   （Convolution 要 num_output / pad / kernel_size，Pooling 要 pool / stride …）。
//   它还有 blobs / name / type 三个普通成员，没有任何 CV_PROP 标注，
//   所以结构体收集器根本看不见它。
//
// 这类东西在这里手写 as_ 转换器，生成器只负责在用到它的编译单元里
// #include "ropecv_bag.h"（见 emit.py 的 BAG_REFS 与 emit_classes.py）。
//
// 为什么单独一个头，而不是塞进 ropecv.h：
//   ropecv.h 被 280 个 .cpp 包含，把 opencv2/dnn/dnn.hpp 拖进去会让每次
//   全量重编再慢一截。而真正需要它的只有 cvcls_dnn.cpp 一个。

#ifndef ROPECV_BAG_H
#define ROPECV_BAG_H

#include "ropecv.h"
#include <opencv2/dnn/dnn.hpp>

namespace ropecv {

// SEXP -> cv::dnn::LayerParams
//
// R 侧写法就是一个命名 list，键即参数名：
//
//   list(num_output = 64L, pad = 1L, kernel_size = c(3L, 3L))
//   list(name = "conv1", type = "Convolution", blobs = list(w))
//
// 分派规则：
//   固定成员   blobs -> vector<Mat>，name / type -> 字符串
//   长度 1 的整数 / 逻辑 -> Dict::set<int>
//   长度 1 的实数        -> Dict::set<double>
//   长度 1 的字符串      -> Dict::set<std::string>
//   向量                 -> DictValue::arrayInt / arrayReal / arrayString
//
// 两个跟静态库实例化有关的细节，改这里之前先看一眼：
//   * Dict::set<T> 和 DictValue::arrayXxx 都定义在 dict.cpp 里，头文件只有
//     声明，所以只能用 libopencv_dnn 里**已实例化**的那几个类型。实测可用：
//     set<int|double|std::string|DictValue>、arrayInt<int*>、arrayReal<float*>、
//     arrayString<vector<string>::iterator>。
//   * arrayReal<double*> 没有实例化（只有 float*），所以实数向量先降到
//     vector<float> 再传 .data()。
inline cv::dnn::LayerParams as_bag_dnn_LayerParams(SEXP x) {
  cv::dnn::LayerParams p;
  if (Rf_isNull(x)) return p;
  if (!Rf_isNewList(x))
    Rcpp::stop("LayerParams 需要命名 list，实际收到 %s", Rf_type2char(TYPEOF(x)));
  Rcpp::List L(x);
  if (L.size() == 0) return p;      // list() 是合法输入：全用默认参数
  SEXP nms = L.names();
  if (Rf_isNull(nms))
    Rcpp::stop("LayerParams 需要命名 list（没有名字）");
  Rcpp::CharacterVector nmv(nms);

  for (R_xlen_t i = 0; i < L.size(); ++i) {
    std::string k = Rcpp::as<std::string>(nmv[i]);
    SEXP v = L[i];
    if (k == "name") {
      if (!Rf_isNull(v)) p.name = Rcpp::as<std::string>(v);
      continue;
    }
    if (k == "type") {
      if (!Rf_isNull(v)) p.type = Rcpp::as<std::string>(v);
      continue;
    }
    if (k == "blobs") {
      p.blobs = as_mat_vector(v);
      continue;
    }
    if (Rf_isNull(v)) continue;

    switch (TYPEOF(v)) {
      case LGLSXP:
      case INTSXP:
        if (XLENGTH(v) == 1) {
          p.set<int>(k, Rcpp::as<int>(v));
        } else {
          p.set<cv::dnn::DictValue>(
              k, cv::dnn::DictValue::arrayInt(INTEGER(v), (int)XLENGTH(v)));
        }
        break;
      case REALSXP:
        if (XLENGTH(v) == 1) {
          p.set<double>(k, Rcpp::as<double>(v));
        } else {
          std::vector<float> f((size_t)XLENGTH(v));
          for (R_xlen_t j = 0; j < XLENGTH(v); ++j)
            f[(size_t)j] = (float)REAL(v)[j];
          p.set<cv::dnn::DictValue>(
              k, cv::dnn::DictValue::arrayReal(f.data(), (int)f.size()));
        }
        break;
      case STRSXP:
        if (XLENGTH(v) == 1) {
          p.set<std::string>(k, Rcpp::as<std::string>(v));
        } else {
          std::vector<std::string> ss;
          ss.reserve((size_t)XLENGTH(v));
          for (R_xlen_t j = 0; j < XLENGTH(v); ++j)
            ss.push_back(Rcpp::as<std::string>(STRING_ELT(v, j)));
          p.set<cv::dnn::DictValue>(
              k, cv::dnn::DictValue::arrayString(ss.begin(), (int)ss.size()));
        }
        break;
      default:
        Rcpp::stop("LayerParams 的 '%s' 只支持整数/实数/字符串（标量或向量），"
                   "实际是 %s", k.c_str(), Rf_type2char(TYPEOF(v)));
    }
  }
  return p;
}

}  // namespace ropecv

#endif  // ROPECV_BAG_H
