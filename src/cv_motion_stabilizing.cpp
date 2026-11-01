// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/motion_stabilizing.hpp
#include "ropecv.h"
#include <opencv2/videostab/motion_stabilizing.hpp>

// [[Rcpp::export]]
SEXP cv_ensureInclusionConstraint(SEXP M, SEXP size, double trimRatio) {
  try {
    cv::Mat _m0 = Rf_isNull(M) ? cv::Mat() : *ropecv::mat_ptr(M);
    cv::Mat _rv = ::cv::videostab::ensureInclusionConstraint(_m0, ropecv::as_size(size), (float)trimRatio);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("ensureInclusionConstraint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("ensureInclusionConstraint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateOptimalTrimRatio(SEXP M, SEXP size) {
  try {
    cv::Mat _m0 = Rf_isNull(M) ? cv::Mat() : *ropecv::mat_ptr(M);
    double _rv = ::cv::videostab::estimateOptimalTrimRatio(_m0, ropecv::as_size(size));
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateOptimalTrimRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateOptimalTrimRatio: %s", e.what());
  }
}
