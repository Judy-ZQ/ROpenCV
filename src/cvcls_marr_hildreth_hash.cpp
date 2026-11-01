// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/marr_hildreth_hash.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_MarrHildrethHash_MarrHildrethHash_create__0(double alpha, double scale) {
  try {
    cv::Ptr<cv::img_hash::MarrHildrethHash> _rv = cv::img_hash::MarrHildrethHash::create((float)alpha, (float)scale);
    return ropecv::wrap_obj(_rv, "cvMarrHildrethHash");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_MarrHildrethHash_MarrHildrethHash_getAlpha__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::img_hash::MarrHildrethHash>(ropecv_self_)->getAlpha();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_MarrHildrethHash_MarrHildrethHash_getScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::img_hash::MarrHildrethHash>(ropecv_self_)->getScale();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_MarrHildrethHash_MarrHildrethHash_setKernelParam__0(SEXP ropecv_self_, double alpha, double scale) {
  try {
    ropecv::obj_as<cv::img_hash::MarrHildrethHash>(ropecv_self_)->setKernelParam((float)alpha, (float)scale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setKernelParam: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setKernelParam: %s", e.what());
  }
}
