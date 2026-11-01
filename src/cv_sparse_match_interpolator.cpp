// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/sparse_match_interpolator.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/sparse_match_interpolator.hpp>

// [[Rcpp::export]]
SEXP cv_createEdgeAwareInterpolator() {
  try {
    cv::Ptr<cv::ximgproc::EdgeAwareInterpolator> _rv = ::cv::ximgproc::createEdgeAwareInterpolator();
    return ropecv::wrap_obj(_rv, "cvEdgeAwareInterpolator");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createEdgeAwareInterpolator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createEdgeAwareInterpolator: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createRICInterpolator() {
  try {
    cv::Ptr<cv::ximgproc::RICInterpolator> _rv = ::cv::ximgproc::createRICInterpolator();
    return ropecv::wrap_obj(_rv, "cvRICInterpolator");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createRICInterpolator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createRICInterpolator: %s", e.what());
  }
}
