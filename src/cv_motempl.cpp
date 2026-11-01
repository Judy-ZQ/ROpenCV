// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/motempl.hpp
#include "ropecv.h"
#include <opencv2/optflow/motempl.hpp>

// [[Rcpp::export]]
SEXP cv_calcGlobalOrientation(SEXP orientation, SEXP mask, SEXP mhi, double timestamp, double duration) {
  try {
    ropecv::InArg _i0(orientation);
    ropecv::InArg _i1(mask);
    ropecv::InArg _i2(mhi);
    double _rv = ::cv::motempl::calcGlobalOrientation(_i0.ia(), _i1.ia(), _i2.ia(), timestamp, duration);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcGlobalOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcGlobalOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcMotionGradient(SEXP mhi, double delta1, double delta2, int apertureSize, SEXP mask, SEXP orientation) {
  try {
    ropecv::InArg _i0(mhi);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mask) ? &_owned0 : ropecv::mat_ptr(mask);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(orientation) ? &_owned1 : ropecv::mat_ptr(orientation);
    ::cv::motempl::calcMotionGradient(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), delta1, delta2, apertureSize);
    return Rcpp::List::create(Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned0)) : mask,
                                Rcpp::Named("orientation") = Rf_isNull(orientation) ? ropecv::wrap_mat(std::move(_owned1)) : orientation);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcMotionGradient: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcMotionGradient: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentMotion(SEXP mhi, double timestamp, double segThresh, SEXP segmask) {
  try {
    ropecv::InArg _i0(mhi);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(segmask) ? &_owned0 : ropecv::mat_ptr(segmask);
    std::vector<cv::Rect> _o1;
    ::cv::motempl::segmentMotion(_i0.ia(), cv::_OutputArray(*_p0), _o1, timestamp, segThresh);
    return Rcpp::List::create(Rcpp::Named("segmask") = Rf_isNull(segmask) ? ropecv::wrap_mat(std::move(_owned0)) : segmask,
                                Rcpp::Named("boundingRects") = ropecv::wrap_rects(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("segmentMotion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("segmentMotion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_updateMotionHistory(SEXP silhouette, SEXP mhi, double timestamp, double duration) {
  try {
    ropecv::InArg _i0(silhouette);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mhi) ? &_owned0 : ropecv::mat_ptr(mhi);
    ::cv::motempl::updateMotionHistory(_i0.ia(), cv::_InputOutputArray(*_p0), timestamp, duration);
    return Rf_isNull(mhi) ? ropecv::wrap_mat(std::move(_owned0)) : mhi;
  } catch (const cv::Exception& e) {
    Rcpp::stop("updateMotionHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("updateMotionHistory: %s", e.what());
  }
}
