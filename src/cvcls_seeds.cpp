// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/seeds.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getLabelContourMask__0(SEXP ropecv_self_, SEXP dst, bool thick_line) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::SuperpixelSEEDS>(ropecv_self_)->getLabelContourMask(cv::_OutputArray(*_p0), thick_line);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLabelContourMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLabelContourMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getLabels__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::SuperpixelSEEDS>(ropecv_self_)->getLabels(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLabels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLabels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getNumberOfSuperpixels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::SuperpixelSEEDS>(ropecv_self_)->getNumberOfSuperpixels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumberOfSuperpixels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumberOfSuperpixels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_iterate__0(SEXP ropecv_self_, SEXP img, int num_iterations) {
  try {
    ropecv::InArg _i0(img);
    ropecv::obj_as<cv::ximgproc::SuperpixelSEEDS>(ropecv_self_)->iterate(_i0.ia(), num_iterations);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("iterate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("iterate: %s", e.what());
  }
}
