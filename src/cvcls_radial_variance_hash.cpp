// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/radial_variance_hash.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_RadialVarianceHash_RadialVarianceHash_create__0(double sigma, int numOfAngleLine) {
  try {
    cv::Ptr<cv::img_hash::RadialVarianceHash> _rv = cv::img_hash::RadialVarianceHash::create(sigma, numOfAngleLine);
    return ropecv::wrap_obj(_rv, "cvRadialVarianceHash");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_RadialVarianceHash_RadialVarianceHash_getNumOfAngleLine__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::img_hash::RadialVarianceHash>(ropecv_self_)->getNumOfAngleLine();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumOfAngleLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumOfAngleLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_RadialVarianceHash_RadialVarianceHash_getSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::img_hash::RadialVarianceHash>(ropecv_self_)->getSigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_RadialVarianceHash_RadialVarianceHash_setNumOfAngleLine__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::img_hash::RadialVarianceHash>(ropecv_self_)->setNumOfAngleLine(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumOfAngleLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumOfAngleLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_RadialVarianceHash_RadialVarianceHash_setSigma__0(SEXP ropecv_self_, double value) {
  try {
    ropecv::obj_as<cv::img_hash::RadialVarianceHash>(ropecv_self_)->setSigma(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  }
}
