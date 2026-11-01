// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/core.hpp>

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_clear__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::Algorithm>(ropecv_self_)->clear();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::Algorithm>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::Algorithm>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_read__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    ropecv::obj_as<cv::Algorithm>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_save__0(SEXP ropecv_self_, std::string filename) {
  try {
    ropecv::obj_as<cv::Algorithm>(ropecv_self_)->save(filename);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("save: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("save: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_write__0(SEXP ropecv_self_, SEXP fs) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    ropecv::obj_as<cv::Algorithm>(ropecv_self_)->write(_r0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Algorithm_Algorithm_write__1(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    ropecv::obj_as<cv::Algorithm>(ropecv_self_)->write(_r0, name);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}
