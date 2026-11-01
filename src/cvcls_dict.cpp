// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/dnn.hpp>
#include <opencv2/dnn/dict.hpp>

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_new__0(int i) {
  try {
    cv::Ptr<cv::dnn::DictValue> _rv(new cv::dnn::DictValue(i));
    return ropecv::wrap_obj(_rv, "cvDictValue");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDictValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDictValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_new__1(double p) {
  try {
    cv::Ptr<cv::dnn::DictValue> _rv(new cv::dnn::DictValue(p));
    return ropecv::wrap_obj(_rv, "cvDictValue");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDictValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDictValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_new__2(std::string s) {
  try {
    cv::Ptr<cv::dnn::DictValue> _rv(new cv::dnn::DictValue(s));
    return ropecv::wrap_obj(_rv, "cvDictValue");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDictValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDictValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_getIntValue__0(SEXP ropecv_self_, int idx) {
  try {
    int _rv = ropecv::obj_as<cv::dnn::DictValue>(ropecv_self_)->getIntValue(idx);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIntValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIntValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_getRealValue__0(SEXP ropecv_self_, int idx) {
  try {
    double _rv = ropecv::obj_as<cv::dnn::DictValue>(ropecv_self_)->getRealValue(idx);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRealValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRealValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_getStringValue__0(SEXP ropecv_self_, int idx) {
  try {
    std::string _rv = ropecv::obj_as<cv::dnn::DictValue>(ropecv_self_)->getStringValue(idx);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStringValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStringValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_isInt__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::dnn::DictValue>(ropecv_self_)->isInt();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isInt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isInt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_isReal__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::dnn::DictValue>(ropecv_self_)->isReal();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isReal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isReal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DictValue_DictValue_isString__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::dnn::DictValue>(ropecv_self_)->isString();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isString: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isString: %s", e.what());
  }
}
