// ropecv.h —— ROpenCV v2 转换层（手写，不生成）
//
// 设计要点：
//   1. InputArray / OutputArray 直接指向已有的 cv::Mat，不 new、不 copyTo。
//   2. 需要容器的转换（vector<Mat>、vector<Point>）一律在调用方函数体内产生局部变量，
//      避免 _InputArray 持有已析构容器的指针。
//   3. 不做任何隐式深拷贝；唯一允许的拷贝是用户显式要求的。
//
// 本文件只依赖 Rcpp + OpenCV，不依赖 Rcpp Modules。

#pragma once

#define R_NO_REMAP
#define STRICT_R_HEADERS

#include <Rcpp.h>
#include <opencv2/opencv.hpp>

#include <cstring>
#include <memory>
#include <string>
#include <type_traits>
#include <utility>
#include <vector>

namespace ropecv {

// ---------------------------------------------------------------- GC 压力阀
//
// R 的 GC 由 R 堆（Ncells/Vcells）压力触发，看不到 cv::Mat 的像素缓冲。
// 返回式调用每次都 new 一个 Mat，若不主动回收，R 会一直以为内存充裕，
// 实测 400 次 3MB 的 flip 能涨到 1.2 GB。所以这里自己记账：
// 累计分配超过阈值就触发一次 full GC，让 finalizer 把 XPtr 里的 Mat 释放掉。
//
// 只计 wrap_mat 产生的像素字节；dst 复用路径不产生分配，不记账。

inline size_t& gc_bytes() { static size_t v = 0; return v; }

inline void gc_tick(size_t bytes) {
  gc_bytes() += bytes;
  if (gc_bytes() >= (size_t)128 * 1024 * 1024) {
    gc_bytes() = 0;
    R_gc();
  }
}

// ---------------------------------------------------------------- Mat 指针

inline bool is_mat(SEXP x) {
  return TYPEOF(x) == EXTPTRSXP && Rf_inherits(x, "cvMat");
}

inline cv::Mat* mat_ptr(SEXP x) {
  if (!is_mat(x))
    Rcpp::stop("需要一个 cvMat 对象，实际收到 %s", Rf_type2char(TYPEOF(x)));
  cv::Mat* p = static_cast<cv::Mat*>(R_ExternalPtrAddr(x));
  if (!p) Rcpp::stop("cvMat 指针为空（对象已被释放）");
  return p;
}

inline SEXP wrap_mat(cv::Mat&& m) {
  size_t bytes = m.total() * m.elemSize();
  Rcpp::XPtr<cv::Mat> xp(new cv::Mat(std::move(m)));
  Rf_setAttrib(xp, R_ClassSymbol, Rf_mkString("cvMat"));
  gc_tick(bytes);
  return xp;
}

inline SEXP wrap_mat(const cv::Mat& m) {
  size_t bytes = m.total() * m.elemSize();
  Rcpp::XPtr<cv::Mat> xp(new cv::Mat(m));
  Rf_setAttrib(xp, R_ClassSymbol, Rf_mkString("cvMat"));
  gc_tick(bytes);
  return xp;
}

// ---------------------------------------------------------------- 图像输入

// NULL -> noArray()，用于 mask / 可选输入
inline cv::_InputArray in(SEXP x) {
  if (Rf_isNull(x)) return cv::noArray();
  return cv::_InputArray(*mat_ptr(x));
}

inline cv::_InputOutputArray inout(SEXP x) {
  return cv::_InputOutputArray(*mat_ptr(x));
}

// 图像序列：必须在调用方持有返回的 vector，直到函数调用结束
inline std::vector<cv::Mat> as_mat_vector(SEXP x) {
  if (!Rf_isNewList(x))
    Rcpp::stop("需要 cvMat 列表，实际收到 %s", Rf_type2char(TYPEOF(x)));
  Rcpp::List L(x);
  std::vector<cv::Mat> out;
  out.reserve(static_cast<size_t>(L.size()));
  for (R_xlen_t i = 0; i < L.size(); ++i)
    out.push_back(*mat_ptr(L[i]));
  return out;
}

inline SEXP wrap_mat_vector(const std::vector<cv::Mat>& v) {
  Rcpp::List out(static_cast<R_xlen_t>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[i] = wrap_mat(v[i]);
  return out;
}

inline SEXP wrap_raw_vector(const std::vector<uchar>& v) {
  Rcpp::RawVector out(static_cast<R_xlen_t>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[i] = v[i];
  return out;
}

// ---------------------------------------------------------------- KeyPoint / DMatch
//
// 这两个是 features2d 的通用货币。用 data.frame 而不是矩阵，因为列名自解释，
// 而且用户按名字取列（kp$size）比记第几列可靠。缺失的可选列按 KeyPoint 的
// C++ 默认值填（angle = -1、class_id = -1）。

inline std::vector<cv::KeyPoint> as_keypoints(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::KeyPoint>();
  if (!Rf_isNewList(x))
    Rcpp::stop("KeyPoint 集需要 data.frame（列 x, y, size[, angle, response, octave, class_id]）");
  Rcpp::List L(x);
  Rcpp::CharacterVector nm = L.names();
  R_xlen_t ncol = L.size();
  R_xlen_t n = ncol > 0 ? Rf_xlength(L[0]) : 0;

  std::vector<double> cx(n, 0), cy(n, 0), cs(n, 0), ca(n, -1),
                      cr(n, 0), co(n, 0), cc(n, -1);
  bool hx = false, hy = false, hs = false;
  for (R_xlen_t j = 0; j < ncol; ++j) {
    std::string k(Rf_translateCharUTF8(STRING_ELT(nm, j)));
    Rcpp::NumericVector v = Rcpp::as<Rcpp::NumericVector>(L[j]);
    if (v.size() != n) Rcpp::stop("KeyPoint 各列长度必须一致");
    std::vector<double>* t = NULL;
    if (k == "x") { t = &cx; hx = true; }
    else if (k == "y") { t = &cy; hy = true; }
    else if (k == "size") { t = &cs; hs = true; }
    else if (k == "angle") t = &ca;
    else if (k == "response") t = &cr;
    else if (k == "octave") t = &co;
    else if (k == "class_id") t = &cc;
    if (t) for (R_xlen_t i = 0; i < n; ++i) (*t)[i] = v[i];
  }
  if (!hx || !hy || !hs)
    Rcpp::stop("KeyPoint 集缺少必需列 x / y / size");
  std::vector<cv::KeyPoint> out;
  out.reserve(static_cast<size_t>(n));
  for (R_xlen_t i = 0; i < n; ++i)
    out.push_back(cv::KeyPoint(static_cast<float>(cx[i]), static_cast<float>(cy[i]),
                               static_cast<float>(cs[i]), static_cast<float>(ca[i]),
                               static_cast<float>(cr[i]), static_cast<int>(co[i]),
                               static_cast<int>(cc[i])));
  return out;
}

inline SEXP wrap_keypoints(const std::vector<cv::KeyPoint>& v) {
  R_xlen_t n = static_cast<R_xlen_t>(v.size());
  Rcpp::NumericVector x(n), y(n), sz(n), ang(n), resp(n);
  Rcpp::IntegerVector oct(n), cid(n);
  for (R_xlen_t i = 0; i < n; ++i) {
    const cv::KeyPoint& k = v[static_cast<size_t>(i)];
    x[i] = k.pt.x;  y[i] = k.pt.y;   sz[i] = k.size;
    ang[i] = k.angle; resp[i] = k.response;
    oct[i] = k.octave; cid[i] = k.class_id;
  }
  return Rcpp::DataFrame::create(Rcpp::Named("x") = x, Rcpp::Named("y") = y,
                                 Rcpp::Named("size") = sz, Rcpp::Named("angle") = ang,
                                 Rcpp::Named("response") = resp, Rcpp::Named("octave") = oct,
                                 Rcpp::Named("class_id") = cid);
}

inline std::vector<cv::DMatch> as_dmatches(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::DMatch>();
  // 报错里必须写清楚真正认的列名。早先这里写的是「列 query/train」，
  // 而实际读的是 queryIdx / trainIdx —— 照着错误提示改反而还是错的。
  if (!Rf_isNewList(x))
    Rcpp::stop("DMatch 集需要 data.frame（列 queryIdx, trainIdx, imgIdx, distance）");
  Rcpp::List L(x);
  Rcpp::CharacterVector nm = L.names();
  R_xlen_t ncol = L.size();
  R_xlen_t n = ncol > 0 ? Rf_xlength(L[0]) : 0;

  std::vector<int> q(n, 0), t(n, 0), img(n, -1);
  std::vector<double> dist(n, 0);
  for (R_xlen_t j = 0; j < ncol; ++j) {
    std::string k(Rf_translateCharUTF8(STRING_ELT(nm, j)));
    if (k == "distance") {
      Rcpp::NumericVector v = Rcpp::as<Rcpp::NumericVector>(L[j]);
      for (R_xlen_t i = 0; i < n; ++i) dist[i] = v[i];
    } else if (k == "queryIdx" || k == "trainIdx" || k == "imgIdx") {
      Rcpp::IntegerVector v = Rcpp::as<Rcpp::IntegerVector>(L[j]);
      std::vector<int>* tgt = (k == "queryIdx") ? &q : (k == "trainIdx") ? &t : &img;
      for (R_xlen_t i = 0; i < n; ++i) (*tgt)[i] = v[i];
    }
  }
  std::vector<cv::DMatch> out;
  out.reserve(static_cast<size_t>(n));
  for (R_xlen_t i = 0; i < n; ++i)
    out.push_back(cv::DMatch(q[i], t[i], img[i], static_cast<float>(dist[i])));
  return out;
}

inline SEXP wrap_dmatches(const std::vector<cv::DMatch>& v) {
  R_xlen_t n = static_cast<R_xlen_t>(v.size());
  Rcpp::IntegerVector q(n), t(n), img(n);
  Rcpp::NumericVector dist(n);
  for (R_xlen_t i = 0; i < n; ++i) {
    const cv::DMatch& m = v[static_cast<size_t>(i)];
    q[i] = m.queryIdx; t[i] = m.trainIdx; img[i] = m.imgIdx;
    dist[i] = static_cast<double>(m.distance);
  }
  return Rcpp::DataFrame::create(Rcpp::Named("queryIdx") = q, Rcpp::Named("trainIdx") = t,
                                 Rcpp::Named("imgIdx") = img, Rcpp::Named("distance") = dist);
}

// ---------------------------------------------------------------- 其余几何序列

inline std::vector<cv::Rect2d> as_rects2d(SEXP x) {
  Rcpp::NumericMatrix m(x);
  if (m.ncol() != 4)
    Rcpp::stop("Rect2d 集需要 n x 4 的矩阵（x, y, width, height）");
  std::vector<cv::Rect2d> out;
  out.reserve(static_cast<size_t>(m.nrow()));
  for (int i = 0; i < m.nrow(); ++i)
    out.push_back(cv::Rect2d(m(i, 0), m(i, 1), m(i, 2), m(i, 3)));
  return out;
}

inline SEXP wrap_rects2d(const std::vector<cv::Rect2d>& v) {
  Rcpp::NumericMatrix m(static_cast<int>(v.size()), 4);
  for (size_t i = 0; i < v.size(); ++i) {
    m(static_cast<int>(i), 0) = v[i].x;     m(static_cast<int>(i), 1) = v[i].y;
    m(static_cast<int>(i), 2) = v[i].width; m(static_cast<int>(i), 3) = v[i].height;
  }
  return m;
}

// vector<Size>：n x 2 整数矩阵
inline std::vector<cv::Size> as_sizes(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::Size>();
  Rcpp::IntegerMatrix m(x);
  if (m.ncol() != 2)
    Rcpp::stop("Size 集需要 n x 2 的矩阵（width, height）");
  std::vector<cv::Size> out;
  out.reserve(static_cast<size_t>(m.nrow()));
  for (int i = 0; i < m.nrow(); ++i)
    out.push_back(cv::Size(m(i, 0), m(i, 1)));
  return out;
}

inline SEXP wrap_sizes(const std::vector<cv::Size>& v) {
  Rcpp::IntegerMatrix m(static_cast<int>(v.size()), 2);
  for (size_t i = 0; i < v.size(); ++i) {
    m(static_cast<int>(i), 0) = v[i].width;
    m(static_cast<int>(i), 1) = v[i].height;
  }
  return m;
}

// vector<vector<Mat>>：list of list of cvMat（calibrateMultiview 这类多相机接口）
inline std::vector<std::vector<cv::Mat> > as_mat_mat_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::Mat> >();
  if (!Rf_isNewList(x))
    Rcpp::stop("需要 list of list of cvMat，实际收到 %s", Rf_type2char(TYPEOF(x)));
  Rcpp::List L(x);
  std::vector<std::vector<cv::Mat> > out;
  out.reserve(static_cast<size_t>(L.size()));
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_mat_vector(L[i]));
  return out;
}

inline SEXP wrap_mat_mat_vector(const std::vector<std::vector<cv::Mat> >& v) {
  Rcpp::List out(static_cast<R_xlen_t>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[i] = wrap_mat_vector(v[i]);
  return out;
}

// ---------------------------------------------------------------- 标量序列
//
// OpenCV 里大量形如 const std::vector<int>& params = std::vector<int>() 的参数。
// R 侧默认值统一给 NULL（表示空向量），所以这些转换器必须容忍 NULL——
// 直接 Rcpp::as< std::vector<int> >(NULL) 会抛 "Not compatible with requested type"。

inline std::vector<int> as_int_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<int>();
  return Rcpp::as< std::vector<int> >(x);
}

inline std::vector<float> as_flt_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<float>();
  return Rcpp::as< std::vector<float> >(x);
}

inline std::vector<double> as_dbl_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<double>();
  return Rcpp::as< std::vector<double> >(x);
}

inline std::vector<uchar> as_raw_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<uchar>();
  if (TYPEOF(x) == RAWSXP) return Rcpp::as< std::vector<uchar> >(x);
  // 允许直接给整数向量，省掉一层 as.raw()
  std::vector<int> v = Rcpp::as< std::vector<int> >(x);
  std::vector<uchar> out(v.size());
  for (size_t i = 0; i < v.size(); ++i) out[i] = static_cast<uchar>(v[i]);
  return out;
}

// drawMatches 的 mask 参数是 const std::vector<char>&（0/1 标志）
inline std::vector<char> as_char_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<char>();
  if (TYPEOF(x) == RAWSXP) {
    std::vector<uchar> u = Rcpp::as< std::vector<uchar> >(x);
    return std::vector<char>(u.begin(), u.end());
  }
  std::vector<int> v = Rcpp::as< std::vector<int> >(x);
  std::vector<char> out(v.size());
  for (size_t i = 0; i < v.size(); ++i) out[i] = static_cast<char>(v[i]);
  return out;
}

// cv::Range 是半开区间 [start, end)。R 侧用长度 2 的整数向量表示。
// NULL -> Range::all()（对应 C++ 默认值 Range::all()）
inline cv::Range as_range(SEXP x) {
  if (Rf_isNull(x)) return cv::Range::all();
  std::vector<int> v = Rcpp::as< std::vector<int> >(x);
  if (v.size() != 2)
    Rcpp::stop("Range 需要长度 2 的整数向量（start, end），实际长度 %d",
               (int)v.size());
  return cv::Range(v[0], v[1]);
}

inline SEXP wrap_range(const cv::Range& r) {
  Rcpp::IntegerVector out(2);
  out[0] = r.start;
  out[1] = r.end;
  return out;
}

// ---------------------------------------------------------------- InArg
//
// InputArray 的统一入口。OpenCV 里 InputArray 既可以是图像、也可以是标量、
// 也可以是图像序列，R 侧不想为此分裂成三个函数名，所以这里一次性吃掉：
//   NULL             -> noArray()
//   cvMat            -> 零拷贝指向原 Mat
//   cvMat 的 list    -> vector<Mat>，持有在自身内部
//   长度 <= 4 的数值  -> Scalar
//   更长的数值向量    -> 1 x n 的 CV_64F Mat
//
// 注意：_InputArray 内部存的是指针，指向本对象的成员，所以本对象一旦被拷贝
// 就会悬空。禁用拷贝构造，只允许作为调用方的局部变量存在。

// 定义在下面的「序列」小节里，这里先声明（InArg 要用）
inline std::vector<std::vector<cv::Point> > as_points_vector(SEXP x);

// R 的 numeric/integer/logical 按存储类型取第 i 个元素
inline double num_at(SEXP x, R_xlen_t i) {
  switch (TYPEOF(x)) {
    case RAWSXP: return RAW(x)[i];
    case INTSXP: return INTEGER(x)[i];
    case LGLSXP: return LOGICAL(x)[i];
    default:     return REAL(x)[i];
  }
}

inline void set_elem(cv::Mat& m, int i, int j, int k, double v) {
  const int cn = m.channels();
  switch (m.depth()) {
    case CV_32S: m.ptr<int>(i)[j * cn + k] = static_cast<int>(v); break;
    case CV_8U:  m.ptr<uchar>(i)[j * cn + k] = static_cast<uchar>(v); break;
    case CV_32F: m.ptr<float>(i)[j * cn + k] = static_cast<float>(v); break;
    default:     m.ptr<double>(i)[j * cn + k] = v; break;
  }
}

class InArg {
public:
  explicit InArg(SEXP x) {
    if (Rf_isNull(x)) return;                     // 默认构造 == noArray()
    if (is_mat(x)) { ia_ = cv::_InputArray(*mat_ptr(x)); return; }
    if (Rf_isNewList(x)) {
      Rcpp::List L(x);
      // InputArrayOfArrays 在 OpenCV 里有两个用途：
      //   图像序列（split / merge / mixChannels） -> vector<Mat>
      //   点集序列（fillPoly / drawContours / polylines） -> vector<vector<Point>>
      // 按第一个元素的类型分。
      if (L.size() > 0 && !is_mat(L[0])) {
        pts_ = as_points_vector(x);
        ia_ = cv::_InputArray(pts_);
      } else {
        vec_ = as_mat_vector(x);
        ia_ = cv::_InputArray(vec_);
      }
      return;
    }
    const bool is_raw = (TYPEOF(x) == RAWSXP);
    // 带 dim 的按原维度搬：R 的 matrix(...,3,3) 必须变成 3x3 的 Mat，
    // 压成 1x9 会让 Rodrigues / RQDecomp3x3 / findHomography 这类全部失败。
    // 三维数组 (h, w, c) 按 OpenCV 的通道交错布局铺开。
    //
    // raw 矩阵也要走这条路：as_array() 对 CV_8U 返回的正是带 dim 的 raw，
    // 早期把它一律压成 1 x n，导致 Mat(as_array(m)) 往返直接坏掉。
    if (Rf_isNumeric(x) || Rf_isLogical(x) || is_raw) {
      SEXP dm = Rf_getAttrib(x, R_DimSymbol);
      int nd = (dm == R_NilValue) ? 0 : static_cast<int>(Rf_length(dm));
      if (nd >= 2) {
        int h = INTEGER(dm)[0];
        int w = INTEGER(dm)[1];
        int cn = (nd >= 3) ? INTEGER(dm)[2] : 1;
        if (h <= 0 || w <= 0 || cn <= 0)
          Rcpp::stop("InputArray: 维度不能为 0（%d x %d x %d）", h, w, cn);
        int depth = is_raw ? CV_8U
                  : (TYPEOF(x) == INTSXP) ? CV_32S
                  : (TYPEOF(x) == LGLSXP) ? CV_8U : CV_64F;
        mat_ = cv::Mat(h, w, CV_MAKETYPE(depth, cn));
        const R_xlen_t plane = static_cast<R_xlen_t>(h) * w;
        for (int k = 0; k < cn; ++k)
          for (int j = 0; j < w; ++j)
            for (int i = 0; i < h; ++i)
              set_elem(mat_, i, j, k,
                       num_at(x, static_cast<R_xlen_t>(i) + static_cast<R_xlen_t>(j) * h
                                 + k * plane));
        ia_ = cv::_InputArray(mat_);
        return;
      }
    }
    // 无 dim 的 raw 向量 -> 1 x n 的 CV_8U Mat。
    // imdecode / imdecodemulti 的 buf 就是这个形状（C++ 里传 std::vector<uchar>）。
    if (is_raw) {
      R_xlen_t n = XLENGTH(x);
      mat_ = cv::Mat(1, static_cast<int>(n), CV_8U);
      if (n > 0) std::memcpy(mat_.data, RAW(x), static_cast<size_t>(n));
      ia_ = cv::_InputArray(mat_);
      return;
    }
    if (Rf_isNumeric(x) || Rf_isLogical(x)) {
      std::vector<double> v = Rcpp::as< std::vector<double> >(x);
      if (v.size() <= 4) {
        scalar_ = cv::Scalar(0.0, 0.0, 0.0, 0.0);
        for (size_t i = 0; i < v.size(); ++i) scalar_[static_cast<int>(i)] = v[i];
        ia_ = cv::_InputArray(scalar_);
      } else {
        mat_ = cv::Mat(1, static_cast<int>(v.size()), CV_64F);
        for (size_t i = 0; i < v.size(); ++i)
          mat_.at<double>(0, static_cast<int>(i)) = v[i];
        ia_ = cv::_InputArray(mat_);
      }
      return;
    }
    Rcpp::stop("InputArray: 需要 cvMat、raw 向量、数值向量或 cvMat 列表，实际收到 %s",
               Rf_type2char(TYPEOF(x)));
  }

  InArg(const InArg&) = delete;
  InArg& operator=(const InArg&) = delete;

  cv::_InputArray ia() const { return ia_; }

private:
  cv::Mat mat_;
  std::vector<cv::Mat> vec_;
  std::vector<std::vector<cv::Point> > pts_;
  cv::Scalar scalar_;
  cv::_InputArray ia_;
};

// ---------------------------------------------------------------- 标量 / 结构体

inline cv::Scalar as_scalar(SEXP x) {
  if (Rf_isNull(x)) return cv::Scalar();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() > 4) Rcpp::stop("Scalar 最多 4 个分量");
  cv::Scalar s(0.0, 0.0, 0.0, 0.0);
  for (size_t i = 0; i < v.size(); ++i) s[static_cast<int>(i)] = v[i];
  return s;
}

inline SEXP wrap_scalar(const cv::Scalar& s) {
  Rcpp::NumericVector v(4);
  for (int i = 0; i < 4; ++i) v[i] = s[i];
  return v;
}

inline cv::Point as_point(SEXP x) {
  if (Rf_isNull(x)) return cv::Point();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 2) Rcpp::stop("Point 需要长度 2 的向量 (x, y)");
  return cv::Point(static_cast<int>(v[0]), static_cast<int>(v[1]));
}

inline cv::Point2f as_point2f(SEXP x) {
  if (Rf_isNull(x)) return cv::Point2f();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 2) Rcpp::stop("Point2f 需要长度 2 的向量 (x, y)");
  return cv::Point2f(static_cast<float>(v[0]), static_cast<float>(v[1]));
}

inline cv::Size as_size(SEXP x) {
  if (Rf_isNull(x)) return cv::Size();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 2) Rcpp::stop("Size 需要长度 2 的向量 (width, height)");
  return cv::Size(static_cast<int>(v[0]), static_cast<int>(v[1]));
}

inline cv::Rect as_rect(SEXP x) {
  if (Rf_isNull(x)) return cv::Rect();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 4) Rcpp::stop("Rect 需要长度 4 的向量 (x, y, width, height)");
  return cv::Rect(static_cast<int>(v[0]), static_cast<int>(v[1]),
                  static_cast<int>(v[2]), static_cast<int>(v[3]));
}

// RotatedRect 的 R 表示：c(cx, cy, width, height, angle)
inline cv::RotatedRect as_rotatedrect(SEXP x) {
  if (Rf_isNull(x)) return cv::RotatedRect();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 5)
    Rcpp::stop("RotatedRect 需要长度 5 的向量 (cx, cy, width, height, angle)");
  return cv::RotatedRect(cv::Point2f((float)v[0], (float)v[1]),
                         cv::Size2f((float)v[2], (float)v[3]), (float)v[4]);
}

inline SEXP wrap_rotatedrect(const cv::RotatedRect& r) {
  return Rcpp::NumericVector::create(r.center.x, r.center.y,
                                     r.size.width, r.size.height, r.angle);
}

// Rect2f（= cv::Rect_<float>）的 R 表示和 Rect 一样是 c(x, y, width, height)，
// 但必须是浮点。RotatedRect::boundingRect2f 交回的是亚像素位置，
// 走 as_rect 那套 int 截断会把角点挪到别的像素上。
inline cv::Rect2f as_rect2f(SEXP x) {
  if (Rf_isNull(x)) return cv::Rect2f();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 4) Rcpp::stop("Rect2f 需要长度 4 的向量 (x, y, width, height)");
  return cv::Rect2f((float)v[0], (float)v[1], (float)v[2], (float)v[3]);
}

inline SEXP wrap_rect2f(const cv::Rect2f& r) {
  return Rcpp::NumericVector::create(r.x, r.y, r.width, r.height);
}

// vector<RotatedRect> 的 R 表示：n x 5 数值矩阵，列序与单个一致
// （cx, cy, width, height, angle）。dnn::TextDetectionModel 的
// detectTextRectangles 用它交回检测到的文本四边形。
//
// 输入侧同时接受矩阵和 list：R 里现成的结果多半是矩阵，
// 但手工构造时 list(c(cx,cy,w,h,a), ...) 更顺手，两种都收下。
inline std::vector<cv::RotatedRect> as_rotatedrects(SEXP x) {
  std::vector<cv::RotatedRect> out;
  if (Rf_isNull(x)) return out;
  if (Rf_isNewList(x)) {
    Rcpp::List L(x);
    out.reserve((size_t)L.size());
    for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_rotatedrect(L[i]));
    return out;
  }
  SEXP dm = Rf_getAttrib(x, R_DimSymbol);
  if (dm == R_NilValue) {          // 裸向量 = 只有一条
    out.push_back(as_rotatedrect(x));
    return out;
  }
  const int n = INTEGER(dm)[0];
  const int k = INTEGER(dm)[1];
  if (k != 5)
    Rcpp::stop("RotatedRect 矩阵需要 5 列 (cx, cy, width, height, angle)，实际 %d 列", k);
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  out.reserve((size_t)n);
  // R 矩阵是列优先：第 i 行第 j 列在 v[i + n * j]，不是 v[5 * i + j]。
  for (int i = 0; i < n; ++i)
    out.push_back(cv::RotatedRect(cv::Point2f((float)v[i], (float)v[i + n]),
                                  cv::Size2f((float)v[i + 2 * n], (float)v[i + 3 * n]),
                                  (float)v[i + 4 * n]));
  return out;
}

inline SEXP wrap_rotatedrects(const std::vector<cv::RotatedRect>& v) {
  const int n = static_cast<int>(v.size());
  Rcpp::NumericMatrix m(n, 5);
  for (int i = 0; i < n; ++i) {
    m(i, 0) = v[i].center.x;
    m(i, 1) = v[i].center.y;
    m(i, 2) = v[i].size.width;
    m(i, 3) = v[i].size.height;
    m(i, 4) = v[i].angle;
  }
  return m;
}

// vector<vector<Point3f>> 的 R 表示：长度 n 的 list，每项一张 m x 3 数值矩阵。
// aruco::Board::getObjPoints 交回的就是「每个标记一套 3D 点」，
// 长度天然不齐，矩阵塞不下，只能给 list。
inline SEXP wrap_points3f_list(const std::vector<std::vector<cv::Point3f> >& v) {
  Rcpp::List out(static_cast<int>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) {
    const int m = static_cast<int>(v[i].size());
    Rcpp::NumericMatrix mm(m, 3);
    for (int j = 0; j < m; ++j) {
      mm(j, 0) = v[i][j].x;
      mm(j, 1) = v[i][j].y;
      mm(j, 2) = v[i][j].z;
    }
    out[static_cast<int>(i)] = mm;
  }
  return out;
}

// vector<pair<int,double>> 的 R 表示：list(id = integer, dist = numeric)。
// face::StandardCollector::getResults 交回 (label, distance) 对。
// 不用矩阵是因为 id 是整数、dist 是浮点，混进矩阵会把 id 抬成 double。
inline SEXP wrap_int_double_pairs(const std::vector<std::pair<int, double> >& v) {
  const int n = static_cast<int>(v.size());
  Rcpp::IntegerVector id(n);
  Rcpp::NumericVector dist(n);
  for (int i = 0; i < n; ++i) {
    id[i] = v[i].first;
    dist[i] = v[i].second;
  }
  return Rcpp::List::create(Rcpp::Named("id") = id,
                            Rcpp::Named("dist") = dist);
}

// TermCriteria 的 R 表示，按长度自适应：
//   长度 3 -> c(type, maxCount, epsilon)
//   长度 2 -> c(maxCount, epsilon)，type 取 MAX_ITER|EPS
//   长度 1 -> maxCount，type 取 MAX_ITER
inline cv::TermCriteria as_termcriteria(SEXP x) {
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() == 3)
    return cv::TermCriteria(static_cast<int>(v[0]), static_cast<int>(v[1]), v[2]);
  if (v.size() == 2)
    return cv::TermCriteria(cv::TermCriteria::MAX_ITER + cv::TermCriteria::EPS,
                            static_cast<int>(v[0]), v[1]);
  if (v.size() == 1)
    return cv::TermCriteria(cv::TermCriteria::MAX_ITER, static_cast<int>(v[0]), 0.0);
  Rcpp::stop("TermCriteria 需要长度 1/2/3 的向量，实际长度 %d", (int)v.size());
}

// ---------------------------------------------------------------- Moments
//
// R 表示：带名字的数值向量。
// 注意 OpenCV 5 只保留到三阶矩（10 空间 + 7 中心 + 7 归一化中心 = 24 个）。

inline const char* const* moment_names() {
  static const char* const names[] = {
      "m00", "m10", "m01", "m20", "m11", "m02", "m30", "m21", "m12", "m03",
      "mu20", "mu11", "mu02", "mu30", "mu21", "mu12", "mu03",
      "nu20", "nu11", "nu02", "nu30", "nu21", "nu12", "nu03"};
  return names;
}

inline int moment_count() { return 24; }

inline SEXP wrap_moments(const cv::Moments& m) {
  const double v[] = {
      m.m00, m.m10, m.m01, m.m20, m.m11, m.m02, m.m30, m.m21, m.m12, m.m03,
      m.mu20, m.mu11, m.mu02, m.mu30, m.mu21, m.mu12, m.mu03,
      m.nu20, m.nu11, m.nu02, m.nu30, m.nu21, m.nu12, m.nu03};
  const int n = moment_count();
  const char* const* nm = moment_names();
  Rcpp::NumericVector out(n);
  Rcpp::CharacterVector names(n);
  for (int i = 0; i < n; ++i) { out[i] = v[i]; names[i] = nm[i]; }
  out.attr("names") = names;
  return out;
}

// 用 switch 逐个取地址，不依赖 Moments 的内存布局
inline double* moment_slot(cv::Moments& m, int k) {
  switch (k) {
    case 0:  return &m.m00;   case 1:  return &m.m10;   case 2:  return &m.m01;
    case 3:  return &m.m20;   case 4:  return &m.m11;   case 5:  return &m.m02;
    case 6:  return &m.m30;   case 7:  return &m.m21;   case 8:  return &m.m12;
    case 9:  return &m.m03;
    case 10: return &m.mu20;  case 11: return &m.mu11;  case 12: return &m.mu02;
    case 13: return &m.mu30;  case 14: return &m.mu21;  case 15: return &m.mu12;
    case 16: return &m.mu03;
    case 17: return &m.nu20;  case 18: return &m.nu11;  case 19: return &m.nu02;
    case 20: return &m.nu30;  case 21: return &m.nu21;  case 22: return &m.nu12;
    case 23: return &m.nu03;
    default: return 0;
  }
}

// 入参接受带名字的向量；缺的成员按 0 处理
inline cv::Moments as_moments(SEXP x) {
  cv::Moments m;
  Rcpp::NumericVector v = Rcpp::as< Rcpp::NumericVector >(x);
  Rcpp::CharacterVector nm;
  SEXP n = Rf_getAttrib(x, R_NamesSymbol);
  if (!Rf_isNull(n)) nm = Rcpp::CharacterVector(n);
  const int N = moment_count();
  const char* const* names = moment_names();
  for (R_xlen_t i = 0; i < v.size(); ++i) {
    int idx = (int)i;
    if (nm.size() > i) {
      Rcpp::String s = nm[i];
      if (s != NA_STRING) {
        for (int k = 0; k < N; ++k)
          if (std::strcmp(s.get_cstring(), names[k]) == 0) { idx = k; break; }
      }
    }
    double* slot = moment_slot(m, idx);
    if (slot) *slot = v[i];
  }
  return m;
}

// ---------------------------------------------------------------- 序列

// 点集接受两种写法：n x 2 的矩阵（每行一个点），或长度 2k 的数值向量
inline std::vector<cv::Point> as_points(SEXP x) {
  std::vector<cv::Point> out;
  if (Rf_isMatrix(x)) {
    Rcpp::NumericMatrix m(x);
    if (m.ncol() != 2)
      Rcpp::stop("点集需要 n x 2 的矩阵（每行一个 (x, y)）");
    out.reserve(static_cast<size_t>(m.nrow()));
    for (int i = 0; i < m.nrow(); ++i)
      out.emplace_back(static_cast<int>(m(i, 0)), static_cast<int>(m(i, 1)));
    return out;
  }
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() % 2 != 0)
    Rcpp::stop("点集向量长度必须是偶数（x1, y1, x2, y2, ...）");
  out.reserve(v.size() / 2);
  for (size_t i = 0; i + 1 < v.size(); i += 2)
    out.emplace_back(static_cast<int>(v[i]), static_cast<int>(v[i + 1]));
  return out;
}

// 点集列表：list(矩阵或向量, ...) -> vector<vector<Point>>
inline std::vector<std::vector<cv::Point> > as_points_vector(SEXP x) {
  if (!Rf_isNewList(x))
    Rcpp::stop("点集列表需要 list，实际收到 %s", Rf_type2char(TYPEOF(x)));
  Rcpp::List L(x);
  std::vector<std::vector<cv::Point> > out;
  out.reserve(static_cast<size_t>(L.size()));
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_points(L[i]));
  return out;
}

inline std::vector<cv::Point2f> as_points2f(SEXP x) {
  Rcpp::NumericMatrix m(x);
  if (m.ncol() != 2)
    Rcpp::stop("点集需要 n x 2 的矩阵（每行一个 (x, y)）");
  std::vector<cv::Point2f> out;
  out.reserve(static_cast<size_t>(m.nrow()));
  for (int i = 0; i < m.nrow(); ++i)
    out.emplace_back(static_cast<float>(m(i, 0)), static_cast<float>(m(i, 1)));
  return out;
}

inline std::vector<cv::Rect> as_rects(SEXP x) {
  Rcpp::NumericMatrix m(x);
  if (m.ncol() != 4)
    Rcpp::stop("矩形集需要 n x 4 的矩阵（x, y, width, height）");
  std::vector<cv::Rect> out;
  out.reserve(static_cast<size_t>(m.nrow()));
  for (int i = 0; i < m.nrow(); ++i)
    out.emplace_back(static_cast<int>(m(i, 0)), static_cast<int>(m(i, 1)),
                     static_cast<int>(m(i, 2)), static_cast<int>(m(i, 3)));
  return out;
}

inline std::vector<cv::String> as_vec_string(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::String>();
  Rcpp::CharacterVector v(x);
  std::vector<cv::String> out;
  out.reserve(static_cast<size_t>(v.size()));
  for (R_xlen_t i = 0; i < v.size(); ++i)
    out.push_back(cv::String(Rcpp::as<std::string>(v[i])));
  return out;
}

inline SEXP wrap_points(const std::vector<cv::Point>& v) {
  Rcpp::IntegerMatrix m(static_cast<int>(v.size()), 2);
  for (size_t i = 0; i < v.size(); ++i) {
    m(static_cast<int>(i), 0) = v[i].x;
    m(static_cast<int>(i), 1) = v[i].y;
  }
  return m;
}

inline SEXP wrap_points2f(const std::vector<cv::Point2f>& v) {
  Rcpp::NumericMatrix m(static_cast<int>(v.size()), 2);
  for (size_t i = 0; i < v.size(); ++i) {
    m(static_cast<int>(i), 0) = v[i].x;
    m(static_cast<int>(i), 1) = v[i].y;
  }
  return m;
}

// Vec2f 的 R 表示：长度 2 的数值向量。
// ppf_match_3d::computeBboxStd 用三个 Vec2f& 出参交回点云在 x/y/z 上的范围，
// 以前 OUT 表里只有 std::vector<Vec2f>，标量 Vec2f 的出参因此一直报
// "unsupported out-ref type: Vec2f&"。
// 这里不用 ropecv_structs.h 里的 wrap_vec<T,N> 模板——那个头只有真正
// 用到结构体转换的 .cpp 才会 include，单独一个 Vec2f 不该把整包拖进来。
inline SEXP wrap_vec2f(const cv::Vec2f& v) {
  return Rcpp::NumericVector::create(v[0], v[1]);
}

inline cv::Vec2f as_vec2f(SEXP x) {
  Rcpp::NumericVector v(x);
  if (v.size() != 2)
    Rcpp::stop("Vec2f 需要长度 2 的数值向量");
  return cv::Vec2f(static_cast<float>(v[0]), static_cast<float>(v[1]));
}

// Point3i 的 R 表示：n x 3 整数矩阵。// 目前只有 ximgproc::rl::createRLEImage 用：它要的是一串「行程」三元组
// (行号, 起始列, 长度)，整数语义，用 double 矩阵会让调用方多写一层取整。
inline std::vector<cv::Point3i> as_points3i(SEXP x) {
  Rcpp::IntegerMatrix m(x);
  if (m.ncol() != 3)
    Rcpp::stop("行程三元组需要 n x 3 的整数矩阵（每行一个 (row, col, len)）");
  std::vector<cv::Point3i> out;
  out.reserve(static_cast<size_t>(m.nrow()));
  for (int i = 0; i < m.nrow(); ++i)
    out.emplace_back(m(i, 0), m(i, 1), m(i, 2));
  return out;
}

inline SEXP wrap_points3i(const std::vector<cv::Point3i>& v) {
  Rcpp::IntegerMatrix m(static_cast<int>(v.size()), 3);
  for (size_t i = 0; i < v.size(); ++i) {
    m(static_cast<int>(i), 0) = v[i].x;
    m(static_cast<int>(i), 1) = v[i].y;
    m(static_cast<int>(i), 2) = v[i].z;
  }
  return m;
}

// 枚举向量 -> 整数向量。
// 不能用 std::vector<int>(v.begin(), v.end())：dnn 的 Backend / Target 是
// scoped enum（enum class），不参与隐式转换，那样写编译期就报
// "conversion from vector<Target> to non-scalar type vector<int> requested"。
// 逐个 static_cast 才行。
template <typename E>
inline SEXP wrap_enum_vector(const std::vector<E>& v) {
  Rcpp::IntegerVector out(static_cast<R_xlen_t>(v.size()));
  for (size_t i = 0; i < v.size(); ++i)
    out[static_cast<R_xlen_t>(i)] = static_cast<int>(v[i]);
  return out;
}

// dnn::getAvailableBackends 交回的是 (backend, target) 的可用组合。
// 给 data.frame 而不是矩阵：两列都是枚举，矩阵会丢掉列名，
// 而这两个值的含义（哪个后端配哪个目标）正是调用方要看的。
// 值本身是整数，与 R 侧 cv_DNN_BACKEND_* / cv_DNN_TARGET_* 常量同一套。
inline SEXP wrap_backend_target_pairs(
    const std::vector<std::pair<cv::dnn::Backend, cv::dnn::Target> >& v) {
  Rcpp::IntegerVector b(static_cast<R_xlen_t>(v.size()));
  Rcpp::IntegerVector t(static_cast<R_xlen_t>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) {
    b[static_cast<R_xlen_t>(i)] = static_cast<int>(v[i].first);
    t[static_cast<R_xlen_t>(i)] = static_cast<int>(v[i].second);
  }
  Rcpp::DataFrame df = Rcpp::DataFrame::create(
      Rcpp::Named("backend") = b, Rcpp::Named("target") = t);
  return df;
}

inline SEXP wrap_rects(const std::vector<cv::Rect>& v) {
  Rcpp::IntegerMatrix m(static_cast<int>(v.size()), 4);
  for (size_t i = 0; i < v.size(); ++i) {
    m(static_cast<int>(i), 0) = v[i].x;
    m(static_cast<int>(i), 1) = v[i].y;
    m(static_cast<int>(i), 2) = v[i].width;
    m(static_cast<int>(i), 3) = v[i].height;
  }
  return m;
}

// vector<cv::VecNf / VecNi> -> n x N 数值矩阵。
// 三角剖分（Vec6f）、直线段检测（Vec4f）、HoughLinesP（Vec4i）都是这个形状：
// 每行一个元素，列是它的分量，正好对应 R 里按行取用的习惯。
template <class V>
inline SEXP wrap_vecs(const std::vector<V>& v) {
  const int n = static_cast<int>(v.size());
  const int k = static_cast<int>(V::channels);
  SEXP out = PROTECT(Rf_allocMatrix(REALSXP, n, k));
  for (int i = 0; i < n; ++i)
    for (int j = 0; j < k; ++j)
      REAL(out)[i + n * j] = static_cast<double>(v[i][j]);
  UNPROTECT(1);
  return out;
}

// n x N 矩阵 -> vector<VecNf>。列数必须等于分量数。
template <class V>
inline std::vector<V> as_vecs(SEXP x) {
  std::vector<V> out;
  if (Rf_isNull(x)) return out;
  SEXP dm = Rf_getAttrib(x, R_DimSymbol);
  if (TYPEOF(x) != REALSXP && TYPEOF(x) != INTSXP)
    Rcpp::stop("需要数值矩阵，实际收到 %s", Rf_type2char(TYPEOF(x)));
  const int k = static_cast<int>(V::channels);
  int n, m;
  if (dm == R_NilValue) {          // 单行：一个元素
    n = 1;
    m = static_cast<int>(Rf_length(x));
  } else {
    n = INTEGER(dm)[0];
    m = INTEGER(dm)[1];
  }
  if (m != k)
    Rcpp::stop("需要 %d 列的矩阵，实际 %d 列", k, m);
  out.resize(n);
  for (int i = 0; i < n; ++i)
    for (int j = 0; j < k; ++j)
      out[i][j] = static_cast<typename V::value_type>(
          TYPEOF(x) == REALSXP ? REAL(x)[i + n * j] : INTEGER(x)[i + n * j]);
  return out;
}

// vector<vector<Point2f>> -> list of n x 2 矩阵（Subdiv2D 的 Voronoi 面片）
inline SEXP wrap_points2f_list(const std::vector<std::vector<cv::Point2f>>& v) {
  Rcpp::List out(static_cast<int>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[static_cast<int>(i)] = wrap_points2f(v[i]);
  return out;
}

inline std::vector<std::vector<cv::Point2f>> as_points2f_list(SEXP x) {
  std::vector<std::vector<cv::Point2f>> out;
  if (Rf_isNull(x)) return out;
  Rcpp::List l(x);
  out.reserve(l.size());
  for (int i = 0; i < l.size(); ++i) out.push_back(as_points2f(l[i]));
  return out;
}

// ------------------------------------------------------- 序列的序列（一对多输出）
//
// detect(InputArrayOfArrays, vector<vector<KeyPoint>>&)、knnMatch(...,
// vector<vector<DMatch>>&)、MSER::detectRegions 的 msers 都是这个形状：
// 外层是「每张图 / 每个查询点」，内层是同质的元素集。R 侧给 list，
// 每个元素与内层类型各自的自然表示一致（data.frame / 矩阵）。

inline SEXP wrap_keypoints_list(const std::vector<std::vector<cv::KeyPoint>>& v) {
  Rcpp::List out(static_cast<int>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[static_cast<int>(i)] = wrap_keypoints(v[i]);
  return out;
}

inline std::vector<std::vector<cv::KeyPoint>> as_keypoints_list(SEXP x) {
  std::vector<std::vector<cv::KeyPoint>> out;
  if (Rf_isNull(x)) return out;
  Rcpp::List l(x);
  out.reserve(static_cast<size_t>(l.size()));
  for (int i = 0; i < l.size(); ++i) out.push_back(as_keypoints(l[i]));
  return out;
}

inline SEXP wrap_dmatches_list(const std::vector<std::vector<cv::DMatch>>& v) {
  Rcpp::List out(static_cast<int>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[static_cast<int>(i)] = wrap_dmatches(v[i]);
  return out;
}

inline std::vector<std::vector<cv::DMatch>> as_dmatches_list(SEXP x) {
  std::vector<std::vector<cv::DMatch>> out;
  if (Rf_isNull(x)) return out;
  Rcpp::List l(x);
  out.reserve(static_cast<size_t>(l.size()));
  for (int i = 0; i < l.size(); ++i) out.push_back(as_dmatches(l[i]));
  return out;
}

inline SEXP wrap_points_list(const std::vector<std::vector<cv::Point>>& v) {
  Rcpp::List out(static_cast<int>(v.size()));
  for (size_t i = 0; i < v.size(); ++i) out[static_cast<int>(i)] = wrap_points(v[i]);
  return out;
}

inline std::vector<std::vector<cv::Point>> as_points_list(SEXP x) {
  std::vector<std::vector<cv::Point>> out;
  if (Rf_isNull(x)) return out;
  Rcpp::List l(x);
  out.reserve(static_cast<size_t>(l.size()));
  for (int i = 0; i < l.size(); ++i) out.push_back(as_points(l[i]));
  return out;
}

// ---------------------------------------------------------------- 单值转 R

inline SEXP wrap_point(const cv::Point& p) {
  return Rcpp::IntegerVector::create(p.x, p.y);
}

inline SEXP wrap_point2f(const cv::Point2f& p) {
  return Rcpp::NumericVector::create(p.x, p.y);
}

inline SEXP wrap_point2d(const cv::Point2d& p) {
  return Rcpp::NumericVector::create(p.x, p.y);
}

inline cv::Point2d as_point2d(SEXP x) {
  if (Rf_isNull(x)) return cv::Point2d();
  std::vector<double> v = Rcpp::as< std::vector<double> >(x);
  if (v.size() != 2) Rcpp::stop("Point2d 需要长度 2 的向量 (x, y)");
  return cv::Point2d(v[0], v[1]);
}

inline SEXP wrap_size(const cv::Size& s) {
  return Rcpp::IntegerVector::create(s.width, s.height);
}

inline SEXP wrap_rect(const cv::Rect& r) {
  return Rcpp::IntegerVector::create(r.x, r.y, r.width, r.height);
}

// ---------------------------------------------------------------- Mat <-> R
//
// 坑：cv::Mat 是行优先（内存里一行接一行），R 的数组是列优先。
// 早先这里直接 memcpy + 设 dim，看起来「差不多」，实际给出去的是错乱的矩阵：
// 2x3 的 matrix(1:6,2,3) 往返一趟会变成 c(1,5,4 / 3,2,6)。非方阵一眼就能看出，
// 方阵则悄悄错着——所以必须显式做这个转置。
//
// 多通道时 R 侧的维序是 (行, 列, 通道)，通道在最外层；而 Mat 内存里通道是
// 最内层交错的。所以不是一次 cv::transpose 能解决的，要按 R 的列优先顺序
// 逐元素取。二维/三维走无除法的三重循环（覆盖全部实际用例），
// N 维 blob 走通用路径。

// R 的列优先位置 p 对应的各维下标：r[0] 变得最快
inline void r_index_of(R_xlen_t p, const int* sz, int nd, int* r) {
  for (int d = 0; d < nd; ++d) {
    r[d] = static_cast<int>(p % sz[d]);
    p /= sz[d];
  }
}

// T = Mat 的存储类型，O = R 向量的存储类型。两者常常不同（CV_32F 读成
// R 的 double），不能合成一个模板参数。
template <typename T, typename O>
inline void mat_to_r_fill(const cv::Mat& m, O* out, const int* sz, int nd) {
  const int cn = m.channels();
  if (nd == 3) {
    const int rows = sz[0], cols = sz[1];
    R_xlen_t t = 0;
    for (int k = 0; k < cn; ++k)
      for (int j = 0; j < cols; ++j)
        for (int i = 0; i < rows; ++i)
          out[t++] = static_cast<O>(m.ptr<T>(i)[j * cn + k]);
    return;
  }
  if (nd == 2) {
    const int rows = sz[0], cols = sz[1];
    R_xlen_t t = 0;
    for (int j = 0; j < cols; ++j)
      for (int i = 0; i < rows; ++i)
        out[t++] = static_cast<O>(m.ptr<T>(i)[j]);
    return;
  }
  // N 维（dnn 的 blob 之类）：R 位置 -> 各维下标 -> Mat 行优先偏移
  R_xlen_t n = 1;
  for (int d = 0; d < nd; ++d) n *= sz[d];
  std::vector<int> r(static_cast<size_t>(nd));
  std::vector<int> ms(static_cast<size_t>(nd));
  for (int d = 0; d < nd; ++d) ms[d] = m.size[d];
  for (R_xlen_t p = 0; p < n; ++p) {
    r_index_of(p, sz, nd, &r[0]);
    R_xlen_t off = 0;
    for (int d = 0; d < nd; ++d) off = off * ms[d] + r[d];
    out[p] = static_cast<O>(reinterpret_cast<const T*>(m.data)[off]);
  }
}

// 保留原 dtype 的转换：CV_8U -> raw，CV_32S -> integer，浮点 -> double
inline SEXP mat_to_r(SEXP x) {
  cv::Mat* m = mat_ptr(x);
  // 空矩阵（imread 读失败、Mat() 刚建）没有有效维度，R 侧给 NULL。
  // 直接往下走会在 setAttrib(dim) 处抛 "length-0 dimension vector is invalid"。
  if (m->empty() || m->total() == 0) return R_NilValue;
  const int depth = m->depth();
  const int cn = m->channels();

  std::vector<int> sz;
  // dims == 2 是常态。但还要管 dims == 1 且带通道的情况：
  // findChessboardCorners 把 N 个二维点放在一个 1 x N 的 CV_32FC2 里，
  // 而 OpenCV 给这种 Mat 的 dims 是 1。只按 size[0] 展开就会把通道维吃掉，
  // 40 个角点只出来 40 个数（本该 80），x/y 静默丢一半——而且 mat_info 和
  // dim() 都还报 1 x 40 x 2，看上去完全正常，只有 as_array() 的结果对不上。
  //
  // 单通道的 dims == 1 保持原样（出向量），免得改掉别处已有的形状。
  if (m->dims == 2 || (m->dims == 1 && cn > 1)) {
    sz.push_back(m->rows);
    sz.push_back(m->cols);
    if (cn > 1) sz.push_back(cn);
  } else {
    for (int i = 0; i < m->dims; ++i) sz.push_back(m->size[i]);
  }
  const int nd = static_cast<int>(sz.size());

  Rcpp::IntegerVector dims(nd);
  R_xlen_t n = 1;
  for (int d = 0; d < nd; ++d) { dims[d] = sz[d]; n *= sz[d]; }

  cv::Mat tmp = m->isContinuous() ? *m : m->clone();

  if (depth == CV_8U) {
    Rcpp::RawVector out(n);
    mat_to_r_fill<uchar, Rbyte>(tmp, out.begin(), &sz[0], nd);
    out.attr("dim") = dims;
    out.attr("depth") = depth;
    return out;
  }
  if (depth == CV_32S) {
    Rcpp::IntegerVector out(n);
    mat_to_r_fill<int, int>(tmp, out.begin(), &sz[0], nd);
    out.attr("dim") = dims;
    out.attr("depth") = depth;
    return out;
  }
  if (depth == CV_32F) {
    Rcpp::NumericVector out(n);
    mat_to_r_fill<float, double>(tmp, out.begin(), &sz[0], nd);
    out.attr("dim") = dims;
    out.attr("depth") = depth;
    return out;
  }
  // CV_64F 及兜底（CV_16U / CV_16S / CV_8S 统一抬成 double）
  cv::Mat d64;
  tmp.convertTo(d64, CV_64F);
  Rcpp::NumericVector out(n);
  mat_to_r_fill<double, double>(d64, out.begin(), &sz[0], nd);
  out.attr("dim") = dims;
  out.attr("depth") = depth;
  return out;
}

inline SEXP mat_info(SEXP x) {
  cv::Mat* m = mat_ptr(x);
  return Rcpp::IntegerVector::create(m->rows, m->cols, m->channels(),
                                     m->type(), m->depth());
}

inline SEXP mat_new(int rows, int cols, int type, SEXP value) {
  cv::Mat m(rows, cols, type, as_scalar(value));
  return wrap_mat(std::move(m));
}

// ---------------------------------------------------------------- 类对象
//
// OpenCV 的类实例统一由 cv::Ptr<T> 持有（OpenCV 里 cv::Ptr 就是 std::shared_ptr）。
// R 侧看到的是一个外部指针，S3 class 为 c("cv<类名>", "cvObject")。
//
// 关键点：继承链上的方法共用同一份 C++ 入口（入口按「声明类」生成），
// 所以取对象时必须能从「实际类型」找回「声明类型」。
//   - 派生自 cv::Algorithm 的（CLAHE / SIFT / BFMatcher / StereoBM …）
//     走 dynamic_cast，这样 SIFT 对象也能调用 Feature2D 的方法；
//   - 其余值类型（Net / CascadeClassifier / VideoCapture …）直接 static_cast。
//
// owner 用 shared_ptr<void> 保活：R 侧的 cvMat 和 cv 对象可能互相引用，
// 单靠 XPtr 的 finalizer 时序不好保证，这里让 holder 持有一份引用计数。

struct Obj {
  std::shared_ptr<void> owner;
  void* raw;
  cv::Algorithm* alg;
  const char* cls;
};

inline SEXP wrap_obj_impl(std::shared_ptr<void> owner, void* raw,
                          cv::Algorithm* alg, const char* cls) {
  Obj* o = new Obj();
  o->owner = std::move(owner);
  o->raw = raw;
  o->alg = alg;
  o->cls = cls;
  Rcpp::XPtr<Obj> p(o, true);
  p.attr("class") = Rcpp::CharacterVector::create(cls, "cvObject");
  return p;
}

template <class T>
inline SEXP wrap_obj(const cv::Ptr<T>& q, const char* cls) {
  cv::Algorithm* a = nullptr;
  if constexpr (std::is_base_of<cv::Algorithm, T>::value)
    a = dynamic_cast<cv::Algorithm*>(q.get());
  return wrap_obj_impl(q, const_cast<void*>(static_cast<const void*>(q.get())), a, cls);
}

inline Obj* obj_ptr(SEXP x) {
  if (TYPEOF(x) != EXTPTRSXP || !Rf_inherits(x, "cvObject"))
    Rcpp::stop("需要一个 cv 对象（由 cv_create* 或 cv_<类名>() 生成），实际收到 %s",
               Rf_type2char(TYPEOF(x)));
  Obj* o = static_cast<Obj*>(R_ExternalPtrAddr(x));
  if (!o) Rcpp::stop("cv 对象已被释放");
  return o;
}

template <class T>
inline T* obj_as(SEXP x) {
  Obj* o = obj_ptr(x);
  if constexpr (std::is_base_of<cv::Algorithm, T>::value) {
    if (!o->alg)
      Rcpp::stop("%s 不是 cv::Algorithm 派生类，不能当作 %s 使用", o->cls, typeid(T).name());
    T* p = dynamic_cast<T*>(o->alg);
    if (!p)
      Rcpp::stop("对象实际类型是 %s，不能当作 %s 使用", o->cls, typeid(T).name());
    return p;
  } else {
    return static_cast<T*>(o->raw);
  }
}

// Ptr<float> / Ptr<double> 这类「可选标量」参数（wrapperEMD 的 lowerBound）：
// R 侧给 NULL 表示不提供，给数值就拷一个到堆上交给 Ptr 管。
template <class T>
inline cv::Ptr<T> as_ptr_prim(SEXP x) {
  if (Rf_isNull(x)) return cv::Ptr<T>();
  if (TYPEOF(x) != REALSXP && TYPEOF(x) != INTSXP && TYPEOF(x) != LGLSXP)
    Rcpp::stop("需要一个数值或 NULL，实际收到 %s", Rf_type2char(TYPEOF(x)));
  return cv::Ptr<T>(new T(static_cast<T>(Rf_asReal(x))));
}

// Ptr<X> 参数：R 侧传对象，这里取出裸指针再包成 Ptr。
//
// 不能写 cv::Ptr<T>(o->owner, p)：OpenCV 5 的 cv::Ptr 虽然继承 std::shared_ptr，
// 但没把基类构造函数用 using 引进来，只提供了 Ptr<Y> 之间的 aliasing 构造。
// 所以先构造 std::shared_ptr<T> 的别名，再交给 cv::Ptr 的 shared_ptr 构造函数。
// 关键是共享 owner，不能让 cv::Ptr 接管裸指针（会二次释放）。
//
// NULL 表示「用默认值」：大量接口的 Ptr 形参默认就是 Ptr<X>()，
// 例如 FlannBasedMatcher(indexParams = Ptr<flann::IndexParams>())。
template <class T>
inline cv::Ptr<T> as_ptr(SEXP x) {
  if (Rf_isNull(x)) return cv::Ptr<T>();
  Obj* o = obj_ptr(x);
  T* p = obj_as<T>(x);
  return cv::Ptr<T>(std::shared_ptr<T>(o->owner, p));
}

// std::vector<Ptr<T>> 的返回 / 出参包装。
//
// 这一族以前一个都绑不了：单值 Ptr<X> 有 wrap_obj，容器没有。代价是
// ppf_match_3d 的主入口 PPF3DDetector::match 一直进不去——它唯一的输出就是
// vector<Pose3DPtr>&。同类问题还有 mcc::CCheckerDetector::getListColorChecker
// 和 linemod::Detector 的构造（vector<Ptr<Modality>>）。
//
// cls 由生成器按 S3 类名传进来（cvPose3D / cvCChecker / cvModality），
// 和单值 Ptr 返回走同一条 wrap_obj 路径，生命周期行为一致。
template <class T>
inline SEXP wrap_obj_vector(const std::vector<cv::Ptr<T> >& v, const char* cls) {
  Rcpp::List out(v.size());
  for (size_t i = 0; i < v.size(); ++i) out[i] = wrap_obj<T>(v[i], cls);
  return out;
}

// 输入方向：list(cvX, cvX, ...) -> vector<Ptr<T>>。
// NULL 元素按空 Ptr 处理——OpenCV 里合法（clusterPoses 允许列表里有空位），
// 真不接受的地方会在 C++ 侧断言，比在这里静默丢掉一个元素清楚。
template <class T>
inline std::vector<cv::Ptr<T> > as_obj_vector(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::Ptr<T> >();
  if (TYPEOF(x) != VECSXP)
    Rcpp::stop("需要一个 cv 对象列表，实际收到 %s", Rf_type2char(TYPEOF(x)));
  Rcpp::List l(x);
  std::vector<cv::Ptr<T> > out(l.size());
  for (R_xlen_t i = 0; i < l.size(); ++i) out[i] = as_ptr<T>(l[i]);
  return out;
}

// ---------------------------------------------------------------- flann 参数袋
//
// cv::flann::IndexParams 这一族（KDTreeIndexParams / LinearIndexParams /
// CompositeIndexParams / AutotunedIndexParams / HierarchicalClusteringIndexParams /
// KMeansIndexParams / LshIndexParams / SavedIndexParams）子类之间唯一的差别
// 就是构造函数，方法全在基类 IndexParams 上（setInt / setDouble / getString …）。
// 绑成 8 个类的话 R 侧要记 8 个构造名，却拿不到任何额外能力，所以这里
// 用命名 list 描述、现场造对象：
//
//   list()                                     -> KDTreeIndexParams()（OpenCV 的默认）
//   list(algorithm = "linear")
//   list(algorithm = "kdtree", trees = 8)
//   list(algorithm = "lsh", table_number = 12, key_size = 20, multi_probe_level = 2)
//   list(algorithm = "saved", filename = "idx.bin")
//
// 为什么非得能造出非空对象：FlannBasedMatcher 的构造函数里有
//     CV_Assert(_indexParams);
// 传 NULL 会直接断言失败。cvFlannBasedMatcher() 以前就是这么坏的
// —— 类绑了、方法也绑了，但连构造都过不去。

inline SEXP flann_get(Rcpp::List& L, const char* key) {
  SEXP nm = L.names();
  if (Rf_isNull(nm)) return R_NilValue;
  const R_xlen_t n = XLENGTH(nm);
  for (R_xlen_t i = 0; i < n; ++i) {
    if (std::strcmp(CHAR(STRING_ELT(nm, i)), key) == 0) return L[i];
  }
  return R_NilValue;
}

inline std::string flann_str(Rcpp::List& L, const char* key, const char* def) {
  SEXP v = flann_get(L, key);
  if (Rf_isNull(v)) return std::string(def);
  if (TYPEOF(v) != STRSXP || XLENGTH(v) < 1)
    Rcpp::stop("flann 参数 %s 需要字符串", key);
  return std::string(CHAR(STRING_ELT(v, 0)));
}

inline int flann_int(Rcpp::List& L, const char* key, int def) {
  SEXP v = flann_get(L, key);
  if (Rf_isNull(v)) return def;
  return static_cast<int>(Rf_asReal(v));
}

inline double flann_dbl(Rcpp::List& L, const char* key, double def) {
  SEXP v = flann_get(L, key);
  if (Rf_isNull(v)) return def;
  return Rf_asReal(v);
}

inline bool flann_lgl(Rcpp::List& L, const char* key, bool def) {
  SEXP v = flann_get(L, key);
  if (Rf_isNull(v)) return def;
  return Rf_asLogical(v) == TRUE;
}

inline cv::Ptr<cv::flann::IndexParams> as_flann_index_params(SEXP x) {
  if (Rf_isNull(x))
    return cv::Ptr<cv::flann::IndexParams>(new cv::flann::KDTreeIndexParams());
  if (!Rf_isNewList(x))
    Rcpp::stop("flann 索引参数需要命名 list，例如 "
               "list(algorithm = \"kdtree\", trees = 4)");
  Rcpp::List L(x);
  const std::string alg = flann_str(L, "algorithm", "kdtree");

  if (alg == "kdtree")
    return cv::Ptr<cv::flann::IndexParams>(
        new cv::flann::KDTreeIndexParams(flann_int(L, "trees", 4)));
  if (alg == "linear")
    return cv::Ptr<cv::flann::IndexParams>(new cv::flann::LinearIndexParams());
  if (alg == "composite")
    return cv::Ptr<cv::flann::IndexParams>(new cv::flann::CompositeIndexParams(
        flann_int(L, "trees", 4),
        flann_int(L, "branching", 32),
        flann_int(L, "iterations", 11),
        static_cast<cvflann::flann_centers_init_t>(
            flann_int(L, "centers_init", cvflann::FLANN_CENTERS_RANDOM)),
        static_cast<float>(flann_dbl(L, "cb_index", 0.2))));
  if (alg == "autotuned")
    return cv::Ptr<cv::flann::IndexParams>(new cv::flann::AutotunedIndexParams(
        static_cast<float>(flann_dbl(L, "target_precision", 0.8)),
        static_cast<float>(flann_dbl(L, "build_weight", 0.01)),
        static_cast<float>(flann_dbl(L, "memory_weight", 0.0)),
        static_cast<float>(flann_dbl(L, "sample_fraction", 0.1))));
  if (alg == "hierarchical")
    return cv::Ptr<cv::flann::IndexParams>(
        new cv::flann::HierarchicalClusteringIndexParams(
            flann_int(L, "branching", 32),
            static_cast<cvflann::flann_centers_init_t>(
                flann_int(L, "centers_init", cvflann::FLANN_CENTERS_RANDOM)),
            flann_int(L, "trees", 4),
            flann_int(L, "leaf_size", 100)));
  if (alg == "kmeans")
    return cv::Ptr<cv::flann::IndexParams>(new cv::flann::KMeansIndexParams(
        flann_int(L, "branching", 32),
        flann_int(L, "iterations", 11),
        static_cast<cvflann::flann_centers_init_t>(
            flann_int(L, "centers_init", cvflann::FLANN_CENTERS_RANDOM)),
        static_cast<float>(flann_dbl(L, "cb_index", 0.2))));
  if (alg == "lsh")
    return cv::Ptr<cv::flann::IndexParams>(new cv::flann::LshIndexParams(
        flann_int(L, "table_number", 12),
        flann_int(L, "key_size", 20),
        flann_int(L, "multi_probe_level", 2)));
  if (alg == "saved")
    return cv::Ptr<cv::flann::IndexParams>(
        new cv::flann::SavedIndexParams(flann_str(L, "filename", "")));

  Rcpp::stop("未知的 flann algorithm：%s（可用 kdtree / linear / composite / "
             "autotuned / hierarchical / kmeans / lsh / saved）", alg.c_str());
}

inline cv::Ptr<cv::flann::SearchParams> as_flann_search_params(SEXP x) {
  if (Rf_isNull(x))
    return cv::Ptr<cv::flann::SearchParams>(new cv::flann::SearchParams());
  // 只关心 checks 的场合太多，允许直接给一个数：search = 64
  if (Rf_isNumeric(x) && XLENGTH(x) >= 1)
    return cv::Ptr<cv::flann::SearchParams>(
        new cv::flann::SearchParams(static_cast<int>(Rf_asReal(x))));
  if (!Rf_isNewList(x))
    Rcpp::stop("flann 搜索参数需要命名 list（checks / eps / sorted / "
               "explore_all_trees）或一个数值（checks）");
  Rcpp::List L(x);
  return cv::Ptr<cv::flann::SearchParams>(new cv::flann::SearchParams(
      flann_int(L, "checks", 32),
      static_cast<float>(flann_dbl(L, "eps", 0.0)),
      flann_lgl(L, "sorted", true),
      flann_lgl(L, "explore_all_trees", false)));
}

}  // namespace ropecv
