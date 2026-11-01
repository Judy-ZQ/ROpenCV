// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/xphoto/tonemap.hpp>

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_getContrast__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->getContrast();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getContrast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getContrast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_getSaturation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->getSaturation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_getSigmaColor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->getSigmaColor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigmaColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigmaColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_getSigmaSpace__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->getSigmaSpace();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigmaSpace: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigmaSpace: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_setContrast__0(SEXP ropecv_self_, double contrast) {
  try {
    ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->setContrast((float)contrast);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setContrast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setContrast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_setSaturation__0(SEXP ropecv_self_, double saturation) {
  try {
    ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->setSaturation((float)saturation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_setSigmaColor__0(SEXP ropecv_self_, double sigma_color) {
  try {
    ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->setSigmaColor((float)sigma_color);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigmaColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigmaColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_TonemapDurand_TonemapDurand_setSigmaSpace__0(SEXP ropecv_self_, double sigma_space) {
  try {
    ropecv::obj_as<cv::xphoto::TonemapDurand>(ropecv_self_)->setSigmaSpace((float)sigma_space);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigmaSpace: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigmaSpace: %s", e.what());
  }
}
