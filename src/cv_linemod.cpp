// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/linemod.hpp
#include "ropecv.h"
#include <opencv2/rgbd/linemod.hpp>

// [[Rcpp::export]]
SEXP cv_colormap(SEXP quantized) {
  try {
    cv::Mat _m0 = Rf_isNull(quantized) ? cv::Mat() : *ropecv::mat_ptr(quantized);
    cv::Mat _o0;
    ::cv::linemod::colormap(_m0, _o0);
    return ropecv::wrap_mat(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("colormap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("colormap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDefaultLINE() {
  try {
    cv::Ptr<cv::linemod::Detector> _rv = ::cv::linemod::getDefaultLINE();
    return ropecv::wrap_obj(_rv, "cvDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultLINE: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultLINE: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDefaultLINEMOD() {
  try {
    cv::Ptr<cv::linemod::Detector> _rv = ::cv::linemod::getDefaultLINEMOD();
    return ropecv::wrap_obj(_rv, "cvDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultLINEMOD: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultLINEMOD: %s", e.what());
  }
}
