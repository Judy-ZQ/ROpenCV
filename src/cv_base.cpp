// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/base.hpp
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/base.hpp>

// [[Rcpp::export]]
SEXP cv_cubeRoot(double val) {
  try {
    double _rv = ::cv::cubeRoot((float)val);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("cubeRoot: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cubeRoot: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastAtan2(double y, double x) {
  try {
    double _rv = ::cv::fastAtan2((float)y, (float)x);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastAtan2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastAtan2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getIppVersion() {
  try {
    std::string _rv = ::cv::ipp::getIppVersion();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIppVersion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIppVersion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setUseIPP(bool flag) {
  try {
    ::cv::ipp::setUseIPP(flag);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseIPP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseIPP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setUseIPP_NotExact(bool flag) {
  try {
    ::cv::ipp::setUseIPP_NotExact(flag);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseIPP_NotExact: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseIPP_NotExact: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_useIPP() {
  try {
    bool _rv = ::cv::ipp::useIPP();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("useIPP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("useIPP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_useIPP_NotExact() {
  try {
    bool _rv = ::cv::ipp::useIPP_NotExact();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("useIPP_NotExact: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("useIPP_NotExact: %s", e.what());
  }
}
