// 探针：验证 ropecv.h 转换层的最小可运行入口。
// 正式绑定由 tools/gen/emit.py 生成到 cv_<module>.cpp。

#include "ropecv.h"

// [[Rcpp::export]]
SEXP probe_mat_new(int rows, int cols, int type, SEXP value) {
  return ropecv::mat_new(rows, cols, type, value);
}

// 从 R 的矩阵 / 三维数组 / raw 向量建一个独立的 cvMat（深拷贝）。
// R 侧的 Mat(m) 走这里，省得用户先量维度再算类型码。
// [[Rcpp::export]]
SEXP probe_mat_from(SEXP x) {
  if (ropecv::is_mat(x)) return x;
  if (Rf_isNull(x))
    Rcpp::stop("Mat(): 需要一个矩阵、三维数组或 raw 向量，收到 NULL");
  ropecv::InArg a(x);
  cv::Mat m = a.ia().getMat();
  if (m.empty()) Rcpp::stop("Mat(): 转换结果为空");
  return ropecv::wrap_mat(m.clone());
}

// [[Rcpp::export]]
Rcpp::IntegerVector probe_info(SEXP m) {
  return ropecv::mat_info(m);
}

// [[Rcpp::export]]
double probe_sum(SEXP src) {
  return cv::sum(ropecv::in(src))[0];
}

// [[Rcpp::export]]
SEXP probe_to_r(SEXP m) {
  return ropecv::mat_to_r(m);
}

// ------------------------------------------------------------------ 原地读写
//
// R 侧 img[i, j] <- v 落到这里：直接改 cv::Mat 的像素缓冲，不经过任何拷贝。
// 下标由 R 层算成「按列优先展开的 1-based 线性下标」——和 mat_to_r 给出的
// 数组顺序完全一致，所以 R 的数组语义能一一对上，不需要在 C++ 里重做一遍
// 负索引 / 逻辑索引 / 缺省维那些规则。

namespace ropecv {

inline double val_at(SEXP x, R_xlen_t i) {
  switch (TYPEOF(x)) {
    case RAWSXP:  return RAW(x)[i];
    case LGLSXP:  return LOGICAL(x)[i];
    case INTSXP:  return INTEGER(x)[i];
    case REALSXP: return REAL(x)[i];
    default:
      Rcpp::stop("赋值需要数值 / 整数 / 逻辑 / raw 向量，实际是 %s",
                 Rf_type2char(TYPEOF(x)));
  }
}

// 和 cv::Mat::at<T>() = v 的区别：这里饱和，不截断。
// img[img > 200] <- 300 落在 CV_8U 上应该变 255，而不是溢出成 44。
inline void set_px(cv::Mat& m, int r, int c, int k, double v) {
  const int off = c * m.channels() + k;
  switch (m.depth()) {
    case CV_8U:  m.ptr<uchar>(r)[off]  = cv::saturate_cast<uchar>(v);  break;
    case CV_8S:  m.ptr<schar>(r)[off]  = cv::saturate_cast<schar>(v);  break;
    case CV_16U: m.ptr<ushort>(r)[off] = cv::saturate_cast<ushort>(v); break;
    case CV_16S: m.ptr<short>(r)[off]  = cv::saturate_cast<short>(v);  break;
    case CV_32S: m.ptr<int>(r)[off]    = cv::saturate_cast<int>(v);    break;
    case CV_32F: m.ptr<float>(r)[off]  = static_cast<float>(v);        break;
    default:     m.ptr<double>(r)[off] = v;                            break;
  }
}

inline double get_px(const cv::Mat& m, int r, int c, int k) {
  const int off = c * m.channels() + k;
  switch (m.depth()) {
    case CV_8U:  return m.ptr<uchar>(r)[off];
    case CV_8S:  return m.ptr<schar>(r)[off];
    case CV_16U: return m.ptr<ushort>(r)[off];
    case CV_16S: return m.ptr<short>(r)[off];
    case CV_32S: return m.ptr<int>(r)[off];
    case CV_32F: return m.ptr<float>(r)[off];
    default:     return m.ptr<double>(r)[off];
  }
}

}  // namespace ropecv

// 把线性下标拆成 (行, 列, 通道)。R 的数组是列优先，通道是最外层的平面。
struct ProbeIdx {
  int r, c, k;
};

static inline ProbeIdx probe_split_index(R_xlen_t p, int rows, int cols) {
  ProbeIdx o;
  o.r = static_cast<int>(p % rows);
  o.c = static_cast<int>((p / rows) % cols);
  o.k = static_cast<int>(p / (static_cast<R_xlen_t>(rows) * cols));
  return o;
}

// [[Rcpp::export]]
void probe_mat_assign(SEXP mx, SEXP idx, SEXP value) {
  cv::Mat* m = ropecv::mat_ptr(mx);
  if (m->empty() || m->total() == 0)
    Rcpp::stop("cvMat 是空的，没有可写的内存");
  const int rows = m->rows, cols = m->cols;
  const R_xlen_t total = static_cast<R_xlen_t>(rows) * cols * m->channels();
  Rcpp::IntegerVector iv(idx);
  const R_xlen_t n = iv.size();
  const R_xlen_t nv = XLENGTH(value);
  if (nv != 1 && nv != n)
    Rcpp::stop("赋值长度必须是 1 或 %lld，实际 %lld",
               static_cast<long long>(n), static_cast<long long>(nv));
  const bool scalar = (nv == 1);
  const double v0 = scalar ? ropecv::val_at(value, 0) : 0.0;
  for (R_xlen_t t = 0; t < n; ++t) {
    const R_xlen_t p = static_cast<R_xlen_t>(iv[t]) - 1;
    if (p < 0 || p >= total)
      Rcpp::stop("下标越界：第 %lld 个（总长 %lld）",
                 static_cast<long long>(p + 1), static_cast<long long>(total));
    const ProbeIdx o = probe_split_index(p, rows, cols);
    ropecv::set_px(*m, o.r, o.c, o.k, scalar ? v0 : ropecv::val_at(value, t));
  }
}

// 读单个/若干元素。返回的存储类型跟 mat_to_r 一致，方便 R 层直接比较。
// [[Rcpp::export]]
SEXP probe_mat_extract(SEXP mx, SEXP idx) {
  cv::Mat* m = ropecv::mat_ptr(mx);
  if (m->empty() || m->total() == 0)
    Rcpp::stop("cvMat 是空的，没有可读的像素");
  const int rows = m->rows, cols = m->cols;
  const R_xlen_t total = static_cast<R_xlen_t>(rows) * cols * m->channels();
  Rcpp::IntegerVector iv(idx);
  const R_xlen_t n = iv.size();
  const int depth = m->depth();
  const int cn = m->channels();

  Rcpp::IntegerVector out_i;
  Rcpp::NumericVector out_d;
  Rcpp::RawVector out_r;
  if (depth == CV_8U)      out_r = Rcpp::RawVector(n);
  else if (depth == CV_32S) out_i = Rcpp::IntegerVector(n);
  else                      out_d = Rcpp::NumericVector(n);

  for (R_xlen_t t = 0; t < n; ++t) {
    const R_xlen_t p = static_cast<R_xlen_t>(iv[t]) - 1;
    if (p < 0 || p >= total)
      Rcpp::stop("下标越界：第 %lld 个（总长 %lld）",
                 static_cast<long long>(p + 1), static_cast<long long>(total));
    const ProbeIdx o = probe_split_index(p, rows, cols);
    const double v = ropecv::get_px(*m, o.r, o.c, o.k);
    if (depth == CV_8U)       out_r[t] = static_cast<unsigned char>(v);
    else if (depth == CV_32S) out_i[t] = static_cast<int>(v);
    else                      out_d[t] = v;
  }
  (void)cn;
  if (depth == CV_8U) return out_r;
  if (depth == CV_32S) return out_i;
  return out_d;
}

// ------------------------------------------------------------------ 感兴趣区域
//
// 对应 cv::Mat(const Mat&, const Rect&)：返回一个共享像素缓冲的子矩阵头，
// 不拷贝任何数据。wrap_mat 存的是 cv::Mat 的**头**（引用计数加一），
// 所以写 ROI 会落在原图的像素上——这正是「感兴趣区域」的语义，
// 也是「拷贝一个 Mat 很便宜」这句话的具体含义。
//
// 需要独立副本时调用方先 cv_copyTo()。
// [[Rcpp::export]]
SEXP probe_mat_roi(SEXP mx, int x, int y, int w, int h) {
  cv::Mat* m = ropecv::mat_ptr(mx);
  if (m->empty()) Rcpp::stop("cv_mat_roi: 输入是空矩阵");
  if (w <= 0 || h <= 0)
    Rcpp::stop("cv_mat_roi: 宽高必须是正数，收到 w=%d, h=%d", w, h);
  if (x < 0 || y < 0 || x + w > m->cols || y + h > m->rows)
    Rcpp::stop("cv_mat_roi: 区域 (x=%d, y=%d, w=%d, h=%d) 超出 %d 行 %d 列的图像",
               x, y, w, h, m->rows, m->cols);
  return ropecv::wrap_mat(cv::Mat(*m, cv::Rect(x, y, w, h)));
}

// ------------------------------------------------------------------ FileNode 下标
//
// cv::FileNode::operator[] 在 C++ 侧有两个重载——按名字取（map 节点）和按下标取
// （sequence 节点）——生成的绑定两个都没包。结果 cvFileStorage 读回来的节点只能
// 拿到 getFirstTopLevelNode() 那一个：keys() 能列出全部键名，却取不到任何一个的值。
// 配置文件读不动，这一章就写不下去。
//
// 这里按 R 的习惯合成一个入口：字符下标按名字找，整数下标按位置找（1 基）。
// 注意返回的节点指回 FileStorage 内部的缓冲区，**storage 一旦 release 就悬空**，
// 所以调用方必须活到节点用完为止。
// [[Rcpp::export]]
SEXP probe_filenode_get(SEXP node, SEXP key) {
  cv::FileNode* n = ropecv::obj_as<cv::FileNode>(node);
  if (n->empty()) Rcpp::stop("cv_filenode_get: 节点是空的");

  cv::FileNode r;
  if (TYPEOF(key) == STRSXP) {
    if (XLENGTH(key) != 1)
      Rcpp::stop("cv_filenode_get: 键名只能有一个");
    if (!n->isMap())
      Rcpp::stop("cv_filenode_get: 按名字取值要求 map 节点");
    r = (*n)[std::string(CHAR(STRING_ELT(key, 0)))];
  } else if (TYPEOF(key) == INTSXP || TYPEOF(key) == REALSXP) {
    int i = Rf_asInteger(key);
    if (i < 1)
      Rcpp::stop("cv_filenode_get: 下标从 1 开始，收到 %d", i);
    if (!n->isSeq())
      Rcpp::stop("cv_filenode_get: 按下标取值要求 sequence 节点");
    if ((size_t)i > n->size())
      Rcpp::stop("cv_filenode_get: 下标 %d 超出序列长度 %d", i, (int)n->size());
    r = (*n)[(size_t)(i - 1)];
  } else {
    Rcpp::stop("cv_filenode_get: 下标必须是字符串或整数");
  }

  // 键不存在时 OpenCV 返回 none 节点，而不是抛错。这里如实返回 NULL，
  // 让 R 侧能写 `if (is.null(n[["k"]]))`，比返回一个「空但存在」的对象清楚。
  if (r.isNone()) return R_NilValue;
  return ropecv::wrap_obj(cv::Ptr<cv::FileNode>(new cv::FileNode(r)), "cvFileNode");
}
