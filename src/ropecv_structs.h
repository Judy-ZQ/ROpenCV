// 由 tools/gen/emit.py --structs 生成，请勿手改。
//
// CV_PROP_RW 结构体在 R 侧的「值形态」：输入收命名 list，输出给命名 list。
// 对象形态也一并收（as_<X> 先看是不是 cvObject），所以
// cvSimpleBlobDetectorParams() 造出来的对象仍然能当参数传回去。
#ifndef ROPECV_STRUCTS_H
#define ROPECV_STRUCTS_H

#include "ropecv.h"
#include <cstring>
#include <string>
#include <opencv2/core.hpp>
#include <opencv2/calib.hpp>
#include <opencv2/core/types.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/objdetect.hpp>
#include <opencv2/features2d.hpp>
#include <opencv2/tracking.hpp>
#include <opencv2/3d.hpp>
#include <opencv2/objdetect/charuco_detector.hpp>
#include <opencv2/objdetect/aruco_detector.hpp>
#include <opencv2/stitching/detail/matchers.hpp>
#include <opencv2/rgbd/kinfu.hpp>
#include <opencv2/rgbd/large_kinfu.hpp>
#include <opencv2/line_descriptor/descriptor.hpp>
#include <opencv2/rgbd/linemod.hpp>
#include <opencv2/mcc/checker_detector.hpp>
#include <opencv2/ml/ml.hpp>
#include <opencv2/phase_unwrapping/histogramphaseunwrapping.hpp>
#include <opencv2/xstereo/quasi_dense_stereo.hpp>
#include <opencv2/structured_light/sinusoidalpattern.hpp>
#include <opencv2/tracking/tracking.hpp>
#include <opencv2/core/bindings_utils.hpp>
#include <opencv2/ximgproc/edge_drawing.hpp>

namespace ropecv {

// ---- 命名 list <-> struct 的小工具 ------------------------------------------
// 取字段：没给、给 NULL、给 NA 都算「保留结构体的默认值」。R 侧只写关心的字段即可：
//   cvSimpleBlobDetector(list(minThreshold = 10, filterByArea = TRUE))
inline SEXP field(SEXP x, const char* name) {
  if (Rf_isNull(x) || TYPEOF(x) != VECSXP) return R_NilValue;
  SEXP nm = Rf_getAttrib(x, R_NamesSymbol);
  if (Rf_isNull(nm)) return R_NilValue;
  for (R_xlen_t i = 0; i < XLENGTH(x); ++i) {
    const char* s = CHAR(STRING_ELT(nm, i));
    if (s && std::strcmp(s, name) == 0) return VECTOR_ELT(x, i);
  }
  return R_NilValue;
}

inline bool given(SEXP v) {
  if (Rf_isNull(v) || Rf_length(v) == 0) return false;
  switch (TYPEOF(v)) {
    case LGLSXP:  return LOGICAL(v)[0] != NA_LOGICAL;
    case INTSXP:  return INTEGER(v)[0] != NA_INTEGER;
    case REALSXP: return !ISNA(REAL(v)[0]) && !ISNAN(REAL(v)[0]);
    case STRSXP:  return STRING_ELT(v, 0) != NA_STRING;
    default:      return true;
  }
}

// 字段名拼错时直接报错，而不是悄悄忽略 —— 命名 list 最容易踩的就是这个坑。
inline void check_names(SEXP x, const char* what, const char* const* ok, int n) {
  if (Rf_isNull(x) || TYPEOF(x) != VECSXP) return;
  SEXP nm = Rf_getAttrib(x, R_NamesSymbol);
  if (Rf_isNull(nm)) return;
  for (R_xlen_t i = 0; i < XLENGTH(x); ++i) {
    const char* s = CHAR(STRING_ELT(nm, i));
    if (!s || !*s) continue;
    bool hit = false;
    for (int k = 0; k < n; ++k)
      if (std::strcmp(s, ok[k]) == 0) { hit = true; break; }
    if (!hit) {
      std::string all;
      for (int k = 0; k < n; ++k) { if (k) all += ", "; all += ok[k]; }
      Rcpp::stop("%s 没有字段 '%s'。可用字段：%s", what, s, all.c_str());
    }
  }
}

inline cv::Size2f as_size2f(SEXP x) {
  Rcpp::NumericVector v = Rcpp::as<Rcpp::NumericVector>(x);
  if (v.size() != 2) Rcpp::stop("需要长度 2 的数值向量 (width, height)");
  return cv::Size2f((float)v[0], (float)v[1]);
}
inline SEXP wrap_size2f(const cv::Size2f& s) {
  return Rcpp::NumericVector::create(s.width, s.height);
}
inline cv::Rect2d as_rect2d(SEXP x) {
  Rcpp::NumericVector v = Rcpp::as<Rcpp::NumericVector>(x);
  if (v.size() != 4) Rcpp::stop("需要长度 4 的数值向量 (x, y, width, height)");
  return cv::Rect2d(v[0], v[1], v[2], v[3]);
}
inline SEXP wrap_rect2d(const cv::Rect2d& r) {
  return Rcpp::NumericVector::create(r.x, r.y, r.width, r.height);
}
// OpenCV 5 的 UMat 没有「从 Mat 隐式构造」的路径（UMat(Mat&) 编不过），
// 走 copyTo 显式上传。
inline cv::UMat as_umat(SEXP x) {
  cv::UMat u;
  (*mat_ptr(x)).copyTo(u);
  return u;
}
template <class T, int M, int N>
inline cv::Matx<T, M, N> as_matx(SEXP x) {
  Rcpp::NumericMatrix m = Rcpp::as<Rcpp::NumericMatrix>(x);
  if (m.nrow() != M || m.ncol() != N) Rcpp::stop("需要 %d x %d 的数值矩阵", M, N);
  cv::Matx<T, M, N> r;
  for (int i = 0; i < M; ++i)
    for (int j = 0; j < N; ++j) r(i, j) = (T)m(i, j);
  return r;
}
template <class T, int M, int N>
inline SEXP wrap_matx(const cv::Matx<T, M, N>& v) {
  Rcpp::NumericMatrix m(M, N);
  for (int i = 0; i < M; ++i)
    for (int j = 0; j < N; ++j) m(i, j) = (double)v(i, j);
  return m;
}
template <class T, int N>
inline cv::Vec<T, N> as_vec(SEXP x) {
  Rcpp::NumericVector v = Rcpp::as<Rcpp::NumericVector>(x);
  if (v.size() != N) Rcpp::stop("需要长度 %d 的数值向量", N);
  cv::Vec<T, N> r;
  for (int i = 0; i < N; ++i) r[i] = (T)v[i];
  return r;
}
template <class T, int N>
inline SEXP wrap_vec(const cv::Vec<T, N>& v) {
  Rcpp::NumericVector r(N);
  for (int i = 0; i < N; ++i) r[i] = (double)v[i];
  return r;
}
// 3D 点：Octree::KNNSearch / radiusNNSearch 的入参。
inline cv::Point3f as_point3f(SEXP x) {
  Rcpp::NumericVector v = Rcpp::as<Rcpp::NumericVector>(x);
  if (v.size() != 3) Rcpp::stop("需要长度 3 的数值向量 (x, y, z)");
  return cv::Point3f((float)v[0], (float)v[1], (float)v[2]);
}
inline SEXP wrap_point3f(const cv::Point3f& p) {
  return Rcpp::NumericVector::create(p.x, p.y, p.z);
}
inline std::vector<cv::Point3f> as_vec_point3f(SEXP x) {
  Rcpp::NumericMatrix m = Rcpp::as<Rcpp::NumericMatrix>(x);
  if (m.ncol() != 3) Rcpp::stop("需要 n x 3 的数值矩阵");
  std::vector<cv::Point3f> out;
  out.reserve(m.nrow());
  for (int i = 0; i < m.nrow(); ++i)
    out.push_back(cv::Point3f((float)m(i, 0), (float)m(i, 1), (float)m(i, 2)));
  return out;
}
inline SEXP wrap_vec_point3f(const std::vector<cv::Point3f>& v) {
  Rcpp::NumericMatrix m((int)v.size(), 3);
  for (size_t i = 0; i < v.size(); ++i) {
    m((int)i, 0) = v[i].x; m((int)i, 1) = v[i].y; m((int)i, 2) = v[i].z;
  }
  return m;
}


inline cv::CirclesGridFinderParameters as_CirclesGridFinderParameters(SEXP x);
inline SEXP wrap_CirclesGridFinderParameters(const cv::CirclesGridFinderParameters& v);
inline std::vector<cv::CirclesGridFinderParameters> as_vec_CirclesGridFinderParameters(SEXP x);
inline SEXP wrap_vec_CirclesGridFinderParameters(const std::vector<cv::CirclesGridFinderParameters>& v);
inline std::vector<std::vector<cv::CirclesGridFinderParameters> > as_vec_CirclesGridFinderParameters_list(SEXP x);
inline SEXP wrap_vec_CirclesGridFinderParameters_list(const std::vector<std::vector<cv::CirclesGridFinderParameters> >& v);
inline cv::DMatch as_DMatch(SEXP x);
inline SEXP wrap_DMatch(const cv::DMatch& v);
inline std::vector<cv::DMatch> as_vec_DMatch(SEXP x);
inline SEXP wrap_vec_DMatch(const std::vector<cv::DMatch>& v);
inline std::vector<std::vector<cv::DMatch> > as_vec_DMatch_list(SEXP x);
inline SEXP wrap_vec_DMatch_list(const std::vector<std::vector<cv::DMatch> >& v);
inline cv::Filter2DParams as_Filter2DParams(SEXP x);
inline SEXP wrap_Filter2DParams(const cv::Filter2DParams& v);
inline std::vector<cv::Filter2DParams> as_vec_Filter2DParams(SEXP x);
inline SEXP wrap_vec_Filter2DParams(const std::vector<cv::Filter2DParams>& v);
inline std::vector<std::vector<cv::Filter2DParams> > as_vec_Filter2DParams_list(SEXP x);
inline SEXP wrap_vec_Filter2DParams_list(const std::vector<std::vector<cv::Filter2DParams> >& v);
inline cv::QRCodeDetectorAruco::Params as_QRCodeDetectorAruco_Params(SEXP x);
inline SEXP wrap_QRCodeDetectorAruco_Params(const cv::QRCodeDetectorAruco::Params& v);
inline std::vector<cv::QRCodeDetectorAruco::Params> as_vec_QRCodeDetectorAruco_Params(SEXP x);
inline SEXP wrap_vec_QRCodeDetectorAruco_Params(const std::vector<cv::QRCodeDetectorAruco::Params>& v);
inline std::vector<std::vector<cv::QRCodeDetectorAruco::Params> > as_vec_QRCodeDetectorAruco_Params_list(SEXP x);
inline SEXP wrap_vec_QRCodeDetectorAruco_Params_list(const std::vector<std::vector<cv::QRCodeDetectorAruco::Params> >& v);
inline cv::QRCodeEncoder::Params as_QRCodeEncoder_Params(SEXP x);
inline SEXP wrap_QRCodeEncoder_Params(const cv::QRCodeEncoder::Params& v);
inline std::vector<cv::QRCodeEncoder::Params> as_vec_QRCodeEncoder_Params(SEXP x);
inline SEXP wrap_vec_QRCodeEncoder_Params(const std::vector<cv::QRCodeEncoder::Params>& v);
inline std::vector<std::vector<cv::QRCodeEncoder::Params> > as_vec_QRCodeEncoder_Params_list(SEXP x);
inline SEXP wrap_vec_QRCodeEncoder_Params_list(const std::vector<std::vector<cv::QRCodeEncoder::Params> >& v);
inline cv::SimpleBlobDetector::Params as_SimpleBlobDetector_Params(SEXP x);
inline SEXP wrap_SimpleBlobDetector_Params(const cv::SimpleBlobDetector::Params& v);
inline std::vector<cv::SimpleBlobDetector::Params> as_vec_SimpleBlobDetector_Params(SEXP x);
inline SEXP wrap_vec_SimpleBlobDetector_Params(const std::vector<cv::SimpleBlobDetector::Params>& v);
inline std::vector<std::vector<cv::SimpleBlobDetector::Params> > as_vec_SimpleBlobDetector_Params_list(SEXP x);
inline SEXP wrap_vec_SimpleBlobDetector_Params_list(const std::vector<std::vector<cv::SimpleBlobDetector::Params> >& v);
inline cv::TrackerDaSiamRPN::Params as_TrackerDaSiamRPN_Params(SEXP x);
inline SEXP wrap_TrackerDaSiamRPN_Params(const cv::TrackerDaSiamRPN::Params& v);
inline std::vector<cv::TrackerDaSiamRPN::Params> as_vec_TrackerDaSiamRPN_Params(SEXP x);
inline SEXP wrap_vec_TrackerDaSiamRPN_Params(const std::vector<cv::TrackerDaSiamRPN::Params>& v);
inline std::vector<std::vector<cv::TrackerDaSiamRPN::Params> > as_vec_TrackerDaSiamRPN_Params_list(SEXP x);
inline SEXP wrap_vec_TrackerDaSiamRPN_Params_list(const std::vector<std::vector<cv::TrackerDaSiamRPN::Params> >& v);
inline cv::TrackerMIL::Params as_TrackerMIL_Params(SEXP x);
inline SEXP wrap_TrackerMIL_Params(const cv::TrackerMIL::Params& v);
inline std::vector<cv::TrackerMIL::Params> as_vec_TrackerMIL_Params(SEXP x);
inline SEXP wrap_vec_TrackerMIL_Params(const std::vector<cv::TrackerMIL::Params>& v);
inline std::vector<std::vector<cv::TrackerMIL::Params> > as_vec_TrackerMIL_Params_list(SEXP x);
inline SEXP wrap_vec_TrackerMIL_Params_list(const std::vector<std::vector<cv::TrackerMIL::Params> >& v);
inline cv::TrackerNano::Params as_TrackerNano_Params(SEXP x);
inline SEXP wrap_TrackerNano_Params(const cv::TrackerNano::Params& v);
inline std::vector<cv::TrackerNano::Params> as_vec_TrackerNano_Params(SEXP x);
inline SEXP wrap_vec_TrackerNano_Params(const std::vector<cv::TrackerNano::Params>& v);
inline std::vector<std::vector<cv::TrackerNano::Params> > as_vec_TrackerNano_Params_list(SEXP x);
inline SEXP wrap_vec_TrackerNano_Params_list(const std::vector<std::vector<cv::TrackerNano::Params> >& v);
inline cv::TrackerVit::Params as_TrackerVit_Params(SEXP x);
inline SEXP wrap_TrackerVit_Params(const cv::TrackerVit::Params& v);
inline std::vector<cv::TrackerVit::Params> as_vec_TrackerVit_Params(SEXP x);
inline SEXP wrap_vec_TrackerVit_Params(const std::vector<cv::TrackerVit::Params>& v);
inline std::vector<std::vector<cv::TrackerVit::Params> > as_vec_TrackerVit_Params_list(SEXP x);
inline SEXP wrap_vec_TrackerVit_Params_list(const std::vector<std::vector<cv::TrackerVit::Params> >& v);
inline cv::UsacParams as_UsacParams(SEXP x);
inline SEXP wrap_UsacParams(const cv::UsacParams& v);
inline std::vector<cv::UsacParams> as_vec_UsacParams(SEXP x);
inline SEXP wrap_vec_UsacParams(const std::vector<cv::UsacParams>& v);
inline std::vector<std::vector<cv::UsacParams> > as_vec_UsacParams_list(SEXP x);
inline SEXP wrap_vec_UsacParams_list(const std::vector<std::vector<cv::UsacParams> >& v);
inline cv::aruco::CharucoParameters as_aruco_CharucoParameters(SEXP x);
inline SEXP wrap_aruco_CharucoParameters(const cv::aruco::CharucoParameters& v);
inline std::vector<cv::aruco::CharucoParameters> as_vec_aruco_CharucoParameters(SEXP x);
inline SEXP wrap_vec_aruco_CharucoParameters(const std::vector<cv::aruco::CharucoParameters>& v);
inline std::vector<std::vector<cv::aruco::CharucoParameters> > as_vec_aruco_CharucoParameters_list(SEXP x);
inline SEXP wrap_vec_aruco_CharucoParameters_list(const std::vector<std::vector<cv::aruco::CharucoParameters> >& v);
inline cv::aruco::DetectorParameters as_aruco_DetectorParameters(SEXP x);
inline SEXP wrap_aruco_DetectorParameters(const cv::aruco::DetectorParameters& v);
inline std::vector<cv::aruco::DetectorParameters> as_vec_aruco_DetectorParameters(SEXP x);
inline SEXP wrap_vec_aruco_DetectorParameters(const std::vector<cv::aruco::DetectorParameters>& v);
inline std::vector<std::vector<cv::aruco::DetectorParameters> > as_vec_aruco_DetectorParameters_list(SEXP x);
inline SEXP wrap_vec_aruco_DetectorParameters_list(const std::vector<std::vector<cv::aruco::DetectorParameters> >& v);
inline cv::aruco::RefineParameters as_aruco_RefineParameters(SEXP x);
inline SEXP wrap_aruco_RefineParameters(const cv::aruco::RefineParameters& v);
inline std::vector<cv::aruco::RefineParameters> as_vec_aruco_RefineParameters(SEXP x);
inline SEXP wrap_vec_aruco_RefineParameters(const std::vector<cv::aruco::RefineParameters>& v);
inline std::vector<std::vector<cv::aruco::RefineParameters> > as_vec_aruco_RefineParameters_list(SEXP x);
inline SEXP wrap_vec_aruco_RefineParameters_list(const std::vector<std::vector<cv::aruco::RefineParameters> >& v);
inline cv::detail::ImageFeatures as_detail_ImageFeatures(SEXP x);
inline SEXP wrap_detail_ImageFeatures(const cv::detail::ImageFeatures& v);
inline std::vector<cv::detail::ImageFeatures> as_vec_detail_ImageFeatures(SEXP x);
inline SEXP wrap_vec_detail_ImageFeatures(const std::vector<cv::detail::ImageFeatures>& v);
inline std::vector<std::vector<cv::detail::ImageFeatures> > as_vec_detail_ImageFeatures_list(SEXP x);
inline SEXP wrap_vec_detail_ImageFeatures_list(const std::vector<std::vector<cv::detail::ImageFeatures> >& v);
inline cv::detail::MatchesInfo as_detail_MatchesInfo(SEXP x);
inline SEXP wrap_detail_MatchesInfo(const cv::detail::MatchesInfo& v);
inline std::vector<cv::detail::MatchesInfo> as_vec_detail_MatchesInfo(SEXP x);
inline SEXP wrap_vec_detail_MatchesInfo(const std::vector<cv::detail::MatchesInfo>& v);
inline std::vector<std::vector<cv::detail::MatchesInfo> > as_vec_detail_MatchesInfo_list(SEXP x);
inline SEXP wrap_vec_detail_MatchesInfo_list(const std::vector<std::vector<cv::detail::MatchesInfo> >& v);
inline cv::kinfu::VolumeParams as_kinfu_VolumeParams(SEXP x);
inline SEXP wrap_kinfu_VolumeParams(const cv::kinfu::VolumeParams& v);
inline std::vector<cv::kinfu::VolumeParams> as_vec_kinfu_VolumeParams(SEXP x);
inline SEXP wrap_vec_kinfu_VolumeParams(const std::vector<cv::kinfu::VolumeParams>& v);
inline std::vector<std::vector<cv::kinfu::VolumeParams> > as_vec_kinfu_VolumeParams_list(SEXP x);
inline SEXP wrap_vec_kinfu_VolumeParams_list(const std::vector<std::vector<cv::kinfu::VolumeParams> >& v);
inline cv::large_kinfu::VolumeParams as_large_kinfu_VolumeParams(SEXP x);
inline SEXP wrap_large_kinfu_VolumeParams(const cv::large_kinfu::VolumeParams& v);
inline std::vector<cv::large_kinfu::VolumeParams> as_vec_large_kinfu_VolumeParams(SEXP x);
inline SEXP wrap_vec_large_kinfu_VolumeParams(const std::vector<cv::large_kinfu::VolumeParams>& v);
inline std::vector<std::vector<cv::large_kinfu::VolumeParams> > as_vec_large_kinfu_VolumeParams_list(SEXP x);
inline SEXP wrap_vec_large_kinfu_VolumeParams_list(const std::vector<std::vector<cv::large_kinfu::VolumeParams> >& v);
inline cv::line_descriptor::KeyLine as_line_descriptor_KeyLine(SEXP x);
inline SEXP wrap_line_descriptor_KeyLine(const cv::line_descriptor::KeyLine& v);
inline std::vector<cv::line_descriptor::KeyLine> as_vec_line_descriptor_KeyLine(SEXP x);
inline SEXP wrap_vec_line_descriptor_KeyLine(const std::vector<cv::line_descriptor::KeyLine>& v);
inline std::vector<std::vector<cv::line_descriptor::KeyLine> > as_vec_line_descriptor_KeyLine_list(SEXP x);
inline SEXP wrap_vec_line_descriptor_KeyLine_list(const std::vector<std::vector<cv::line_descriptor::KeyLine> >& v);
inline cv::line_descriptor::LSDParam as_line_descriptor_LSDParam(SEXP x);
inline SEXP wrap_line_descriptor_LSDParam(const cv::line_descriptor::LSDParam& v);
inline std::vector<cv::line_descriptor::LSDParam> as_vec_line_descriptor_LSDParam(SEXP x);
inline SEXP wrap_vec_line_descriptor_LSDParam(const std::vector<cv::line_descriptor::LSDParam>& v);
inline std::vector<std::vector<cv::line_descriptor::LSDParam> > as_vec_line_descriptor_LSDParam_list(SEXP x);
inline SEXP wrap_vec_line_descriptor_LSDParam_list(const std::vector<std::vector<cv::line_descriptor::LSDParam> >& v);
inline cv::linemod::Feature as_linemod_Feature(SEXP x);
inline SEXP wrap_linemod_Feature(const cv::linemod::Feature& v);
inline std::vector<cv::linemod::Feature> as_vec_linemod_Feature(SEXP x);
inline SEXP wrap_vec_linemod_Feature(const std::vector<cv::linemod::Feature>& v);
inline std::vector<std::vector<cv::linemod::Feature> > as_vec_linemod_Feature_list(SEXP x);
inline SEXP wrap_vec_linemod_Feature_list(const std::vector<std::vector<cv::linemod::Feature> >& v);
inline cv::linemod::Match as_linemod_Match(SEXP x);
inline SEXP wrap_linemod_Match(const cv::linemod::Match& v);
inline std::vector<cv::linemod::Match> as_vec_linemod_Match(SEXP x);
inline SEXP wrap_vec_linemod_Match(const std::vector<cv::linemod::Match>& v);
inline std::vector<std::vector<cv::linemod::Match> > as_vec_linemod_Match_list(SEXP x);
inline SEXP wrap_vec_linemod_Match_list(const std::vector<std::vector<cv::linemod::Match> >& v);
inline cv::linemod::Template as_linemod_Template(SEXP x);
inline SEXP wrap_linemod_Template(const cv::linemod::Template& v);
inline std::vector<cv::linemod::Template> as_vec_linemod_Template(SEXP x);
inline SEXP wrap_vec_linemod_Template(const std::vector<cv::linemod::Template>& v);
inline std::vector<std::vector<cv::linemod::Template> > as_vec_linemod_Template_list(SEXP x);
inline SEXP wrap_vec_linemod_Template_list(const std::vector<std::vector<cv::linemod::Template> >& v);
inline cv::mcc::DetectorParameters as_mcc_DetectorParameters(SEXP x);
inline SEXP wrap_mcc_DetectorParameters(const cv::mcc::DetectorParameters& v);
inline std::vector<cv::mcc::DetectorParameters> as_vec_mcc_DetectorParameters(SEXP x);
inline SEXP wrap_vec_mcc_DetectorParameters(const std::vector<cv::mcc::DetectorParameters>& v);
inline std::vector<std::vector<cv::mcc::DetectorParameters> > as_vec_mcc_DetectorParameters_list(SEXP x);
inline SEXP wrap_vec_mcc_DetectorParameters_list(const std::vector<std::vector<cv::mcc::DetectorParameters> >& v);
inline cv::ml::ParamGrid as_ml_ParamGrid(SEXP x);
inline SEXP wrap_ml_ParamGrid(const cv::ml::ParamGrid& v);
inline std::vector<cv::ml::ParamGrid> as_vec_ml_ParamGrid(SEXP x);
inline SEXP wrap_vec_ml_ParamGrid(const std::vector<cv::ml::ParamGrid>& v);
inline std::vector<std::vector<cv::ml::ParamGrid> > as_vec_ml_ParamGrid_list(SEXP x);
inline SEXP wrap_vec_ml_ParamGrid_list(const std::vector<std::vector<cv::ml::ParamGrid> >& v);
inline cv::phase_unwrapping::HistogramPhaseUnwrapping::Params as_phase_unwrapping_HistogramPhaseUnwrapping_Params(SEXP x);
inline SEXP wrap_phase_unwrapping_HistogramPhaseUnwrapping_Params(const cv::phase_unwrapping::HistogramPhaseUnwrapping::Params& v);
inline std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> as_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params(SEXP x);
inline SEXP wrap_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params(const std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params>& v);
inline std::vector<std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> > as_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params_list(SEXP x);
inline SEXP wrap_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params_list(const std::vector<std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> >& v);
inline cv::stereo::MatchQuasiDense as_stereo_MatchQuasiDense(SEXP x);
inline SEXP wrap_stereo_MatchQuasiDense(const cv::stereo::MatchQuasiDense& v);
inline std::vector<cv::stereo::MatchQuasiDense> as_vec_stereo_MatchQuasiDense(SEXP x);
inline SEXP wrap_vec_stereo_MatchQuasiDense(const std::vector<cv::stereo::MatchQuasiDense>& v);
inline std::vector<std::vector<cv::stereo::MatchQuasiDense> > as_vec_stereo_MatchQuasiDense_list(SEXP x);
inline SEXP wrap_vec_stereo_MatchQuasiDense_list(const std::vector<std::vector<cv::stereo::MatchQuasiDense> >& v);
inline cv::stereo::PropagationParameters as_stereo_PropagationParameters(SEXP x);
inline SEXP wrap_stereo_PropagationParameters(const cv::stereo::PropagationParameters& v);
inline std::vector<cv::stereo::PropagationParameters> as_vec_stereo_PropagationParameters(SEXP x);
inline SEXP wrap_vec_stereo_PropagationParameters(const std::vector<cv::stereo::PropagationParameters>& v);
inline std::vector<std::vector<cv::stereo::PropagationParameters> > as_vec_stereo_PropagationParameters_list(SEXP x);
inline SEXP wrap_vec_stereo_PropagationParameters_list(const std::vector<std::vector<cv::stereo::PropagationParameters> >& v);
inline cv::structured_light::SinusoidalPattern::Params as_structured_light_SinusoidalPattern_Params(SEXP x);
inline SEXP wrap_structured_light_SinusoidalPattern_Params(const cv::structured_light::SinusoidalPattern::Params& v);
inline std::vector<cv::structured_light::SinusoidalPattern::Params> as_vec_structured_light_SinusoidalPattern_Params(SEXP x);
inline SEXP wrap_vec_structured_light_SinusoidalPattern_Params(const std::vector<cv::structured_light::SinusoidalPattern::Params>& v);
inline std::vector<std::vector<cv::structured_light::SinusoidalPattern::Params> > as_vec_structured_light_SinusoidalPattern_Params_list(SEXP x);
inline SEXP wrap_vec_structured_light_SinusoidalPattern_Params_list(const std::vector<std::vector<cv::structured_light::SinusoidalPattern::Params> >& v);
inline cv::tracking::TrackerCSRT::Params as_tracking_TrackerCSRT_Params(SEXP x);
inline SEXP wrap_tracking_TrackerCSRT_Params(const cv::tracking::TrackerCSRT::Params& v);
inline std::vector<cv::tracking::TrackerCSRT::Params> as_vec_tracking_TrackerCSRT_Params(SEXP x);
inline SEXP wrap_vec_tracking_TrackerCSRT_Params(const std::vector<cv::tracking::TrackerCSRT::Params>& v);
inline std::vector<std::vector<cv::tracking::TrackerCSRT::Params> > as_vec_tracking_TrackerCSRT_Params_list(SEXP x);
inline SEXP wrap_vec_tracking_TrackerCSRT_Params_list(const std::vector<std::vector<cv::tracking::TrackerCSRT::Params> >& v);
inline cv::tracking::TrackerKCF::Params as_tracking_TrackerKCF_Params(SEXP x);
inline SEXP wrap_tracking_TrackerKCF_Params(const cv::tracking::TrackerKCF::Params& v);
inline std::vector<cv::tracking::TrackerKCF::Params> as_vec_tracking_TrackerKCF_Params(SEXP x);
inline SEXP wrap_vec_tracking_TrackerKCF_Params(const std::vector<cv::tracking::TrackerKCF::Params>& v);
inline std::vector<std::vector<cv::tracking::TrackerKCF::Params> > as_vec_tracking_TrackerKCF_Params_list(SEXP x);
inline SEXP wrap_vec_tracking_TrackerKCF_Params_list(const std::vector<std::vector<cv::tracking::TrackerKCF::Params> >& v);
inline cv::utils::ClassWithKeywordProperties as_utils_ClassWithKeywordProperties(SEXP x);
inline SEXP wrap_utils_ClassWithKeywordProperties(const cv::utils::ClassWithKeywordProperties& v);
inline std::vector<cv::utils::ClassWithKeywordProperties> as_vec_utils_ClassWithKeywordProperties(SEXP x);
inline SEXP wrap_vec_utils_ClassWithKeywordProperties(const std::vector<cv::utils::ClassWithKeywordProperties>& v);
inline std::vector<std::vector<cv::utils::ClassWithKeywordProperties> > as_vec_utils_ClassWithKeywordProperties_list(SEXP x);
inline SEXP wrap_vec_utils_ClassWithKeywordProperties_list(const std::vector<std::vector<cv::utils::ClassWithKeywordProperties> >& v);
inline cv::utils::FunctionParams as_utils_FunctionParams(SEXP x);
inline SEXP wrap_utils_FunctionParams(const cv::utils::FunctionParams& v);
inline std::vector<cv::utils::FunctionParams> as_vec_utils_FunctionParams(SEXP x);
inline SEXP wrap_vec_utils_FunctionParams(const std::vector<cv::utils::FunctionParams>& v);
inline std::vector<std::vector<cv::utils::FunctionParams> > as_vec_utils_FunctionParams_list(SEXP x);
inline SEXP wrap_vec_utils_FunctionParams_list(const std::vector<std::vector<cv::utils::FunctionParams> >& v);
inline cv::ximgproc::EdgeDrawing::Params as_ximgproc_EdgeDrawing_Params(SEXP x);
inline SEXP wrap_ximgproc_EdgeDrawing_Params(const cv::ximgproc::EdgeDrawing::Params& v);
inline std::vector<cv::ximgproc::EdgeDrawing::Params> as_vec_ximgproc_EdgeDrawing_Params(SEXP x);
inline SEXP wrap_vec_ximgproc_EdgeDrawing_Params(const std::vector<cv::ximgproc::EdgeDrawing::Params>& v);
inline std::vector<std::vector<cv::ximgproc::EdgeDrawing::Params> > as_vec_ximgproc_EdgeDrawing_Params_list(SEXP x);
inline SEXP wrap_vec_ximgproc_EdgeDrawing_Params_list(const std::vector<std::vector<cv::ximgproc::EdgeDrawing::Params> >& v);

// ---- cv::CirclesGridFinderParameters  (15 字段)
inline cv::CirclesGridFinderParameters as_CirclesGridFinderParameters(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::CirclesGridFinderParameters>(x);
  cv::CirclesGridFinderParameters v;
  SEXP t;
  if (given(t = field(x, "densityNeighborhoodSize"))) v.densityNeighborhoodSize = ropecv::as_size2f(t);
  if (given(t = field(x, "minDensity"))) v.minDensity = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "kmeansAttempts"))) v.kmeansAttempts = Rcpp::as<int>(t);
  if (given(t = field(x, "minDistanceToAddKeypoint"))) v.minDistanceToAddKeypoint = Rcpp::as<int>(t);
  if (given(t = field(x, "keypointScale"))) v.keypointScale = Rcpp::as<int>(t);
  if (given(t = field(x, "minGraphConfidence"))) v.minGraphConfidence = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "vertexGain"))) v.vertexGain = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "vertexPenalty"))) v.vertexPenalty = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "existingVertexGain"))) v.existingVertexGain = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "edgeGain"))) v.edgeGain = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "edgePenalty"))) v.edgePenalty = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "convexHullFactor"))) v.convexHullFactor = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "minRNGEdgeSwitchDist"))) v.minRNGEdgeSwitchDist = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "squareSize"))) v.squareSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxRectifiedDistance"))) v.maxRectifiedDistance = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"densityNeighborhoodSize", "minDensity", "kmeansAttempts", "minDistanceToAddKeypoint", "keypointScale", "minGraphConfidence", "vertexGain", "vertexPenalty", "existingVertexGain", "edgeGain", "edgePenalty", "convexHullFactor", "minRNGEdgeSwitchDist", "squareSize", "maxRectifiedDistance"};
  check_names(x, "cv::CirclesGridFinderParameters", ok, 15);
  return v;
}

inline SEXP wrap_CirclesGridFinderParameters(const cv::CirclesGridFinderParameters& v) {
  static const char* nm[] = {"densityNeighborhoodSize", "minDensity", "kmeansAttempts", "minDistanceToAddKeypoint", "keypointScale", "minGraphConfidence", "vertexGain", "vertexPenalty", "existingVertexGain", "edgeGain", "edgePenalty", "convexHullFactor", "minRNGEdgeSwitchDist", "squareSize", "maxRectifiedDistance"};
  Rcpp::List out(15);
  Rcpp::CharacterVector names(15);
  for (int i = 0; i < 15; ++i) names[i] = nm[i];
  out[0] = ropecv::wrap_size2f(v.densityNeighborhoodSize);
  out[1] = Rcpp::wrap((double)v.minDensity);
  out[2] = Rcpp::wrap(v.kmeansAttempts);
  out[3] = Rcpp::wrap(v.minDistanceToAddKeypoint);
  out[4] = Rcpp::wrap(v.keypointScale);
  out[5] = Rcpp::wrap((double)v.minGraphConfidence);
  out[6] = Rcpp::wrap((double)v.vertexGain);
  out[7] = Rcpp::wrap((double)v.vertexPenalty);
  out[8] = Rcpp::wrap((double)v.existingVertexGain);
  out[9] = Rcpp::wrap((double)v.edgeGain);
  out[10] = Rcpp::wrap((double)v.edgePenalty);
  out[11] = Rcpp::wrap((double)v.convexHullFactor);
  out[12] = Rcpp::wrap((double)v.minRNGEdgeSwitchDist);
  out[13] = Rcpp::wrap((double)v.squareSize);
  out[14] = Rcpp::wrap((double)v.maxRectifiedDistance);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::CirclesGridFinderParameters> as_vec_CirclesGridFinderParameters(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::CirclesGridFinderParameters>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::CirclesGridFinderParameters> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_CirclesGridFinderParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_CirclesGridFinderParameters(const std::vector<cv::CirclesGridFinderParameters>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_CirclesGridFinderParameters(v[i]);
  return out;
}

inline std::vector<std::vector<cv::CirclesGridFinderParameters> > as_vec_CirclesGridFinderParameters_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::CirclesGridFinderParameters> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::CirclesGridFinderParameters> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_CirclesGridFinderParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_CirclesGridFinderParameters_list(const std::vector<std::vector<cv::CirclesGridFinderParameters> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_CirclesGridFinderParameters(v[i]);
  return out;
}

// ---- cv::DMatch  (4 字段)
inline cv::DMatch as_DMatch(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::DMatch>(x);
  cv::DMatch v;
  SEXP t;
  if (given(t = field(x, "queryIdx"))) v.queryIdx = Rcpp::as<int>(t);
  if (given(t = field(x, "trainIdx"))) v.trainIdx = Rcpp::as<int>(t);
  if (given(t = field(x, "imgIdx"))) v.imgIdx = Rcpp::as<int>(t);
  if (given(t = field(x, "distance"))) v.distance = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"queryIdx", "trainIdx", "imgIdx", "distance"};
  check_names(x, "cv::DMatch", ok, 4);
  return v;
}

inline SEXP wrap_DMatch(const cv::DMatch& v) {
  static const char* nm[] = {"queryIdx", "trainIdx", "imgIdx", "distance"};
  Rcpp::List out(4);
  Rcpp::CharacterVector names(4);
  for (int i = 0; i < 4; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.queryIdx);
  out[1] = Rcpp::wrap(v.trainIdx);
  out[2] = Rcpp::wrap(v.imgIdx);
  out[3] = Rcpp::wrap((double)v.distance);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::DMatch> as_vec_DMatch(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::DMatch>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::DMatch> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_DMatch(L[i]));
  return out;
}

inline SEXP wrap_vec_DMatch(const std::vector<cv::DMatch>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_DMatch(v[i]);
  return out;
}

inline std::vector<std::vector<cv::DMatch> > as_vec_DMatch_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::DMatch> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::DMatch> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_DMatch(L[i]));
  return out;
}

inline SEXP wrap_vec_DMatch_list(const std::vector<std::vector<cv::DMatch> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_DMatch(v[i]);
  return out;
}

// ---- cv::Filter2DParams  (7 字段)
inline cv::Filter2DParams as_Filter2DParams(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::Filter2DParams>(x);
  cv::Filter2DParams v;
  SEXP t;
  if (given(t = field(x, "anchorX"))) v.anchorX = Rcpp::as<int>(t);
  if (given(t = field(x, "anchorY"))) v.anchorY = Rcpp::as<int>(t);
  if (given(t = field(x, "borderType"))) v.borderType = Rcpp::as<int>(t);
  if (given(t = field(x, "borderValue"))) v.borderValue = ropecv::as_scalar(t);
  if (given(t = field(x, "ddepth"))) v.ddepth = Rcpp::as<int>(t);
  if (given(t = field(x, "scale"))) v.scale = Rcpp::as<double>(t);
  if (given(t = field(x, "shift"))) v.shift = Rcpp::as<double>(t);
  static const char* ok[] = {"anchorX", "anchorY", "borderType", "borderValue", "ddepth", "scale", "shift"};
  check_names(x, "cv::Filter2DParams", ok, 7);
  return v;
}

inline SEXP wrap_Filter2DParams(const cv::Filter2DParams& v) {
  static const char* nm[] = {"anchorX", "anchorY", "borderType", "borderValue", "ddepth", "scale", "shift"};
  Rcpp::List out(7);
  Rcpp::CharacterVector names(7);
  for (int i = 0; i < 7; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.anchorX);
  out[1] = Rcpp::wrap(v.anchorY);
  out[2] = Rcpp::wrap(v.borderType);
  out[3] = ropecv::wrap_scalar(v.borderValue);
  out[4] = Rcpp::wrap(v.ddepth);
  out[5] = Rcpp::wrap(v.scale);
  out[6] = Rcpp::wrap(v.shift);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::Filter2DParams> as_vec_Filter2DParams(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::Filter2DParams>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::Filter2DParams> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_Filter2DParams(L[i]));
  return out;
}

inline SEXP wrap_vec_Filter2DParams(const std::vector<cv::Filter2DParams>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_Filter2DParams(v[i]);
  return out;
}

inline std::vector<std::vector<cv::Filter2DParams> > as_vec_Filter2DParams_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::Filter2DParams> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::Filter2DParams> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_Filter2DParams(L[i]));
  return out;
}

inline SEXP wrap_vec_Filter2DParams_list(const std::vector<std::vector<cv::Filter2DParams> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_Filter2DParams(v[i]);
  return out;
}

// ---- cv::QRCodeDetectorAruco::Params  (7 字段)
inline cv::QRCodeDetectorAruco::Params as_QRCodeDetectorAruco_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::QRCodeDetectorAruco::Params>(x);
  cv::QRCodeDetectorAruco::Params v;
  SEXP t;
  if (given(t = field(x, "minModuleSizeInPyramid"))) v.minModuleSizeInPyramid = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxRotation"))) v.maxRotation = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxModuleSizeMismatch"))) v.maxModuleSizeMismatch = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxTimingPatternMismatch"))) v.maxTimingPatternMismatch = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxPenalties"))) v.maxPenalties = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxColorsMismatch"))) v.maxColorsMismatch = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "scaleTimingPatternScore"))) v.scaleTimingPatternScore = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"minModuleSizeInPyramid", "maxRotation", "maxModuleSizeMismatch", "maxTimingPatternMismatch", "maxPenalties", "maxColorsMismatch", "scaleTimingPatternScore"};
  check_names(x, "cv::QRCodeDetectorAruco::Params", ok, 7);
  return v;
}

inline SEXP wrap_QRCodeDetectorAruco_Params(const cv::QRCodeDetectorAruco::Params& v) {
  static const char* nm[] = {"minModuleSizeInPyramid", "maxRotation", "maxModuleSizeMismatch", "maxTimingPatternMismatch", "maxPenalties", "maxColorsMismatch", "scaleTimingPatternScore"};
  Rcpp::List out(7);
  Rcpp::CharacterVector names(7);
  for (int i = 0; i < 7; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((double)v.minModuleSizeInPyramid);
  out[1] = Rcpp::wrap((double)v.maxRotation);
  out[2] = Rcpp::wrap((double)v.maxModuleSizeMismatch);
  out[3] = Rcpp::wrap((double)v.maxTimingPatternMismatch);
  out[4] = Rcpp::wrap((double)v.maxPenalties);
  out[5] = Rcpp::wrap((double)v.maxColorsMismatch);
  out[6] = Rcpp::wrap((double)v.scaleTimingPatternScore);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::QRCodeDetectorAruco::Params> as_vec_QRCodeDetectorAruco_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::QRCodeDetectorAruco::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::QRCodeDetectorAruco::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_QRCodeDetectorAruco_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_QRCodeDetectorAruco_Params(const std::vector<cv::QRCodeDetectorAruco::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_QRCodeDetectorAruco_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::QRCodeDetectorAruco::Params> > as_vec_QRCodeDetectorAruco_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::QRCodeDetectorAruco::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::QRCodeDetectorAruco::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_QRCodeDetectorAruco_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_QRCodeDetectorAruco_Params_list(const std::vector<std::vector<cv::QRCodeDetectorAruco::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_QRCodeDetectorAruco_Params(v[i]);
  return out;
}

// ---- cv::QRCodeEncoder::Params  (4 字段)
inline cv::QRCodeEncoder::Params as_QRCodeEncoder_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::QRCodeEncoder::Params>(x);
  cv::QRCodeEncoder::Params v;
  SEXP t;
  if (given(t = field(x, "version"))) v.version = Rcpp::as<int>(t);
  if (given(t = field(x, "correction_level"))) v.correction_level = (cv::QRCodeEncoder::CorrectionLevel)Rcpp::as<int>(t);
  if (given(t = field(x, "mode"))) v.mode = (cv::QRCodeEncoder::EncodeMode)Rcpp::as<int>(t);
  if (given(t = field(x, "structure_number"))) v.structure_number = Rcpp::as<int>(t);
  static const char* ok[] = {"version", "correction_level", "mode", "structure_number"};
  check_names(x, "cv::QRCodeEncoder::Params", ok, 4);
  return v;
}

inline SEXP wrap_QRCodeEncoder_Params(const cv::QRCodeEncoder::Params& v) {
  static const char* nm[] = {"version", "correction_level", "mode", "structure_number"};
  Rcpp::List out(4);
  Rcpp::CharacterVector names(4);
  for (int i = 0; i < 4; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.version);
  out[1] = Rcpp::wrap((int)v.correction_level);
  out[2] = Rcpp::wrap((int)v.mode);
  out[3] = Rcpp::wrap(v.structure_number);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::QRCodeEncoder::Params> as_vec_QRCodeEncoder_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::QRCodeEncoder::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::QRCodeEncoder::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_QRCodeEncoder_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_QRCodeEncoder_Params(const std::vector<cv::QRCodeEncoder::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_QRCodeEncoder_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::QRCodeEncoder::Params> > as_vec_QRCodeEncoder_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::QRCodeEncoder::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::QRCodeEncoder::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_QRCodeEncoder_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_QRCodeEncoder_Params_list(const std::vector<std::vector<cv::QRCodeEncoder::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_QRCodeEncoder_Params(v[i]);
  return out;
}

// ---- cv::SimpleBlobDetector::Params  (20 字段)
inline cv::SimpleBlobDetector::Params as_SimpleBlobDetector_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::SimpleBlobDetector::Params>(x);
  cv::SimpleBlobDetector::Params v;
  SEXP t;
  if (given(t = field(x, "thresholdStep"))) v.thresholdStep = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "minThreshold"))) v.minThreshold = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxThreshold"))) v.maxThreshold = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "minRepeatability"))) v.minRepeatability = (size_t)Rcpp::as<int>(t);
  if (given(t = field(x, "minDistBetweenBlobs"))) v.minDistBetweenBlobs = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "filterByColor"))) v.filterByColor = Rcpp::as<bool>(t);
  if (given(t = field(x, "blobColor"))) v.blobColor = (uchar)Rcpp::as<int>(t);
  if (given(t = field(x, "filterByArea"))) v.filterByArea = Rcpp::as<bool>(t);
  if (given(t = field(x, "minArea"))) v.minArea = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxArea"))) v.maxArea = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "filterByCircularity"))) v.filterByCircularity = Rcpp::as<bool>(t);
  if (given(t = field(x, "minCircularity"))) v.minCircularity = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxCircularity"))) v.maxCircularity = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "filterByInertia"))) v.filterByInertia = Rcpp::as<bool>(t);
  if (given(t = field(x, "minInertiaRatio"))) v.minInertiaRatio = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxInertiaRatio"))) v.maxInertiaRatio = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "filterByConvexity"))) v.filterByConvexity = Rcpp::as<bool>(t);
  if (given(t = field(x, "minConvexity"))) v.minConvexity = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxConvexity"))) v.maxConvexity = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "collectContours"))) v.collectContours = Rcpp::as<bool>(t);
  static const char* ok[] = {"thresholdStep", "minThreshold", "maxThreshold", "minRepeatability", "minDistBetweenBlobs", "filterByColor", "blobColor", "filterByArea", "minArea", "maxArea", "filterByCircularity", "minCircularity", "maxCircularity", "filterByInertia", "minInertiaRatio", "maxInertiaRatio", "filterByConvexity", "minConvexity", "maxConvexity", "collectContours"};
  check_names(x, "cv::SimpleBlobDetector::Params", ok, 20);
  return v;
}

inline SEXP wrap_SimpleBlobDetector_Params(const cv::SimpleBlobDetector::Params& v) {
  static const char* nm[] = {"thresholdStep", "minThreshold", "maxThreshold", "minRepeatability", "minDistBetweenBlobs", "filterByColor", "blobColor", "filterByArea", "minArea", "maxArea", "filterByCircularity", "minCircularity", "maxCircularity", "filterByInertia", "minInertiaRatio", "maxInertiaRatio", "filterByConvexity", "minConvexity", "maxConvexity", "collectContours"};
  Rcpp::List out(20);
  Rcpp::CharacterVector names(20);
  for (int i = 0; i < 20; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((double)v.thresholdStep);
  out[1] = Rcpp::wrap((double)v.minThreshold);
  out[2] = Rcpp::wrap((double)v.maxThreshold);
  out[3] = Rcpp::wrap((double)v.minRepeatability);
  out[4] = Rcpp::wrap((double)v.minDistBetweenBlobs);
  out[5] = Rcpp::wrap(v.filterByColor);
  out[6] = Rcpp::wrap((int)v.blobColor);
  out[7] = Rcpp::wrap(v.filterByArea);
  out[8] = Rcpp::wrap((double)v.minArea);
  out[9] = Rcpp::wrap((double)v.maxArea);
  out[10] = Rcpp::wrap(v.filterByCircularity);
  out[11] = Rcpp::wrap((double)v.minCircularity);
  out[12] = Rcpp::wrap((double)v.maxCircularity);
  out[13] = Rcpp::wrap(v.filterByInertia);
  out[14] = Rcpp::wrap((double)v.minInertiaRatio);
  out[15] = Rcpp::wrap((double)v.maxInertiaRatio);
  out[16] = Rcpp::wrap(v.filterByConvexity);
  out[17] = Rcpp::wrap((double)v.minConvexity);
  out[18] = Rcpp::wrap((double)v.maxConvexity);
  out[19] = Rcpp::wrap(v.collectContours);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::SimpleBlobDetector::Params> as_vec_SimpleBlobDetector_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::SimpleBlobDetector::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::SimpleBlobDetector::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_SimpleBlobDetector_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_SimpleBlobDetector_Params(const std::vector<cv::SimpleBlobDetector::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_SimpleBlobDetector_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::SimpleBlobDetector::Params> > as_vec_SimpleBlobDetector_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::SimpleBlobDetector::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::SimpleBlobDetector::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_SimpleBlobDetector_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_SimpleBlobDetector_Params_list(const std::vector<std::vector<cv::SimpleBlobDetector::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_SimpleBlobDetector_Params(v[i]);
  return out;
}

// ---- cv::TrackerDaSiamRPN::Params  (5 字段)
inline cv::TrackerDaSiamRPN::Params as_TrackerDaSiamRPN_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::TrackerDaSiamRPN::Params>(x);
  cv::TrackerDaSiamRPN::Params v;
  SEXP t;
  if (given(t = field(x, "model"))) v.model = Rcpp::as<std::string>(t);
  if (given(t = field(x, "kernel_cls1"))) v.kernel_cls1 = Rcpp::as<std::string>(t);
  if (given(t = field(x, "kernel_r1"))) v.kernel_r1 = Rcpp::as<std::string>(t);
  if (given(t = field(x, "backend"))) v.backend = Rcpp::as<int>(t);
  if (given(t = field(x, "target"))) v.target = Rcpp::as<int>(t);
  static const char* ok[] = {"model", "kernel_cls1", "kernel_r1", "backend", "target"};
  check_names(x, "cv::TrackerDaSiamRPN::Params", ok, 5);
  return v;
}

inline SEXP wrap_TrackerDaSiamRPN_Params(const cv::TrackerDaSiamRPN::Params& v) {
  static const char* nm[] = {"model", "kernel_cls1", "kernel_r1", "backend", "target"};
  Rcpp::List out(5);
  Rcpp::CharacterVector names(5);
  for (int i = 0; i < 5; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.model);
  out[1] = Rcpp::wrap(v.kernel_cls1);
  out[2] = Rcpp::wrap(v.kernel_r1);
  out[3] = Rcpp::wrap(v.backend);
  out[4] = Rcpp::wrap(v.target);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::TrackerDaSiamRPN::Params> as_vec_TrackerDaSiamRPN_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::TrackerDaSiamRPN::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::TrackerDaSiamRPN::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_TrackerDaSiamRPN_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerDaSiamRPN_Params(const std::vector<cv::TrackerDaSiamRPN::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_TrackerDaSiamRPN_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::TrackerDaSiamRPN::Params> > as_vec_TrackerDaSiamRPN_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::TrackerDaSiamRPN::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::TrackerDaSiamRPN::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_TrackerDaSiamRPN_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerDaSiamRPN_Params_list(const std::vector<std::vector<cv::TrackerDaSiamRPN::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_TrackerDaSiamRPN_Params(v[i]);
  return out;
}

// ---- cv::TrackerMIL::Params  (7 字段)
inline cv::TrackerMIL::Params as_TrackerMIL_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::TrackerMIL::Params>(x);
  cv::TrackerMIL::Params v;
  SEXP t;
  if (given(t = field(x, "samplerInitInRadius"))) v.samplerInitInRadius = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "samplerInitMaxNegNum"))) v.samplerInitMaxNegNum = Rcpp::as<int>(t);
  if (given(t = field(x, "samplerSearchWinSize"))) v.samplerSearchWinSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "samplerTrackInRadius"))) v.samplerTrackInRadius = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "samplerTrackMaxPosNum"))) v.samplerTrackMaxPosNum = Rcpp::as<int>(t);
  if (given(t = field(x, "samplerTrackMaxNegNum"))) v.samplerTrackMaxNegNum = Rcpp::as<int>(t);
  if (given(t = field(x, "featureSetNumFeatures"))) v.featureSetNumFeatures = Rcpp::as<int>(t);
  static const char* ok[] = {"samplerInitInRadius", "samplerInitMaxNegNum", "samplerSearchWinSize", "samplerTrackInRadius", "samplerTrackMaxPosNum", "samplerTrackMaxNegNum", "featureSetNumFeatures"};
  check_names(x, "cv::TrackerMIL::Params", ok, 7);
  return v;
}

inline SEXP wrap_TrackerMIL_Params(const cv::TrackerMIL::Params& v) {
  static const char* nm[] = {"samplerInitInRadius", "samplerInitMaxNegNum", "samplerSearchWinSize", "samplerTrackInRadius", "samplerTrackMaxPosNum", "samplerTrackMaxNegNum", "featureSetNumFeatures"};
  Rcpp::List out(7);
  Rcpp::CharacterVector names(7);
  for (int i = 0; i < 7; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((double)v.samplerInitInRadius);
  out[1] = Rcpp::wrap(v.samplerInitMaxNegNum);
  out[2] = Rcpp::wrap((double)v.samplerSearchWinSize);
  out[3] = Rcpp::wrap((double)v.samplerTrackInRadius);
  out[4] = Rcpp::wrap(v.samplerTrackMaxPosNum);
  out[5] = Rcpp::wrap(v.samplerTrackMaxNegNum);
  out[6] = Rcpp::wrap(v.featureSetNumFeatures);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::TrackerMIL::Params> as_vec_TrackerMIL_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::TrackerMIL::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::TrackerMIL::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_TrackerMIL_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerMIL_Params(const std::vector<cv::TrackerMIL::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_TrackerMIL_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::TrackerMIL::Params> > as_vec_TrackerMIL_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::TrackerMIL::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::TrackerMIL::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_TrackerMIL_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerMIL_Params_list(const std::vector<std::vector<cv::TrackerMIL::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_TrackerMIL_Params(v[i]);
  return out;
}

// ---- cv::TrackerNano::Params  (4 字段)
inline cv::TrackerNano::Params as_TrackerNano_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::TrackerNano::Params>(x);
  cv::TrackerNano::Params v;
  SEXP t;
  if (given(t = field(x, "backbone"))) v.backbone = Rcpp::as<std::string>(t);
  if (given(t = field(x, "neckhead"))) v.neckhead = Rcpp::as<std::string>(t);
  if (given(t = field(x, "backend"))) v.backend = Rcpp::as<int>(t);
  if (given(t = field(x, "target"))) v.target = Rcpp::as<int>(t);
  static const char* ok[] = {"backbone", "neckhead", "backend", "target"};
  check_names(x, "cv::TrackerNano::Params", ok, 4);
  return v;
}

inline SEXP wrap_TrackerNano_Params(const cv::TrackerNano::Params& v) {
  static const char* nm[] = {"backbone", "neckhead", "backend", "target"};
  Rcpp::List out(4);
  Rcpp::CharacterVector names(4);
  for (int i = 0; i < 4; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.backbone);
  out[1] = Rcpp::wrap(v.neckhead);
  out[2] = Rcpp::wrap(v.backend);
  out[3] = Rcpp::wrap(v.target);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::TrackerNano::Params> as_vec_TrackerNano_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::TrackerNano::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::TrackerNano::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_TrackerNano_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerNano_Params(const std::vector<cv::TrackerNano::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_TrackerNano_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::TrackerNano::Params> > as_vec_TrackerNano_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::TrackerNano::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::TrackerNano::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_TrackerNano_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerNano_Params_list(const std::vector<std::vector<cv::TrackerNano::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_TrackerNano_Params(v[i]);
  return out;
}

// ---- cv::TrackerVit::Params  (6 字段)
inline cv::TrackerVit::Params as_TrackerVit_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::TrackerVit::Params>(x);
  cv::TrackerVit::Params v;
  SEXP t;
  if (given(t = field(x, "net"))) v.net = Rcpp::as<std::string>(t);
  if (given(t = field(x, "backend"))) v.backend = Rcpp::as<int>(t);
  if (given(t = field(x, "target"))) v.target = Rcpp::as<int>(t);
  if (given(t = field(x, "meanvalue"))) v.meanvalue = ropecv::as_scalar(t);
  if (given(t = field(x, "stdvalue"))) v.stdvalue = ropecv::as_scalar(t);
  if (given(t = field(x, "tracking_score_threshold"))) v.tracking_score_threshold = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"net", "backend", "target", "meanvalue", "stdvalue", "tracking_score_threshold"};
  check_names(x, "cv::TrackerVit::Params", ok, 6);
  return v;
}

inline SEXP wrap_TrackerVit_Params(const cv::TrackerVit::Params& v) {
  static const char* nm[] = {"net", "backend", "target", "meanvalue", "stdvalue", "tracking_score_threshold"};
  Rcpp::List out(6);
  Rcpp::CharacterVector names(6);
  for (int i = 0; i < 6; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.net);
  out[1] = Rcpp::wrap(v.backend);
  out[2] = Rcpp::wrap(v.target);
  out[3] = ropecv::wrap_scalar(v.meanvalue);
  out[4] = ropecv::wrap_scalar(v.stdvalue);
  out[5] = Rcpp::wrap((double)v.tracking_score_threshold);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::TrackerVit::Params> as_vec_TrackerVit_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::TrackerVit::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::TrackerVit::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_TrackerVit_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerVit_Params(const std::vector<cv::TrackerVit::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_TrackerVit_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::TrackerVit::Params> > as_vec_TrackerVit_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::TrackerVit::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::TrackerVit::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_TrackerVit_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_TrackerVit_Params_list(const std::vector<std::vector<cv::TrackerVit::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_TrackerVit_Params(v[i]);
  return out;
}

// ---- cv::UsacParams  (13 字段)
inline cv::UsacParams as_UsacParams(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::UsacParams>(x);
  cv::UsacParams v;
  SEXP t;
  if (given(t = field(x, "confidence"))) v.confidence = Rcpp::as<double>(t);
  if (given(t = field(x, "isParallel"))) v.isParallel = Rcpp::as<bool>(t);
  if (given(t = field(x, "loIterations"))) v.loIterations = Rcpp::as<int>(t);
  if (given(t = field(x, "loMethod"))) v.loMethod = (cv::LocalOptimMethod)Rcpp::as<int>(t);
  if (given(t = field(x, "loSampleSize"))) v.loSampleSize = Rcpp::as<int>(t);
  if (given(t = field(x, "maxIterations"))) v.maxIterations = Rcpp::as<int>(t);
  if (given(t = field(x, "neighborsSearch"))) v.neighborsSearch = (cv::NeighborSearchMethod)Rcpp::as<int>(t);
  if (given(t = field(x, "randomGeneratorState"))) v.randomGeneratorState = Rcpp::as<int>(t);
  if (given(t = field(x, "sampler"))) v.sampler = (cv::SamplingMethod)Rcpp::as<int>(t);
  if (given(t = field(x, "score"))) v.score = (cv::ScoreMethod)Rcpp::as<int>(t);
  if (given(t = field(x, "threshold"))) v.threshold = Rcpp::as<double>(t);
  if (given(t = field(x, "final_polisher"))) v.final_polisher = (cv::PolishingMethod)Rcpp::as<int>(t);
  if (given(t = field(x, "final_polisher_iterations"))) v.final_polisher_iterations = Rcpp::as<int>(t);
  static const char* ok[] = {"confidence", "isParallel", "loIterations", "loMethod", "loSampleSize", "maxIterations", "neighborsSearch", "randomGeneratorState", "sampler", "score", "threshold", "final_polisher", "final_polisher_iterations"};
  check_names(x, "cv::UsacParams", ok, 13);
  return v;
}

inline SEXP wrap_UsacParams(const cv::UsacParams& v) {
  static const char* nm[] = {"confidence", "isParallel", "loIterations", "loMethod", "loSampleSize", "maxIterations", "neighborsSearch", "randomGeneratorState", "sampler", "score", "threshold", "final_polisher", "final_polisher_iterations"};
  Rcpp::List out(13);
  Rcpp::CharacterVector names(13);
  for (int i = 0; i < 13; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.confidence);
  out[1] = Rcpp::wrap(v.isParallel);
  out[2] = Rcpp::wrap(v.loIterations);
  out[3] = Rcpp::wrap((int)v.loMethod);
  out[4] = Rcpp::wrap(v.loSampleSize);
  out[5] = Rcpp::wrap(v.maxIterations);
  out[6] = Rcpp::wrap((int)v.neighborsSearch);
  out[7] = Rcpp::wrap(v.randomGeneratorState);
  out[8] = Rcpp::wrap((int)v.sampler);
  out[9] = Rcpp::wrap((int)v.score);
  out[10] = Rcpp::wrap(v.threshold);
  out[11] = Rcpp::wrap((int)v.final_polisher);
  out[12] = Rcpp::wrap(v.final_polisher_iterations);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::UsacParams> as_vec_UsacParams(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::UsacParams>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::UsacParams> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_UsacParams(L[i]));
  return out;
}

inline SEXP wrap_vec_UsacParams(const std::vector<cv::UsacParams>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_UsacParams(v[i]);
  return out;
}

inline std::vector<std::vector<cv::UsacParams> > as_vec_UsacParams_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::UsacParams> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::UsacParams> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_UsacParams(L[i]));
  return out;
}

inline SEXP wrap_vec_UsacParams_list(const std::vector<std::vector<cv::UsacParams> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_UsacParams(v[i]);
  return out;
}

// ---- cv::aruco::CharucoParameters  (4 字段)
inline cv::aruco::CharucoParameters as_aruco_CharucoParameters(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::aruco::CharucoParameters>(x);
  cv::aruco::CharucoParameters v;
  SEXP t;
  if (given(t = field(x, "cameraMatrix"))) v.cameraMatrix = *ropecv::mat_ptr(t);
  if (given(t = field(x, "distCoeffs"))) v.distCoeffs = *ropecv::mat_ptr(t);
  if (given(t = field(x, "minMarkers"))) v.minMarkers = Rcpp::as<int>(t);
  if (given(t = field(x, "tryRefineMarkers"))) v.tryRefineMarkers = Rcpp::as<bool>(t);
  static const char* ok[] = {"cameraMatrix", "distCoeffs", "minMarkers", "tryRefineMarkers"};
  check_names(x, "cv::aruco::CharucoParameters", ok, 4);
  return v;
}

inline SEXP wrap_aruco_CharucoParameters(const cv::aruco::CharucoParameters& v) {
  static const char* nm[] = {"cameraMatrix", "distCoeffs", "minMarkers", "tryRefineMarkers"};
  Rcpp::List out(4);
  Rcpp::CharacterVector names(4);
  for (int i = 0; i < 4; ++i) names[i] = nm[i];
  out[0] = ropecv::wrap_mat(v.cameraMatrix);
  out[1] = ropecv::wrap_mat(v.distCoeffs);
  out[2] = Rcpp::wrap(v.minMarkers);
  out[3] = Rcpp::wrap(v.tryRefineMarkers);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::aruco::CharucoParameters> as_vec_aruco_CharucoParameters(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::aruco::CharucoParameters>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::aruco::CharucoParameters> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_aruco_CharucoParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_aruco_CharucoParameters(const std::vector<cv::aruco::CharucoParameters>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_aruco_CharucoParameters(v[i]);
  return out;
}

inline std::vector<std::vector<cv::aruco::CharucoParameters> > as_vec_aruco_CharucoParameters_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::aruco::CharucoParameters> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::aruco::CharucoParameters> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_aruco_CharucoParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_aruco_CharucoParameters_list(const std::vector<std::vector<cv::aruco::CharucoParameters> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_aruco_CharucoParameters(v[i]);
  return out;
}

// ---- cv::aruco::DetectorParameters  (34 字段)
inline cv::aruco::DetectorParameters as_aruco_DetectorParameters(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::aruco::DetectorParameters>(x);
  cv::aruco::DetectorParameters v;
  SEXP t;
  if (given(t = field(x, "adaptiveThreshWinSizeMin"))) v.adaptiveThreshWinSizeMin = Rcpp::as<int>(t);
  if (given(t = field(x, "adaptiveThreshWinSizeMax"))) v.adaptiveThreshWinSizeMax = Rcpp::as<int>(t);
  if (given(t = field(x, "adaptiveThreshWinSizeStep"))) v.adaptiveThreshWinSizeStep = Rcpp::as<int>(t);
  if (given(t = field(x, "adaptiveThreshConstant"))) v.adaptiveThreshConstant = Rcpp::as<double>(t);
  if (given(t = field(x, "minMarkerPerimeterRate"))) v.minMarkerPerimeterRate = Rcpp::as<double>(t);
  if (given(t = field(x, "maxMarkerPerimeterRate"))) v.maxMarkerPerimeterRate = Rcpp::as<double>(t);
  if (given(t = field(x, "polygonalApproxAccuracyRate"))) v.polygonalApproxAccuracyRate = Rcpp::as<double>(t);
  if (given(t = field(x, "minCornerDistanceRate"))) v.minCornerDistanceRate = Rcpp::as<double>(t);
  if (given(t = field(x, "minDistanceToBorder"))) v.minDistanceToBorder = Rcpp::as<int>(t);
  if (given(t = field(x, "minMarkerDistanceRate"))) v.minMarkerDistanceRate = Rcpp::as<double>(t);
  if (given(t = field(x, "minGroupDistance"))) v.minGroupDistance = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "cornerRefinementMethod"))) v.cornerRefinementMethod = Rcpp::as<int>(t);
  if (given(t = field(x, "cornerRefinementWinSize"))) v.cornerRefinementWinSize = Rcpp::as<int>(t);
  if (given(t = field(x, "relativeCornerRefinmentWinSize"))) v.relativeCornerRefinmentWinSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "cornerRefinementMaxIterations"))) v.cornerRefinementMaxIterations = Rcpp::as<int>(t);
  if (given(t = field(x, "cornerRefinementMinAccuracy"))) v.cornerRefinementMinAccuracy = Rcpp::as<double>(t);
  if (given(t = field(x, "markerBorderBits"))) v.markerBorderBits = Rcpp::as<int>(t);
  if (given(t = field(x, "perspectiveRemovePixelPerCell"))) v.perspectiveRemovePixelPerCell = Rcpp::as<int>(t);
  if (given(t = field(x, "perspectiveRemoveIgnoredMarginPerCell"))) v.perspectiveRemoveIgnoredMarginPerCell = Rcpp::as<double>(t);
  if (given(t = field(x, "maxErroneousBitsInBorderRate"))) v.maxErroneousBitsInBorderRate = Rcpp::as<double>(t);
  if (given(t = field(x, "minOtsuStdDev"))) v.minOtsuStdDev = Rcpp::as<double>(t);
  if (given(t = field(x, "errorCorrectionRate"))) v.errorCorrectionRate = Rcpp::as<double>(t);
  if (given(t = field(x, "aprilTagQuadDecimate"))) v.aprilTagQuadDecimate = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "aprilTagQuadSigma"))) v.aprilTagQuadSigma = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "aprilTagMinClusterPixels"))) v.aprilTagMinClusterPixels = Rcpp::as<int>(t);
  if (given(t = field(x, "aprilTagMaxNmaxima"))) v.aprilTagMaxNmaxima = Rcpp::as<int>(t);
  if (given(t = field(x, "aprilTagCriticalRad"))) v.aprilTagCriticalRad = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "aprilTagMaxLineFitMse"))) v.aprilTagMaxLineFitMse = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "aprilTagMinWhiteBlackDiff"))) v.aprilTagMinWhiteBlackDiff = Rcpp::as<int>(t);
  if (given(t = field(x, "aprilTagDeglitch"))) v.aprilTagDeglitch = Rcpp::as<int>(t);
  if (given(t = field(x, "detectInvertedMarker"))) v.detectInvertedMarker = Rcpp::as<bool>(t);
  if (given(t = field(x, "useAruco3Detection"))) v.useAruco3Detection = Rcpp::as<bool>(t);
  if (given(t = field(x, "minSideLengthCanonicalImg"))) v.minSideLengthCanonicalImg = Rcpp::as<int>(t);
  if (given(t = field(x, "minMarkerLengthRatioOriginalImg"))) v.minMarkerLengthRatioOriginalImg = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"adaptiveThreshWinSizeMin", "adaptiveThreshWinSizeMax", "adaptiveThreshWinSizeStep", "adaptiveThreshConstant", "minMarkerPerimeterRate", "maxMarkerPerimeterRate", "polygonalApproxAccuracyRate", "minCornerDistanceRate", "minDistanceToBorder", "minMarkerDistanceRate", "minGroupDistance", "cornerRefinementMethod", "cornerRefinementWinSize", "relativeCornerRefinmentWinSize", "cornerRefinementMaxIterations", "cornerRefinementMinAccuracy", "markerBorderBits", "perspectiveRemovePixelPerCell", "perspectiveRemoveIgnoredMarginPerCell", "maxErroneousBitsInBorderRate", "minOtsuStdDev", "errorCorrectionRate", "aprilTagQuadDecimate", "aprilTagQuadSigma", "aprilTagMinClusterPixels", "aprilTagMaxNmaxima", "aprilTagCriticalRad", "aprilTagMaxLineFitMse", "aprilTagMinWhiteBlackDiff", "aprilTagDeglitch", "detectInvertedMarker", "useAruco3Detection", "minSideLengthCanonicalImg", "minMarkerLengthRatioOriginalImg"};
  check_names(x, "cv::aruco::DetectorParameters", ok, 34);
  return v;
}

inline SEXP wrap_aruco_DetectorParameters(const cv::aruco::DetectorParameters& v) {
  static const char* nm[] = {"adaptiveThreshWinSizeMin", "adaptiveThreshWinSizeMax", "adaptiveThreshWinSizeStep", "adaptiveThreshConstant", "minMarkerPerimeterRate", "maxMarkerPerimeterRate", "polygonalApproxAccuracyRate", "minCornerDistanceRate", "minDistanceToBorder", "minMarkerDistanceRate", "minGroupDistance", "cornerRefinementMethod", "cornerRefinementWinSize", "relativeCornerRefinmentWinSize", "cornerRefinementMaxIterations", "cornerRefinementMinAccuracy", "markerBorderBits", "perspectiveRemovePixelPerCell", "perspectiveRemoveIgnoredMarginPerCell", "maxErroneousBitsInBorderRate", "minOtsuStdDev", "errorCorrectionRate", "aprilTagQuadDecimate", "aprilTagQuadSigma", "aprilTagMinClusterPixels", "aprilTagMaxNmaxima", "aprilTagCriticalRad", "aprilTagMaxLineFitMse", "aprilTagMinWhiteBlackDiff", "aprilTagDeglitch", "detectInvertedMarker", "useAruco3Detection", "minSideLengthCanonicalImg", "minMarkerLengthRatioOriginalImg"};
  Rcpp::List out(34);
  Rcpp::CharacterVector names(34);
  for (int i = 0; i < 34; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.adaptiveThreshWinSizeMin);
  out[1] = Rcpp::wrap(v.adaptiveThreshWinSizeMax);
  out[2] = Rcpp::wrap(v.adaptiveThreshWinSizeStep);
  out[3] = Rcpp::wrap(v.adaptiveThreshConstant);
  out[4] = Rcpp::wrap(v.minMarkerPerimeterRate);
  out[5] = Rcpp::wrap(v.maxMarkerPerimeterRate);
  out[6] = Rcpp::wrap(v.polygonalApproxAccuracyRate);
  out[7] = Rcpp::wrap(v.minCornerDistanceRate);
  out[8] = Rcpp::wrap(v.minDistanceToBorder);
  out[9] = Rcpp::wrap(v.minMarkerDistanceRate);
  out[10] = Rcpp::wrap((double)v.minGroupDistance);
  out[11] = Rcpp::wrap(v.cornerRefinementMethod);
  out[12] = Rcpp::wrap(v.cornerRefinementWinSize);
  out[13] = Rcpp::wrap((double)v.relativeCornerRefinmentWinSize);
  out[14] = Rcpp::wrap(v.cornerRefinementMaxIterations);
  out[15] = Rcpp::wrap(v.cornerRefinementMinAccuracy);
  out[16] = Rcpp::wrap(v.markerBorderBits);
  out[17] = Rcpp::wrap(v.perspectiveRemovePixelPerCell);
  out[18] = Rcpp::wrap(v.perspectiveRemoveIgnoredMarginPerCell);
  out[19] = Rcpp::wrap(v.maxErroneousBitsInBorderRate);
  out[20] = Rcpp::wrap(v.minOtsuStdDev);
  out[21] = Rcpp::wrap(v.errorCorrectionRate);
  out[22] = Rcpp::wrap((double)v.aprilTagQuadDecimate);
  out[23] = Rcpp::wrap((double)v.aprilTagQuadSigma);
  out[24] = Rcpp::wrap(v.aprilTagMinClusterPixels);
  out[25] = Rcpp::wrap(v.aprilTagMaxNmaxima);
  out[26] = Rcpp::wrap((double)v.aprilTagCriticalRad);
  out[27] = Rcpp::wrap((double)v.aprilTagMaxLineFitMse);
  out[28] = Rcpp::wrap(v.aprilTagMinWhiteBlackDiff);
  out[29] = Rcpp::wrap(v.aprilTagDeglitch);
  out[30] = Rcpp::wrap(v.detectInvertedMarker);
  out[31] = Rcpp::wrap(v.useAruco3Detection);
  out[32] = Rcpp::wrap(v.minSideLengthCanonicalImg);
  out[33] = Rcpp::wrap((double)v.minMarkerLengthRatioOriginalImg);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::aruco::DetectorParameters> as_vec_aruco_DetectorParameters(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::aruco::DetectorParameters>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::aruco::DetectorParameters> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_aruco_DetectorParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_aruco_DetectorParameters(const std::vector<cv::aruco::DetectorParameters>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_aruco_DetectorParameters(v[i]);
  return out;
}

inline std::vector<std::vector<cv::aruco::DetectorParameters> > as_vec_aruco_DetectorParameters_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::aruco::DetectorParameters> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::aruco::DetectorParameters> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_aruco_DetectorParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_aruco_DetectorParameters_list(const std::vector<std::vector<cv::aruco::DetectorParameters> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_aruco_DetectorParameters(v[i]);
  return out;
}

// ---- cv::aruco::RefineParameters  (3 字段)
inline cv::aruco::RefineParameters as_aruco_RefineParameters(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::aruco::RefineParameters>(x);
  cv::aruco::RefineParameters v;
  SEXP t;
  if (given(t = field(x, "minRepDistance"))) v.minRepDistance = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "errorCorrectionRate"))) v.errorCorrectionRate = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "checkAllOrders"))) v.checkAllOrders = Rcpp::as<bool>(t);
  static const char* ok[] = {"minRepDistance", "errorCorrectionRate", "checkAllOrders"};
  check_names(x, "cv::aruco::RefineParameters", ok, 3);
  return v;
}

inline SEXP wrap_aruco_RefineParameters(const cv::aruco::RefineParameters& v) {
  static const char* nm[] = {"minRepDistance", "errorCorrectionRate", "checkAllOrders"};
  Rcpp::List out(3);
  Rcpp::CharacterVector names(3);
  for (int i = 0; i < 3; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((double)v.minRepDistance);
  out[1] = Rcpp::wrap((double)v.errorCorrectionRate);
  out[2] = Rcpp::wrap(v.checkAllOrders);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::aruco::RefineParameters> as_vec_aruco_RefineParameters(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::aruco::RefineParameters>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::aruco::RefineParameters> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_aruco_RefineParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_aruco_RefineParameters(const std::vector<cv::aruco::RefineParameters>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_aruco_RefineParameters(v[i]);
  return out;
}

inline std::vector<std::vector<cv::aruco::RefineParameters> > as_vec_aruco_RefineParameters_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::aruco::RefineParameters> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::aruco::RefineParameters> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_aruco_RefineParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_aruco_RefineParameters_list(const std::vector<std::vector<cv::aruco::RefineParameters> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_aruco_RefineParameters(v[i]);
  return out;
}

// ---- cv::detail::ImageFeatures  (4 字段)
inline cv::detail::ImageFeatures as_detail_ImageFeatures(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::detail::ImageFeatures>(x);
  cv::detail::ImageFeatures v;
  SEXP t;
  if (given(t = field(x, "img_idx"))) v.img_idx = Rcpp::as<int>(t);
  if (given(t = field(x, "img_size"))) v.img_size = ropecv::as_size(t);
  if (given(t = field(x, "keypoints"))) v.keypoints = ropecv::as_keypoints(t);
  if (given(t = field(x, "descriptors"))) v.descriptors = ropecv::as_umat(t);
  static const char* ok[] = {"img_idx", "img_size", "keypoints", "descriptors"};
  check_names(x, "cv::detail::ImageFeatures", ok, 4);
  return v;
}

inline SEXP wrap_detail_ImageFeatures(const cv::detail::ImageFeatures& v) {
  static const char* nm[] = {"img_idx", "img_size", "keypoints", "descriptors"};
  Rcpp::List out(4);
  Rcpp::CharacterVector names(4);
  for (int i = 0; i < 4; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.img_idx);
  out[1] = ropecv::wrap_size(v.img_size);
  out[2] = ropecv::wrap_keypoints(v.keypoints);
  out[3] = ropecv::wrap_mat(v.descriptors.getMat(cv::ACCESS_READ));
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::detail::ImageFeatures> as_vec_detail_ImageFeatures(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::detail::ImageFeatures>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::detail::ImageFeatures> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_detail_ImageFeatures(L[i]));
  return out;
}

inline SEXP wrap_vec_detail_ImageFeatures(const std::vector<cv::detail::ImageFeatures>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_detail_ImageFeatures(v[i]);
  return out;
}

inline std::vector<std::vector<cv::detail::ImageFeatures> > as_vec_detail_ImageFeatures_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::detail::ImageFeatures> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::detail::ImageFeatures> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_detail_ImageFeatures(L[i]));
  return out;
}

inline SEXP wrap_vec_detail_ImageFeatures_list(const std::vector<std::vector<cv::detail::ImageFeatures> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_detail_ImageFeatures(v[i]);
  return out;
}

// ---- cv::detail::MatchesInfo  (7 字段)
inline cv::detail::MatchesInfo as_detail_MatchesInfo(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::detail::MatchesInfo>(x);
  cv::detail::MatchesInfo v;
  SEXP t;
  if (given(t = field(x, "src_img_idx"))) v.src_img_idx = Rcpp::as<int>(t);
  if (given(t = field(x, "dst_img_idx"))) v.dst_img_idx = Rcpp::as<int>(t);
  if (given(t = field(x, "matches"))) v.matches = ropecv::as_dmatches(t);
  if (given(t = field(x, "inliers_mask"))) v.inliers_mask = ropecv::as_raw_vector(t);
  if (given(t = field(x, "num_inliers"))) v.num_inliers = Rcpp::as<int>(t);
  if (given(t = field(x, "H"))) v.H = *ropecv::mat_ptr(t);
  if (given(t = field(x, "confidence"))) v.confidence = Rcpp::as<double>(t);
  static const char* ok[] = {"src_img_idx", "dst_img_idx", "matches", "inliers_mask", "num_inliers", "H", "confidence"};
  check_names(x, "cv::detail::MatchesInfo", ok, 7);
  return v;
}

inline SEXP wrap_detail_MatchesInfo(const cv::detail::MatchesInfo& v) {
  static const char* nm[] = {"src_img_idx", "dst_img_idx", "matches", "inliers_mask", "num_inliers", "H", "confidence"};
  Rcpp::List out(7);
  Rcpp::CharacterVector names(7);
  for (int i = 0; i < 7; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.src_img_idx);
  out[1] = Rcpp::wrap(v.dst_img_idx);
  out[2] = ropecv::wrap_dmatches(v.matches);
  out[3] = ropecv::wrap_raw_vector(v.inliers_mask);
  out[4] = Rcpp::wrap(v.num_inliers);
  out[5] = ropecv::wrap_mat(v.H);
  out[6] = Rcpp::wrap(v.confidence);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::detail::MatchesInfo> as_vec_detail_MatchesInfo(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::detail::MatchesInfo>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::detail::MatchesInfo> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_detail_MatchesInfo(L[i]));
  return out;
}

inline SEXP wrap_vec_detail_MatchesInfo(const std::vector<cv::detail::MatchesInfo>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_detail_MatchesInfo(v[i]);
  return out;
}

inline std::vector<std::vector<cv::detail::MatchesInfo> > as_vec_detail_MatchesInfo_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::detail::MatchesInfo> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::detail::MatchesInfo> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_detail_MatchesInfo(L[i]));
  return out;
}

inline SEXP wrap_vec_detail_MatchesInfo_list(const std::vector<std::vector<cv::detail::MatchesInfo> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_detail_MatchesInfo(v[i]);
  return out;
}

// ---- cv::kinfu::VolumeParams  (12 字段)
inline cv::kinfu::VolumeParams as_kinfu_VolumeParams(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::kinfu::VolumeParams>(x);
  cv::kinfu::VolumeParams v;
  SEXP t;
  if (given(t = field(x, "kind"))) v.kind = (cv::VolumeType)Rcpp::as<int>(t);
  if (given(t = field(x, "resolutionX"))) v.resolutionX = Rcpp::as<int>(t);
  if (given(t = field(x, "resolutionY"))) v.resolutionY = Rcpp::as<int>(t);
  if (given(t = field(x, "resolutionZ"))) v.resolutionZ = Rcpp::as<int>(t);
  if (given(t = field(x, "unitResolution"))) v.unitResolution = Rcpp::as<int>(t);
  if (given(t = field(x, "volumSize"))) v.volumSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "pose"))) v.pose = ropecv::as_matx<float, 4, 4>(t);
  if (given(t = field(x, "voxelSize"))) v.voxelSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "tsdfTruncDist"))) v.tsdfTruncDist = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxWeight"))) v.maxWeight = Rcpp::as<int>(t);
  if (given(t = field(x, "depthTruncThreshold"))) v.depthTruncThreshold = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "raycastStepFactor"))) v.raycastStepFactor = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"kind", "resolutionX", "resolutionY", "resolutionZ", "unitResolution", "volumSize", "pose", "voxelSize", "tsdfTruncDist", "maxWeight", "depthTruncThreshold", "raycastStepFactor"};
  check_names(x, "cv::kinfu::VolumeParams", ok, 12);
  return v;
}

inline SEXP wrap_kinfu_VolumeParams(const cv::kinfu::VolumeParams& v) {
  static const char* nm[] = {"kind", "resolutionX", "resolutionY", "resolutionZ", "unitResolution", "volumSize", "pose", "voxelSize", "tsdfTruncDist", "maxWeight", "depthTruncThreshold", "raycastStepFactor"};
  Rcpp::List out(12);
  Rcpp::CharacterVector names(12);
  for (int i = 0; i < 12; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((int)v.kind);
  out[1] = Rcpp::wrap(v.resolutionX);
  out[2] = Rcpp::wrap(v.resolutionY);
  out[3] = Rcpp::wrap(v.resolutionZ);
  out[4] = Rcpp::wrap(v.unitResolution);
  out[5] = Rcpp::wrap((double)v.volumSize);
  out[6] = ropecv::wrap_matx<float, 4, 4>(v.pose);
  out[7] = Rcpp::wrap((double)v.voxelSize);
  out[8] = Rcpp::wrap((double)v.tsdfTruncDist);
  out[9] = Rcpp::wrap(v.maxWeight);
  out[10] = Rcpp::wrap((double)v.depthTruncThreshold);
  out[11] = Rcpp::wrap((double)v.raycastStepFactor);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::kinfu::VolumeParams> as_vec_kinfu_VolumeParams(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::kinfu::VolumeParams>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::kinfu::VolumeParams> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_kinfu_VolumeParams(L[i]));
  return out;
}

inline SEXP wrap_vec_kinfu_VolumeParams(const std::vector<cv::kinfu::VolumeParams>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_kinfu_VolumeParams(v[i]);
  return out;
}

inline std::vector<std::vector<cv::kinfu::VolumeParams> > as_vec_kinfu_VolumeParams_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::kinfu::VolumeParams> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::kinfu::VolumeParams> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_kinfu_VolumeParams(L[i]));
  return out;
}

inline SEXP wrap_vec_kinfu_VolumeParams_list(const std::vector<std::vector<cv::kinfu::VolumeParams> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_kinfu_VolumeParams(v[i]);
  return out;
}

// ---- cv::large_kinfu::VolumeParams  (12 字段)
inline cv::large_kinfu::VolumeParams as_large_kinfu_VolumeParams(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::large_kinfu::VolumeParams>(x);
  cv::large_kinfu::VolumeParams v;
  SEXP t;
  if (given(t = field(x, "kind"))) v.kind = (cv::VolumeType)Rcpp::as<int>(t);
  if (given(t = field(x, "resolutionX"))) v.resolutionX = Rcpp::as<int>(t);
  if (given(t = field(x, "resolutionY"))) v.resolutionY = Rcpp::as<int>(t);
  if (given(t = field(x, "resolutionZ"))) v.resolutionZ = Rcpp::as<int>(t);
  if (given(t = field(x, "unitResolution"))) v.unitResolution = Rcpp::as<int>(t);
  if (given(t = field(x, "volumSize"))) v.volumSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "pose"))) v.pose = ropecv::as_matx<float, 4, 4>(t);
  if (given(t = field(x, "voxelSize"))) v.voxelSize = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "tsdfTruncDist"))) v.tsdfTruncDist = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxWeight"))) v.maxWeight = Rcpp::as<int>(t);
  if (given(t = field(x, "depthTruncThreshold"))) v.depthTruncThreshold = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "raycastStepFactor"))) v.raycastStepFactor = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"kind", "resolutionX", "resolutionY", "resolutionZ", "unitResolution", "volumSize", "pose", "voxelSize", "tsdfTruncDist", "maxWeight", "depthTruncThreshold", "raycastStepFactor"};
  check_names(x, "cv::large_kinfu::VolumeParams", ok, 12);
  return v;
}

inline SEXP wrap_large_kinfu_VolumeParams(const cv::large_kinfu::VolumeParams& v) {
  static const char* nm[] = {"kind", "resolutionX", "resolutionY", "resolutionZ", "unitResolution", "volumSize", "pose", "voxelSize", "tsdfTruncDist", "maxWeight", "depthTruncThreshold", "raycastStepFactor"};
  Rcpp::List out(12);
  Rcpp::CharacterVector names(12);
  for (int i = 0; i < 12; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((int)v.kind);
  out[1] = Rcpp::wrap(v.resolutionX);
  out[2] = Rcpp::wrap(v.resolutionY);
  out[3] = Rcpp::wrap(v.resolutionZ);
  out[4] = Rcpp::wrap(v.unitResolution);
  out[5] = Rcpp::wrap((double)v.volumSize);
  out[6] = ropecv::wrap_matx<float, 4, 4>(v.pose);
  out[7] = Rcpp::wrap((double)v.voxelSize);
  out[8] = Rcpp::wrap((double)v.tsdfTruncDist);
  out[9] = Rcpp::wrap(v.maxWeight);
  out[10] = Rcpp::wrap((double)v.depthTruncThreshold);
  out[11] = Rcpp::wrap((double)v.raycastStepFactor);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::large_kinfu::VolumeParams> as_vec_large_kinfu_VolumeParams(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::large_kinfu::VolumeParams>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::large_kinfu::VolumeParams> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_large_kinfu_VolumeParams(L[i]));
  return out;
}

inline SEXP wrap_vec_large_kinfu_VolumeParams(const std::vector<cv::large_kinfu::VolumeParams>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_large_kinfu_VolumeParams(v[i]);
  return out;
}

inline std::vector<std::vector<cv::large_kinfu::VolumeParams> > as_vec_large_kinfu_VolumeParams_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::large_kinfu::VolumeParams> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::large_kinfu::VolumeParams> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_large_kinfu_VolumeParams(L[i]));
  return out;
}

inline SEXP wrap_vec_large_kinfu_VolumeParams_list(const std::vector<std::vector<cv::large_kinfu::VolumeParams> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_large_kinfu_VolumeParams(v[i]);
  return out;
}

// ---- cv::line_descriptor::KeyLine  (16 字段)
inline cv::line_descriptor::KeyLine as_line_descriptor_KeyLine(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::line_descriptor::KeyLine>(x);
  cv::line_descriptor::KeyLine v;
  SEXP t;
  if (given(t = field(x, "angle"))) v.angle = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "class_id"))) v.class_id = Rcpp::as<int>(t);
  if (given(t = field(x, "octave"))) v.octave = Rcpp::as<int>(t);
  if (given(t = field(x, "pt"))) v.pt = ropecv::as_point2f(t);
  if (given(t = field(x, "response"))) v.response = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "size"))) v.size = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "startPointX"))) v.startPointX = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "startPointY"))) v.startPointY = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "endPointX"))) v.endPointX = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "endPointY"))) v.endPointY = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "sPointInOctaveX"))) v.sPointInOctaveX = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "sPointInOctaveY"))) v.sPointInOctaveY = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "ePointInOctaveX"))) v.ePointInOctaveX = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "ePointInOctaveY"))) v.ePointInOctaveY = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "lineLength"))) v.lineLength = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "numOfPixels"))) v.numOfPixels = Rcpp::as<int>(t);
  static const char* ok[] = {"angle", "class_id", "octave", "pt", "response", "size", "startPointX", "startPointY", "endPointX", "endPointY", "sPointInOctaveX", "sPointInOctaveY", "ePointInOctaveX", "ePointInOctaveY", "lineLength", "numOfPixels"};
  check_names(x, "cv::line_descriptor::KeyLine", ok, 16);
  return v;
}

inline SEXP wrap_line_descriptor_KeyLine(const cv::line_descriptor::KeyLine& v) {
  static const char* nm[] = {"angle", "class_id", "octave", "pt", "response", "size", "startPointX", "startPointY", "endPointX", "endPointY", "sPointInOctaveX", "sPointInOctaveY", "ePointInOctaveX", "ePointInOctaveY", "lineLength", "numOfPixels"};
  Rcpp::List out(16);
  Rcpp::CharacterVector names(16);
  for (int i = 0; i < 16; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((double)v.angle);
  out[1] = Rcpp::wrap(v.class_id);
  out[2] = Rcpp::wrap(v.octave);
  out[3] = ropecv::wrap_point2f(v.pt);
  out[4] = Rcpp::wrap((double)v.response);
  out[5] = Rcpp::wrap((double)v.size);
  out[6] = Rcpp::wrap((double)v.startPointX);
  out[7] = Rcpp::wrap((double)v.startPointY);
  out[8] = Rcpp::wrap((double)v.endPointX);
  out[9] = Rcpp::wrap((double)v.endPointY);
  out[10] = Rcpp::wrap((double)v.sPointInOctaveX);
  out[11] = Rcpp::wrap((double)v.sPointInOctaveY);
  out[12] = Rcpp::wrap((double)v.ePointInOctaveX);
  out[13] = Rcpp::wrap((double)v.ePointInOctaveY);
  out[14] = Rcpp::wrap((double)v.lineLength);
  out[15] = Rcpp::wrap(v.numOfPixels);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::line_descriptor::KeyLine> as_vec_line_descriptor_KeyLine(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::line_descriptor::KeyLine>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::line_descriptor::KeyLine> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_line_descriptor_KeyLine(L[i]));
  return out;
}

inline SEXP wrap_vec_line_descriptor_KeyLine(const std::vector<cv::line_descriptor::KeyLine>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_line_descriptor_KeyLine(v[i]);
  return out;
}

inline std::vector<std::vector<cv::line_descriptor::KeyLine> > as_vec_line_descriptor_KeyLine_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::line_descriptor::KeyLine> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::line_descriptor::KeyLine> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_line_descriptor_KeyLine(L[i]));
  return out;
}

inline SEXP wrap_vec_line_descriptor_KeyLine_list(const std::vector<std::vector<cv::line_descriptor::KeyLine> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_line_descriptor_KeyLine(v[i]);
  return out;
}

// ---- cv::line_descriptor::LSDParam  (7 字段)
inline cv::line_descriptor::LSDParam as_line_descriptor_LSDParam(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::line_descriptor::LSDParam>(x);
  cv::line_descriptor::LSDParam v;
  SEXP t;
  if (given(t = field(x, "scale"))) v.scale = Rcpp::as<double>(t);
  if (given(t = field(x, "sigma_scale"))) v.sigma_scale = Rcpp::as<double>(t);
  if (given(t = field(x, "quant"))) v.quant = Rcpp::as<double>(t);
  if (given(t = field(x, "ang_th"))) v.ang_th = Rcpp::as<double>(t);
  if (given(t = field(x, "log_eps"))) v.log_eps = Rcpp::as<double>(t);
  if (given(t = field(x, "density_th"))) v.density_th = Rcpp::as<double>(t);
  if (given(t = field(x, "n_bins"))) v.n_bins = Rcpp::as<int>(t);
  static const char* ok[] = {"scale", "sigma_scale", "quant", "ang_th", "log_eps", "density_th", "n_bins"};
  check_names(x, "cv::line_descriptor::LSDParam", ok, 7);
  return v;
}

inline SEXP wrap_line_descriptor_LSDParam(const cv::line_descriptor::LSDParam& v) {
  static const char* nm[] = {"scale", "sigma_scale", "quant", "ang_th", "log_eps", "density_th", "n_bins"};
  Rcpp::List out(7);
  Rcpp::CharacterVector names(7);
  for (int i = 0; i < 7; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.scale);
  out[1] = Rcpp::wrap(v.sigma_scale);
  out[2] = Rcpp::wrap(v.quant);
  out[3] = Rcpp::wrap(v.ang_th);
  out[4] = Rcpp::wrap(v.log_eps);
  out[5] = Rcpp::wrap(v.density_th);
  out[6] = Rcpp::wrap(v.n_bins);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::line_descriptor::LSDParam> as_vec_line_descriptor_LSDParam(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::line_descriptor::LSDParam>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::line_descriptor::LSDParam> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_line_descriptor_LSDParam(L[i]));
  return out;
}

inline SEXP wrap_vec_line_descriptor_LSDParam(const std::vector<cv::line_descriptor::LSDParam>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_line_descriptor_LSDParam(v[i]);
  return out;
}

inline std::vector<std::vector<cv::line_descriptor::LSDParam> > as_vec_line_descriptor_LSDParam_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::line_descriptor::LSDParam> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::line_descriptor::LSDParam> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_line_descriptor_LSDParam(L[i]));
  return out;
}

inline SEXP wrap_vec_line_descriptor_LSDParam_list(const std::vector<std::vector<cv::line_descriptor::LSDParam> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_line_descriptor_LSDParam(v[i]);
  return out;
}

// ---- cv::linemod::Feature  (3 字段)
inline cv::linemod::Feature as_linemod_Feature(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::linemod::Feature>(x);
  cv::linemod::Feature v;
  SEXP t;
  if (given(t = field(x, "x"))) v.x = Rcpp::as<int>(t);
  if (given(t = field(x, "y"))) v.y = Rcpp::as<int>(t);
  if (given(t = field(x, "label"))) v.label = Rcpp::as<int>(t);
  static const char* ok[] = {"x", "y", "label"};
  check_names(x, "cv::linemod::Feature", ok, 3);
  return v;
}

inline SEXP wrap_linemod_Feature(const cv::linemod::Feature& v) {
  static const char* nm[] = {"x", "y", "label"};
  Rcpp::List out(3);
  Rcpp::CharacterVector names(3);
  for (int i = 0; i < 3; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.x);
  out[1] = Rcpp::wrap(v.y);
  out[2] = Rcpp::wrap(v.label);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::linemod::Feature> as_vec_linemod_Feature(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::linemod::Feature>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::linemod::Feature> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_linemod_Feature(L[i]));
  return out;
}

inline SEXP wrap_vec_linemod_Feature(const std::vector<cv::linemod::Feature>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_linemod_Feature(v[i]);
  return out;
}

inline std::vector<std::vector<cv::linemod::Feature> > as_vec_linemod_Feature_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::linemod::Feature> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::linemod::Feature> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_linemod_Feature(L[i]));
  return out;
}

inline SEXP wrap_vec_linemod_Feature_list(const std::vector<std::vector<cv::linemod::Feature> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_linemod_Feature(v[i]);
  return out;
}

// ---- cv::linemod::Match  (5 字段)
inline cv::linemod::Match as_linemod_Match(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::linemod::Match>(x);
  cv::linemod::Match v;
  SEXP t;
  if (given(t = field(x, "x"))) v.x = Rcpp::as<int>(t);
  if (given(t = field(x, "y"))) v.y = Rcpp::as<int>(t);
  if (given(t = field(x, "similarity"))) v.similarity = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "class_id"))) v.class_id = Rcpp::as<std::string>(t);
  if (given(t = field(x, "template_id"))) v.template_id = Rcpp::as<int>(t);
  static const char* ok[] = {"x", "y", "similarity", "class_id", "template_id"};
  check_names(x, "cv::linemod::Match", ok, 5);
  return v;
}

inline SEXP wrap_linemod_Match(const cv::linemod::Match& v) {
  static const char* nm[] = {"x", "y", "similarity", "class_id", "template_id"};
  Rcpp::List out(5);
  Rcpp::CharacterVector names(5);
  for (int i = 0; i < 5; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.x);
  out[1] = Rcpp::wrap(v.y);
  out[2] = Rcpp::wrap((double)v.similarity);
  out[3] = Rcpp::wrap(std::string(v.class_id));
  out[4] = Rcpp::wrap(v.template_id);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::linemod::Match> as_vec_linemod_Match(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::linemod::Match>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::linemod::Match> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_linemod_Match(L[i]));
  return out;
}

inline SEXP wrap_vec_linemod_Match(const std::vector<cv::linemod::Match>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_linemod_Match(v[i]);
  return out;
}

inline std::vector<std::vector<cv::linemod::Match> > as_vec_linemod_Match_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::linemod::Match> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::linemod::Match> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_linemod_Match(L[i]));
  return out;
}

inline SEXP wrap_vec_linemod_Match_list(const std::vector<std::vector<cv::linemod::Match> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_linemod_Match(v[i]);
  return out;
}

// ---- cv::linemod::Template  (4 字段)
inline cv::linemod::Template as_linemod_Template(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::linemod::Template>(x);
  cv::linemod::Template v;
  SEXP t;
  if (given(t = field(x, "width"))) v.width = Rcpp::as<int>(t);
  if (given(t = field(x, "height"))) v.height = Rcpp::as<int>(t);
  if (given(t = field(x, "pyramid_level"))) v.pyramid_level = Rcpp::as<int>(t);
  if (given(t = field(x, "features"))) v.features = ropecv::as_vec_linemod_Feature(t);
  static const char* ok[] = {"width", "height", "pyramid_level", "features"};
  check_names(x, "cv::linemod::Template", ok, 4);
  return v;
}

inline SEXP wrap_linemod_Template(const cv::linemod::Template& v) {
  static const char* nm[] = {"width", "height", "pyramid_level", "features"};
  Rcpp::List out(4);
  Rcpp::CharacterVector names(4);
  for (int i = 0; i < 4; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.width);
  out[1] = Rcpp::wrap(v.height);
  out[2] = Rcpp::wrap(v.pyramid_level);
  out[3] = ropecv::wrap_vec_linemod_Feature(v.features);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::linemod::Template> as_vec_linemod_Template(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::linemod::Template>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::linemod::Template> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_linemod_Template(L[i]));
  return out;
}

inline SEXP wrap_vec_linemod_Template(const std::vector<cv::linemod::Template>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_linemod_Template(v[i]);
  return out;
}

inline std::vector<std::vector<cv::linemod::Template> > as_vec_linemod_Template_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::linemod::Template> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::linemod::Template> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_linemod_Template(L[i]));
  return out;
}

inline SEXP wrap_vec_linemod_Template_list(const std::vector<std::vector<cv::linemod::Template> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_linemod_Template(v[i]);
  return out;
}

// ---- cv::mcc::DetectorParameters  (18 字段)
inline cv::mcc::DetectorParameters as_mcc_DetectorParameters(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::mcc::DetectorParameters>(x);
  cv::mcc::DetectorParameters v;
  SEXP t;
  if (given(t = field(x, "adaptiveThreshWinSizeMin"))) v.adaptiveThreshWinSizeMin = Rcpp::as<int>(t);
  if (given(t = field(x, "adaptiveThreshWinSizeMax"))) v.adaptiveThreshWinSizeMax = Rcpp::as<int>(t);
  if (given(t = field(x, "adaptiveThreshWinSizeStep"))) v.adaptiveThreshWinSizeStep = Rcpp::as<int>(t);
  if (given(t = field(x, "adaptiveThreshConstant"))) v.adaptiveThreshConstant = Rcpp::as<double>(t);
  if (given(t = field(x, "minContoursAreaRate"))) v.minContoursAreaRate = Rcpp::as<double>(t);
  if (given(t = field(x, "minContoursArea"))) v.minContoursArea = Rcpp::as<double>(t);
  if (given(t = field(x, "confidenceThreshold"))) v.confidenceThreshold = Rcpp::as<double>(t);
  if (given(t = field(x, "minContourSolidity"))) v.minContourSolidity = Rcpp::as<double>(t);
  if (given(t = field(x, "findCandidatesApproxPolyDPEpsMultiplier"))) v.findCandidatesApproxPolyDPEpsMultiplier = Rcpp::as<double>(t);
  if (given(t = field(x, "borderWidth"))) v.borderWidth = Rcpp::as<int>(t);
  if (given(t = field(x, "B0factor"))) v.B0factor = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "maxError"))) v.maxError = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "minContourPointsAllowed"))) v.minContourPointsAllowed = Rcpp::as<int>(t);
  if (given(t = field(x, "minContourLengthAllowed"))) v.minContourLengthAllowed = Rcpp::as<int>(t);
  if (given(t = field(x, "minInterContourDistance"))) v.minInterContourDistance = Rcpp::as<int>(t);
  if (given(t = field(x, "minInterCheckerDistance"))) v.minInterCheckerDistance = Rcpp::as<int>(t);
  if (given(t = field(x, "minImageSize"))) v.minImageSize = Rcpp::as<int>(t);
  if (given(t = field(x, "minGroupSize"))) v.minGroupSize = (unsigned)Rcpp::as<int>(t);
  static const char* ok[] = {"adaptiveThreshWinSizeMin", "adaptiveThreshWinSizeMax", "adaptiveThreshWinSizeStep", "adaptiveThreshConstant", "minContoursAreaRate", "minContoursArea", "confidenceThreshold", "minContourSolidity", "findCandidatesApproxPolyDPEpsMultiplier", "borderWidth", "B0factor", "maxError", "minContourPointsAllowed", "minContourLengthAllowed", "minInterContourDistance", "minInterCheckerDistance", "minImageSize", "minGroupSize"};
  check_names(x, "cv::mcc::DetectorParameters", ok, 18);
  return v;
}

inline SEXP wrap_mcc_DetectorParameters(const cv::mcc::DetectorParameters& v) {
  static const char* nm[] = {"adaptiveThreshWinSizeMin", "adaptiveThreshWinSizeMax", "adaptiveThreshWinSizeStep", "adaptiveThreshConstant", "minContoursAreaRate", "minContoursArea", "confidenceThreshold", "minContourSolidity", "findCandidatesApproxPolyDPEpsMultiplier", "borderWidth", "B0factor", "maxError", "minContourPointsAllowed", "minContourLengthAllowed", "minInterContourDistance", "minInterCheckerDistance", "minImageSize", "minGroupSize"};
  Rcpp::List out(18);
  Rcpp::CharacterVector names(18);
  for (int i = 0; i < 18; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.adaptiveThreshWinSizeMin);
  out[1] = Rcpp::wrap(v.adaptiveThreshWinSizeMax);
  out[2] = Rcpp::wrap(v.adaptiveThreshWinSizeStep);
  out[3] = Rcpp::wrap(v.adaptiveThreshConstant);
  out[4] = Rcpp::wrap(v.minContoursAreaRate);
  out[5] = Rcpp::wrap(v.minContoursArea);
  out[6] = Rcpp::wrap(v.confidenceThreshold);
  out[7] = Rcpp::wrap(v.minContourSolidity);
  out[8] = Rcpp::wrap(v.findCandidatesApproxPolyDPEpsMultiplier);
  out[9] = Rcpp::wrap(v.borderWidth);
  out[10] = Rcpp::wrap((double)v.B0factor);
  out[11] = Rcpp::wrap((double)v.maxError);
  out[12] = Rcpp::wrap(v.minContourPointsAllowed);
  out[13] = Rcpp::wrap(v.minContourLengthAllowed);
  out[14] = Rcpp::wrap(v.minInterContourDistance);
  out[15] = Rcpp::wrap(v.minInterCheckerDistance);
  out[16] = Rcpp::wrap(v.minImageSize);
  out[17] = Rcpp::wrap((int)v.minGroupSize);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::mcc::DetectorParameters> as_vec_mcc_DetectorParameters(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::mcc::DetectorParameters>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::mcc::DetectorParameters> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_mcc_DetectorParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_mcc_DetectorParameters(const std::vector<cv::mcc::DetectorParameters>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_mcc_DetectorParameters(v[i]);
  return out;
}

inline std::vector<std::vector<cv::mcc::DetectorParameters> > as_vec_mcc_DetectorParameters_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::mcc::DetectorParameters> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::mcc::DetectorParameters> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_mcc_DetectorParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_mcc_DetectorParameters_list(const std::vector<std::vector<cv::mcc::DetectorParameters> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_mcc_DetectorParameters(v[i]);
  return out;
}

// ---- cv::ml::ParamGrid  (3 字段)
inline cv::ml::ParamGrid as_ml_ParamGrid(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::ml::ParamGrid>(x);
  cv::ml::ParamGrid v;
  SEXP t;
  if (given(t = field(x, "minVal"))) v.minVal = Rcpp::as<double>(t);
  if (given(t = field(x, "maxVal"))) v.maxVal = Rcpp::as<double>(t);
  if (given(t = field(x, "logStep"))) v.logStep = Rcpp::as<double>(t);
  static const char* ok[] = {"minVal", "maxVal", "logStep"};
  check_names(x, "cv::ml::ParamGrid", ok, 3);
  return v;
}

inline SEXP wrap_ml_ParamGrid(const cv::ml::ParamGrid& v) {
  static const char* nm[] = {"minVal", "maxVal", "logStep"};
  Rcpp::List out(3);
  Rcpp::CharacterVector names(3);
  for (int i = 0; i < 3; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.minVal);
  out[1] = Rcpp::wrap(v.maxVal);
  out[2] = Rcpp::wrap(v.logStep);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::ml::ParamGrid> as_vec_ml_ParamGrid(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::ml::ParamGrid>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::ml::ParamGrid> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_ml_ParamGrid(L[i]));
  return out;
}

inline SEXP wrap_vec_ml_ParamGrid(const std::vector<cv::ml::ParamGrid>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_ml_ParamGrid(v[i]);
  return out;
}

inline std::vector<std::vector<cv::ml::ParamGrid> > as_vec_ml_ParamGrid_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::ml::ParamGrid> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::ml::ParamGrid> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_ml_ParamGrid(L[i]));
  return out;
}

inline SEXP wrap_vec_ml_ParamGrid_list(const std::vector<std::vector<cv::ml::ParamGrid> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_ml_ParamGrid(v[i]);
  return out;
}

// ---- cv::phase_unwrapping::HistogramPhaseUnwrapping::Params  (5 字段)
inline cv::phase_unwrapping::HistogramPhaseUnwrapping::Params as_phase_unwrapping_HistogramPhaseUnwrapping_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params>(x);
  cv::phase_unwrapping::HistogramPhaseUnwrapping::Params v;
  SEXP t;
  if (given(t = field(x, "width"))) v.width = Rcpp::as<int>(t);
  if (given(t = field(x, "height"))) v.height = Rcpp::as<int>(t);
  if (given(t = field(x, "histThresh"))) v.histThresh = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "nbrOfSmallBins"))) v.nbrOfSmallBins = Rcpp::as<int>(t);
  if (given(t = field(x, "nbrOfLargeBins"))) v.nbrOfLargeBins = Rcpp::as<int>(t);
  static const char* ok[] = {"width", "height", "histThresh", "nbrOfSmallBins", "nbrOfLargeBins"};
  check_names(x, "cv::phase_unwrapping::HistogramPhaseUnwrapping::Params", ok, 5);
  return v;
}

inline SEXP wrap_phase_unwrapping_HistogramPhaseUnwrapping_Params(const cv::phase_unwrapping::HistogramPhaseUnwrapping::Params& v) {
  static const char* nm[] = {"width", "height", "histThresh", "nbrOfSmallBins", "nbrOfLargeBins"};
  Rcpp::List out(5);
  Rcpp::CharacterVector names(5);
  for (int i = 0; i < 5; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.width);
  out[1] = Rcpp::wrap(v.height);
  out[2] = Rcpp::wrap((double)v.histThresh);
  out[3] = Rcpp::wrap(v.nbrOfSmallBins);
  out[4] = Rcpp::wrap(v.nbrOfLargeBins);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> as_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_phase_unwrapping_HistogramPhaseUnwrapping_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params(const std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_phase_unwrapping_HistogramPhaseUnwrapping_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> > as_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params_list(const std::vector<std::vector<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_phase_unwrapping_HistogramPhaseUnwrapping_Params(v[i]);
  return out;
}

// ---- cv::stereo::MatchQuasiDense  (3 字段)
inline cv::stereo::MatchQuasiDense as_stereo_MatchQuasiDense(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::stereo::MatchQuasiDense>(x);
  cv::stereo::MatchQuasiDense v;
  SEXP t;
  if (given(t = field(x, "p0"))) v.p0 = ropecv::as_point(t);
  if (given(t = field(x, "p1"))) v.p1 = ropecv::as_point(t);
  if (given(t = field(x, "corr"))) v.corr = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"p0", "p1", "corr"};
  check_names(x, "cv::stereo::MatchQuasiDense", ok, 3);
  return v;
}

inline SEXP wrap_stereo_MatchQuasiDense(const cv::stereo::MatchQuasiDense& v) {
  static const char* nm[] = {"p0", "p1", "corr"};
  Rcpp::List out(3);
  Rcpp::CharacterVector names(3);
  for (int i = 0; i < 3; ++i) names[i] = nm[i];
  out[0] = ropecv::wrap_point(v.p0);
  out[1] = ropecv::wrap_point(v.p1);
  out[2] = Rcpp::wrap((double)v.corr);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::stereo::MatchQuasiDense> as_vec_stereo_MatchQuasiDense(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::stereo::MatchQuasiDense>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::stereo::MatchQuasiDense> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_stereo_MatchQuasiDense(L[i]));
  return out;
}

inline SEXP wrap_vec_stereo_MatchQuasiDense(const std::vector<cv::stereo::MatchQuasiDense>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_stereo_MatchQuasiDense(v[i]);
  return out;
}

inline std::vector<std::vector<cv::stereo::MatchQuasiDense> > as_vec_stereo_MatchQuasiDense_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::stereo::MatchQuasiDense> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::stereo::MatchQuasiDense> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_stereo_MatchQuasiDense(L[i]));
  return out;
}

inline SEXP wrap_vec_stereo_MatchQuasiDense_list(const std::vector<std::vector<cv::stereo::MatchQuasiDense> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_stereo_MatchQuasiDense(v[i]);
  return out;
}

// ---- cv::stereo::PropagationParameters  (15 字段)
inline cv::stereo::PropagationParameters as_stereo_PropagationParameters(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::stereo::PropagationParameters>(x);
  cv::stereo::PropagationParameters v;
  SEXP t;
  if (given(t = field(x, "corrWinSizeX"))) v.corrWinSizeX = Rcpp::as<int>(t);
  if (given(t = field(x, "corrWinSizeY"))) v.corrWinSizeY = Rcpp::as<int>(t);
  if (given(t = field(x, "borderX"))) v.borderX = Rcpp::as<int>(t);
  if (given(t = field(x, "borderY"))) v.borderY = Rcpp::as<int>(t);
  if (given(t = field(x, "correlationThreshold"))) v.correlationThreshold = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "textrureThreshold"))) v.textrureThreshold = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "neighborhoodSize"))) v.neighborhoodSize = Rcpp::as<int>(t);
  if (given(t = field(x, "disparityGradient"))) v.disparityGradient = Rcpp::as<int>(t);
  if (given(t = field(x, "lkTemplateSize"))) v.lkTemplateSize = Rcpp::as<int>(t);
  if (given(t = field(x, "lkPyrLvl"))) v.lkPyrLvl = Rcpp::as<int>(t);
  if (given(t = field(x, "lkTermParam1"))) v.lkTermParam1 = Rcpp::as<int>(t);
  if (given(t = field(x, "lkTermParam2"))) v.lkTermParam2 = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "gftQualityThres"))) v.gftQualityThres = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "gftMinSeperationDist"))) v.gftMinSeperationDist = Rcpp::as<int>(t);
  if (given(t = field(x, "gftMaxNumFeatures"))) v.gftMaxNumFeatures = Rcpp::as<int>(t);
  static const char* ok[] = {"corrWinSizeX", "corrWinSizeY", "borderX", "borderY", "correlationThreshold", "textrureThreshold", "neighborhoodSize", "disparityGradient", "lkTemplateSize", "lkPyrLvl", "lkTermParam1", "lkTermParam2", "gftQualityThres", "gftMinSeperationDist", "gftMaxNumFeatures"};
  check_names(x, "cv::stereo::PropagationParameters", ok, 15);
  return v;
}

inline SEXP wrap_stereo_PropagationParameters(const cv::stereo::PropagationParameters& v) {
  static const char* nm[] = {"corrWinSizeX", "corrWinSizeY", "borderX", "borderY", "correlationThreshold", "textrureThreshold", "neighborhoodSize", "disparityGradient", "lkTemplateSize", "lkPyrLvl", "lkTermParam1", "lkTermParam2", "gftQualityThres", "gftMinSeperationDist", "gftMaxNumFeatures"};
  Rcpp::List out(15);
  Rcpp::CharacterVector names(15);
  for (int i = 0; i < 15; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.corrWinSizeX);
  out[1] = Rcpp::wrap(v.corrWinSizeY);
  out[2] = Rcpp::wrap(v.borderX);
  out[3] = Rcpp::wrap(v.borderY);
  out[4] = Rcpp::wrap((double)v.correlationThreshold);
  out[5] = Rcpp::wrap((double)v.textrureThreshold);
  out[6] = Rcpp::wrap(v.neighborhoodSize);
  out[7] = Rcpp::wrap(v.disparityGradient);
  out[8] = Rcpp::wrap(v.lkTemplateSize);
  out[9] = Rcpp::wrap(v.lkPyrLvl);
  out[10] = Rcpp::wrap(v.lkTermParam1);
  out[11] = Rcpp::wrap((double)v.lkTermParam2);
  out[12] = Rcpp::wrap((double)v.gftQualityThres);
  out[13] = Rcpp::wrap(v.gftMinSeperationDist);
  out[14] = Rcpp::wrap(v.gftMaxNumFeatures);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::stereo::PropagationParameters> as_vec_stereo_PropagationParameters(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::stereo::PropagationParameters>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::stereo::PropagationParameters> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_stereo_PropagationParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_stereo_PropagationParameters(const std::vector<cv::stereo::PropagationParameters>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_stereo_PropagationParameters(v[i]);
  return out;
}

inline std::vector<std::vector<cv::stereo::PropagationParameters> > as_vec_stereo_PropagationParameters_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::stereo::PropagationParameters> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::stereo::PropagationParameters> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_stereo_PropagationParameters(L[i]));
  return out;
}

inline SEXP wrap_vec_stereo_PropagationParameters_list(const std::vector<std::vector<cv::stereo::PropagationParameters> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_stereo_PropagationParameters(v[i]);
  return out;
}

// ---- cv::structured_light::SinusoidalPattern::Params  (8 字段)
inline cv::structured_light::SinusoidalPattern::Params as_structured_light_SinusoidalPattern_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::structured_light::SinusoidalPattern::Params>(x);
  cv::structured_light::SinusoidalPattern::Params v;
  SEXP t;
  if (given(t = field(x, "width"))) v.width = Rcpp::as<int>(t);
  if (given(t = field(x, "height"))) v.height = Rcpp::as<int>(t);
  if (given(t = field(x, "nbrOfPeriods"))) v.nbrOfPeriods = Rcpp::as<int>(t);
  if (given(t = field(x, "shiftValue"))) v.shiftValue = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "methodId"))) v.methodId = Rcpp::as<int>(t);
  if (given(t = field(x, "nbrOfPixelsBetweenMarkers"))) v.nbrOfPixelsBetweenMarkers = Rcpp::as<int>(t);
  if (given(t = field(x, "horizontal"))) v.horizontal = Rcpp::as<bool>(t);
  if (given(t = field(x, "setMarkers"))) v.setMarkers = Rcpp::as<bool>(t);
  static const char* ok[] = {"width", "height", "nbrOfPeriods", "shiftValue", "methodId", "nbrOfPixelsBetweenMarkers", "horizontal", "setMarkers"};
  check_names(x, "cv::structured_light::SinusoidalPattern::Params", ok, 8);
  return v;
}

inline SEXP wrap_structured_light_SinusoidalPattern_Params(const cv::structured_light::SinusoidalPattern::Params& v) {
  static const char* nm[] = {"width", "height", "nbrOfPeriods", "shiftValue", "methodId", "nbrOfPixelsBetweenMarkers", "horizontal", "setMarkers"};
  Rcpp::List out(8);
  Rcpp::CharacterVector names(8);
  for (int i = 0; i < 8; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.width);
  out[1] = Rcpp::wrap(v.height);
  out[2] = Rcpp::wrap(v.nbrOfPeriods);
  out[3] = Rcpp::wrap((double)v.shiftValue);
  out[4] = Rcpp::wrap(v.methodId);
  out[5] = Rcpp::wrap(v.nbrOfPixelsBetweenMarkers);
  out[6] = Rcpp::wrap(v.horizontal);
  out[7] = Rcpp::wrap(v.setMarkers);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::structured_light::SinusoidalPattern::Params> as_vec_structured_light_SinusoidalPattern_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::structured_light::SinusoidalPattern::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::structured_light::SinusoidalPattern::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_structured_light_SinusoidalPattern_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_structured_light_SinusoidalPattern_Params(const std::vector<cv::structured_light::SinusoidalPattern::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_structured_light_SinusoidalPattern_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::structured_light::SinusoidalPattern::Params> > as_vec_structured_light_SinusoidalPattern_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::structured_light::SinusoidalPattern::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::structured_light::SinusoidalPattern::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_structured_light_SinusoidalPattern_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_structured_light_SinusoidalPattern_Params_list(const std::vector<std::vector<cv::structured_light::SinusoidalPattern::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_structured_light_SinusoidalPattern_Params(v[i]);
  return out;
}

// ---- cv::tracking::TrackerCSRT::Params  (27 字段)
inline cv::tracking::TrackerCSRT::Params as_tracking_TrackerCSRT_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::tracking::TrackerCSRT::Params>(x);
  cv::tracking::TrackerCSRT::Params v;
  SEXP t;
  if (given(t = field(x, "use_hog"))) v.use_hog = Rcpp::as<bool>(t);
  if (given(t = field(x, "use_color_names"))) v.use_color_names = Rcpp::as<bool>(t);
  if (given(t = field(x, "use_gray"))) v.use_gray = Rcpp::as<bool>(t);
  if (given(t = field(x, "use_rgb"))) v.use_rgb = Rcpp::as<bool>(t);
  if (given(t = field(x, "use_channel_weights"))) v.use_channel_weights = Rcpp::as<bool>(t);
  if (given(t = field(x, "use_segmentation"))) v.use_segmentation = Rcpp::as<bool>(t);
  if (given(t = field(x, "window_function"))) v.window_function = Rcpp::as<std::string>(t);
  if (given(t = field(x, "kaiser_alpha"))) v.kaiser_alpha = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "cheb_attenuation"))) v.cheb_attenuation = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "template_size"))) v.template_size = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "gsl_sigma"))) v.gsl_sigma = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "hog_orientations"))) v.hog_orientations = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "hog_clip"))) v.hog_clip = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "padding"))) v.padding = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "filter_lr"))) v.filter_lr = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "weights_lr"))) v.weights_lr = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "num_hog_channels_used"))) v.num_hog_channels_used = Rcpp::as<int>(t);
  if (given(t = field(x, "admm_iterations"))) v.admm_iterations = Rcpp::as<int>(t);
  if (given(t = field(x, "histogram_bins"))) v.histogram_bins = Rcpp::as<int>(t);
  if (given(t = field(x, "histogram_lr"))) v.histogram_lr = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "background_ratio"))) v.background_ratio = Rcpp::as<int>(t);
  if (given(t = field(x, "number_of_scales"))) v.number_of_scales = Rcpp::as<int>(t);
  if (given(t = field(x, "scale_sigma_factor"))) v.scale_sigma_factor = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "scale_model_max_area"))) v.scale_model_max_area = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "scale_lr"))) v.scale_lr = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "scale_step"))) v.scale_step = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "psr_threshold"))) v.psr_threshold = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"use_hog", "use_color_names", "use_gray", "use_rgb", "use_channel_weights", "use_segmentation", "window_function", "kaiser_alpha", "cheb_attenuation", "template_size", "gsl_sigma", "hog_orientations", "hog_clip", "padding", "filter_lr", "weights_lr", "num_hog_channels_used", "admm_iterations", "histogram_bins", "histogram_lr", "background_ratio", "number_of_scales", "scale_sigma_factor", "scale_model_max_area", "scale_lr", "scale_step", "psr_threshold"};
  check_names(x, "cv::tracking::TrackerCSRT::Params", ok, 27);
  return v;
}

inline SEXP wrap_tracking_TrackerCSRT_Params(const cv::tracking::TrackerCSRT::Params& v) {
  static const char* nm[] = {"use_hog", "use_color_names", "use_gray", "use_rgb", "use_channel_weights", "use_segmentation", "window_function", "kaiser_alpha", "cheb_attenuation", "template_size", "gsl_sigma", "hog_orientations", "hog_clip", "padding", "filter_lr", "weights_lr", "num_hog_channels_used", "admm_iterations", "histogram_bins", "histogram_lr", "background_ratio", "number_of_scales", "scale_sigma_factor", "scale_model_max_area", "scale_lr", "scale_step", "psr_threshold"};
  Rcpp::List out(27);
  Rcpp::CharacterVector names(27);
  for (int i = 0; i < 27; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.use_hog);
  out[1] = Rcpp::wrap(v.use_color_names);
  out[2] = Rcpp::wrap(v.use_gray);
  out[3] = Rcpp::wrap(v.use_rgb);
  out[4] = Rcpp::wrap(v.use_channel_weights);
  out[5] = Rcpp::wrap(v.use_segmentation);
  out[6] = Rcpp::wrap(v.window_function);
  out[7] = Rcpp::wrap((double)v.kaiser_alpha);
  out[8] = Rcpp::wrap((double)v.cheb_attenuation);
  out[9] = Rcpp::wrap((double)v.template_size);
  out[10] = Rcpp::wrap((double)v.gsl_sigma);
  out[11] = Rcpp::wrap((double)v.hog_orientations);
  out[12] = Rcpp::wrap((double)v.hog_clip);
  out[13] = Rcpp::wrap((double)v.padding);
  out[14] = Rcpp::wrap((double)v.filter_lr);
  out[15] = Rcpp::wrap((double)v.weights_lr);
  out[16] = Rcpp::wrap(v.num_hog_channels_used);
  out[17] = Rcpp::wrap(v.admm_iterations);
  out[18] = Rcpp::wrap(v.histogram_bins);
  out[19] = Rcpp::wrap((double)v.histogram_lr);
  out[20] = Rcpp::wrap(v.background_ratio);
  out[21] = Rcpp::wrap(v.number_of_scales);
  out[22] = Rcpp::wrap((double)v.scale_sigma_factor);
  out[23] = Rcpp::wrap((double)v.scale_model_max_area);
  out[24] = Rcpp::wrap((double)v.scale_lr);
  out[25] = Rcpp::wrap((double)v.scale_step);
  out[26] = Rcpp::wrap((double)v.psr_threshold);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::tracking::TrackerCSRT::Params> as_vec_tracking_TrackerCSRT_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::tracking::TrackerCSRT::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::tracking::TrackerCSRT::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_tracking_TrackerCSRT_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_tracking_TrackerCSRT_Params(const std::vector<cv::tracking::TrackerCSRT::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_tracking_TrackerCSRT_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::tracking::TrackerCSRT::Params> > as_vec_tracking_TrackerCSRT_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::tracking::TrackerCSRT::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::tracking::TrackerCSRT::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_tracking_TrackerCSRT_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_tracking_TrackerCSRT_Params_list(const std::vector<std::vector<cv::tracking::TrackerCSRT::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_tracking_TrackerCSRT_Params(v[i]);
  return out;
}

// ---- cv::tracking::TrackerKCF::Params  (14 字段)
inline cv::tracking::TrackerKCF::Params as_tracking_TrackerKCF_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::tracking::TrackerKCF::Params>(x);
  cv::tracking::TrackerKCF::Params v;
  SEXP t;
  if (given(t = field(x, "detect_thresh"))) v.detect_thresh = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "sigma"))) v.sigma = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "lambda"))) v.lambda = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "interp_factor"))) v.interp_factor = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "output_sigma_factor"))) v.output_sigma_factor = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "pca_learning_rate"))) v.pca_learning_rate = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "resize"))) v.resize = Rcpp::as<bool>(t);
  if (given(t = field(x, "split_coeff"))) v.split_coeff = Rcpp::as<bool>(t);
  if (given(t = field(x, "wrap_kernel"))) v.wrap_kernel = Rcpp::as<bool>(t);
  if (given(t = field(x, "compress_feature"))) v.compress_feature = Rcpp::as<bool>(t);
  if (given(t = field(x, "max_patch_size"))) v.max_patch_size = Rcpp::as<int>(t);
  if (given(t = field(x, "compressed_size"))) v.compressed_size = Rcpp::as<int>(t);
  if (given(t = field(x, "desc_pca"))) v.desc_pca = Rcpp::as<int>(t);
  if (given(t = field(x, "desc_npca"))) v.desc_npca = Rcpp::as<int>(t);
  static const char* ok[] = {"detect_thresh", "sigma", "lambda", "interp_factor", "output_sigma_factor", "pca_learning_rate", "resize", "split_coeff", "wrap_kernel", "compress_feature", "max_patch_size", "compressed_size", "desc_pca", "desc_npca"};
  check_names(x, "cv::tracking::TrackerKCF::Params", ok, 14);
  return v;
}

inline SEXP wrap_tracking_TrackerKCF_Params(const cv::tracking::TrackerKCF::Params& v) {
  static const char* nm[] = {"detect_thresh", "sigma", "lambda", "interp_factor", "output_sigma_factor", "pca_learning_rate", "resize", "split_coeff", "wrap_kernel", "compress_feature", "max_patch_size", "compressed_size", "desc_pca", "desc_npca"};
  Rcpp::List out(14);
  Rcpp::CharacterVector names(14);
  for (int i = 0; i < 14; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap((double)v.detect_thresh);
  out[1] = Rcpp::wrap((double)v.sigma);
  out[2] = Rcpp::wrap((double)v.lambda);
  out[3] = Rcpp::wrap((double)v.interp_factor);
  out[4] = Rcpp::wrap((double)v.output_sigma_factor);
  out[5] = Rcpp::wrap((double)v.pca_learning_rate);
  out[6] = Rcpp::wrap(v.resize);
  out[7] = Rcpp::wrap(v.split_coeff);
  out[8] = Rcpp::wrap(v.wrap_kernel);
  out[9] = Rcpp::wrap(v.compress_feature);
  out[10] = Rcpp::wrap(v.max_patch_size);
  out[11] = Rcpp::wrap(v.compressed_size);
  out[12] = Rcpp::wrap(v.desc_pca);
  out[13] = Rcpp::wrap(v.desc_npca);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::tracking::TrackerKCF::Params> as_vec_tracking_TrackerKCF_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::tracking::TrackerKCF::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::tracking::TrackerKCF::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_tracking_TrackerKCF_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_tracking_TrackerKCF_Params(const std::vector<cv::tracking::TrackerKCF::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_tracking_TrackerKCF_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::tracking::TrackerKCF::Params> > as_vec_tracking_TrackerKCF_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::tracking::TrackerKCF::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::tracking::TrackerKCF::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_tracking_TrackerKCF_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_tracking_TrackerKCF_Params_list(const std::vector<std::vector<cv::tracking::TrackerKCF::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_tracking_TrackerKCF_Params(v[i]);
  return out;
}

// ---- cv::utils::ClassWithKeywordProperties  (1 字段)
inline cv::utils::ClassWithKeywordProperties as_utils_ClassWithKeywordProperties(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::utils::ClassWithKeywordProperties>(x);
  cv::utils::ClassWithKeywordProperties v;
  SEXP t;
  if (given(t = field(x, "lambda"))) v.lambda = Rcpp::as<int>(t);
  static const char* ok[] = {"lambda"};
  check_names(x, "cv::utils::ClassWithKeywordProperties", ok, 1);
  return v;
}

inline SEXP wrap_utils_ClassWithKeywordProperties(const cv::utils::ClassWithKeywordProperties& v) {
  static const char* nm[] = {"lambda"};
  Rcpp::List out(1);
  Rcpp::CharacterVector names(1);
  for (int i = 0; i < 1; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.lambda);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::utils::ClassWithKeywordProperties> as_vec_utils_ClassWithKeywordProperties(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::utils::ClassWithKeywordProperties>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::utils::ClassWithKeywordProperties> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_utils_ClassWithKeywordProperties(L[i]));
  return out;
}

inline SEXP wrap_vec_utils_ClassWithKeywordProperties(const std::vector<cv::utils::ClassWithKeywordProperties>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_utils_ClassWithKeywordProperties(v[i]);
  return out;
}

inline std::vector<std::vector<cv::utils::ClassWithKeywordProperties> > as_vec_utils_ClassWithKeywordProperties_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::utils::ClassWithKeywordProperties> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::utils::ClassWithKeywordProperties> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_utils_ClassWithKeywordProperties(L[i]));
  return out;
}

inline SEXP wrap_vec_utils_ClassWithKeywordProperties_list(const std::vector<std::vector<cv::utils::ClassWithKeywordProperties> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_utils_ClassWithKeywordProperties(v[i]);
  return out;
}

// ---- cv::utils::FunctionParams  (2 字段)
inline cv::utils::FunctionParams as_utils_FunctionParams(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::utils::FunctionParams>(x);
  cv::utils::FunctionParams v;
  SEXP t;
  if (given(t = field(x, "lambda"))) v.lambda = Rcpp::as<int>(t);
  if (given(t = field(x, "sigma"))) v.sigma = (float)Rcpp::as<double>(t);
  static const char* ok[] = {"lambda", "sigma"};
  check_names(x, "cv::utils::FunctionParams", ok, 2);
  return v;
}

inline SEXP wrap_utils_FunctionParams(const cv::utils::FunctionParams& v) {
  static const char* nm[] = {"lambda", "sigma"};
  Rcpp::List out(2);
  Rcpp::CharacterVector names(2);
  for (int i = 0; i < 2; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.lambda);
  out[1] = Rcpp::wrap((double)v.sigma);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::utils::FunctionParams> as_vec_utils_FunctionParams(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::utils::FunctionParams>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::utils::FunctionParams> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_utils_FunctionParams(L[i]));
  return out;
}

inline SEXP wrap_vec_utils_FunctionParams(const std::vector<cv::utils::FunctionParams>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_utils_FunctionParams(v[i]);
  return out;
}

inline std::vector<std::vector<cv::utils::FunctionParams> > as_vec_utils_FunctionParams_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::utils::FunctionParams> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::utils::FunctionParams> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_utils_FunctionParams(L[i]));
  return out;
}

inline SEXP wrap_vec_utils_FunctionParams_list(const std::vector<std::vector<cv::utils::FunctionParams> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_utils_FunctionParams(v[i]);
  return out;
}

// ---- cv::ximgproc::EdgeDrawing::Params  (13 字段)
inline cv::ximgproc::EdgeDrawing::Params as_ximgproc_EdgeDrawing_Params(SEXP x) {
  if (Rf_inherits(x, "cvObject")) return *obj_as<cv::ximgproc::EdgeDrawing::Params>(x);
  cv::ximgproc::EdgeDrawing::Params v;
  SEXP t;
  if (given(t = field(x, "PFmode"))) v.PFmode = Rcpp::as<bool>(t);
  if (given(t = field(x, "EdgeDetectionOperator"))) v.EdgeDetectionOperator = Rcpp::as<int>(t);
  if (given(t = field(x, "GradientThresholdValue"))) v.GradientThresholdValue = Rcpp::as<int>(t);
  if (given(t = field(x, "AnchorThresholdValue"))) v.AnchorThresholdValue = Rcpp::as<int>(t);
  if (given(t = field(x, "ScanInterval"))) v.ScanInterval = Rcpp::as<int>(t);
  if (given(t = field(x, "MinPathLength"))) v.MinPathLength = Rcpp::as<int>(t);
  if (given(t = field(x, "Sigma"))) v.Sigma = (float)Rcpp::as<double>(t);
  if (given(t = field(x, "SumFlag"))) v.SumFlag = Rcpp::as<bool>(t);
  if (given(t = field(x, "NFAValidation"))) v.NFAValidation = Rcpp::as<bool>(t);
  if (given(t = field(x, "MinLineLength"))) v.MinLineLength = Rcpp::as<int>(t);
  if (given(t = field(x, "MaxDistanceBetweenTwoLines"))) v.MaxDistanceBetweenTwoLines = Rcpp::as<double>(t);
  if (given(t = field(x, "LineFitErrorThreshold"))) v.LineFitErrorThreshold = Rcpp::as<double>(t);
  if (given(t = field(x, "MaxErrorThreshold"))) v.MaxErrorThreshold = Rcpp::as<double>(t);
  static const char* ok[] = {"PFmode", "EdgeDetectionOperator", "GradientThresholdValue", "AnchorThresholdValue", "ScanInterval", "MinPathLength", "Sigma", "SumFlag", "NFAValidation", "MinLineLength", "MaxDistanceBetweenTwoLines", "LineFitErrorThreshold", "MaxErrorThreshold"};
  check_names(x, "cv::ximgproc::EdgeDrawing::Params", ok, 13);
  return v;
}

inline SEXP wrap_ximgproc_EdgeDrawing_Params(const cv::ximgproc::EdgeDrawing::Params& v) {
  static const char* nm[] = {"PFmode", "EdgeDetectionOperator", "GradientThresholdValue", "AnchorThresholdValue", "ScanInterval", "MinPathLength", "Sigma", "SumFlag", "NFAValidation", "MinLineLength", "MaxDistanceBetweenTwoLines", "LineFitErrorThreshold", "MaxErrorThreshold"};
  Rcpp::List out(13);
  Rcpp::CharacterVector names(13);
  for (int i = 0; i < 13; ++i) names[i] = nm[i];
  out[0] = Rcpp::wrap(v.PFmode);
  out[1] = Rcpp::wrap(v.EdgeDetectionOperator);
  out[2] = Rcpp::wrap(v.GradientThresholdValue);
  out[3] = Rcpp::wrap(v.AnchorThresholdValue);
  out[4] = Rcpp::wrap(v.ScanInterval);
  out[5] = Rcpp::wrap(v.MinPathLength);
  out[6] = Rcpp::wrap((double)v.Sigma);
  out[7] = Rcpp::wrap(v.SumFlag);
  out[8] = Rcpp::wrap(v.NFAValidation);
  out[9] = Rcpp::wrap(v.MinLineLength);
  out[10] = Rcpp::wrap(v.MaxDistanceBetweenTwoLines);
  out[11] = Rcpp::wrap(v.LineFitErrorThreshold);
  out[12] = Rcpp::wrap(v.MaxErrorThreshold);
  out.attr("names") = names;
  return out;
}

inline std::vector<cv::ximgproc::EdgeDrawing::Params> as_vec_ximgproc_EdgeDrawing_Params(SEXP x) {
  if (Rf_isNull(x)) return std::vector<cv::ximgproc::EdgeDrawing::Params>();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<cv::ximgproc::EdgeDrawing::Params> out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_ximgproc_EdgeDrawing_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_ximgproc_EdgeDrawing_Params(const std::vector<cv::ximgproc::EdgeDrawing::Params>& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_ximgproc_EdgeDrawing_Params(v[i]);
  return out;
}

inline std::vector<std::vector<cv::ximgproc::EdgeDrawing::Params> > as_vec_ximgproc_EdgeDrawing_Params_list(SEXP x) {
  if (Rf_isNull(x)) return std::vector<std::vector<cv::ximgproc::EdgeDrawing::Params> >();
  Rcpp::List L = Rcpp::as<Rcpp::List>(x);
  std::vector<std::vector<cv::ximgproc::EdgeDrawing::Params> > out;
  out.reserve((size_t)L.size());
  for (R_xlen_t i = 0; i < L.size(); ++i) out.push_back(as_vec_ximgproc_EdgeDrawing_Params(L[i]));
  return out;
}

inline SEXP wrap_vec_ximgproc_EdgeDrawing_Params_list(const std::vector<std::vector<cv::ximgproc::EdgeDrawing::Params> >& v) {
  Rcpp::List out((R_xlen_t)v.size());
  for (size_t i = 0; i < v.size(); ++i) out[(R_xlen_t)i] = wrap_vec_ximgproc_EdgeDrawing_Params(v[i]);
  return out;
}

}  // namespace ropecv

#endif  // ROPECV_STRUCTS_H