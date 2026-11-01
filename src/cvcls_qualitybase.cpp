// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/quality/qualitybase.hpp>

// [[Rcpp::export]]
SEXP cv_quality_QualityBase_QualityBase_clear__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::quality::QualityBase>(ropecv_self_)->clear();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBase_QualityBase_compute__0(SEXP ropecv_self_, SEXP img) {
  try {
    ropecv::InArg _i0(img);
    cv::Scalar _rv = ropecv::obj_as<cv::quality::QualityBase>(ropecv_self_)->compute(_i0.ia());
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBase_QualityBase_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::quality::QualityBase>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBase_QualityBase_getQualityMap__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::quality::QualityBase>(ropecv_self_)->getQualityMap(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getQualityMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getQualityMap: %s", e.what());
  }
}
