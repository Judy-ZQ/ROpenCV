// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/async.hpp>

// [[Rcpp::export]]
SEXP cv_AsyncArray_AsyncArray_new__0() {
  try {
    cv::Ptr<cv::AsyncArray> _rv(new cv::AsyncArray());
    return ropecv::wrap_obj(_rv, "cvAsyncArray");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvAsyncArray: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvAsyncArray: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AsyncArray_AsyncArray_get__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::AsyncArray>(ropecv_self_)->get(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("get: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AsyncArray_AsyncArray_get__1(SEXP ropecv_self_, SEXP dst, double timeoutNs) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::AsyncArray>(ropecv_self_)->get(cv::_OutputArray(*_p0), timeoutNs);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("get: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AsyncArray_AsyncArray_release__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::AsyncArray>(ropecv_self_)->release();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("release: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("release: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AsyncArray_AsyncArray_valid__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::AsyncArray>(ropecv_self_)->valid();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("valid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("valid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AsyncArray_AsyncArray_wait_for__0(SEXP ropecv_self_, double timeoutNs) {
  try {
    bool _rv = ropecv::obj_as<cv::AsyncArray>(ropecv_self_)->wait_for(timeoutNs);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("wait_for: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("wait_for: %s", e.what());
  }
}
