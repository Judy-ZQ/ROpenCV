// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/quality/qualitymse.hpp>

// [[Rcpp::export]]
SEXP cv_quality_QualityMSE_QualityMSE_create__0(SEXP ref) {
  try {
    ropecv::InArg _i0(ref);
    cv::Ptr<cv::quality::QualityMSE> _rv = cv::quality::QualityMSE::create(_i0.ia());
    return ropecv::wrap_obj(_rv, "cvQualityMSE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityMSE_QualityMSE_compute__1(SEXP ref, SEXP cmp, SEXP dst) {
  try {
    ropecv::InArg _i0(ref);
    ropecv::InArg _i1(cmp);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Scalar _rv = cv::quality::QualityMSE::compute(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_scalar(_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityMSE_QualityMSE_clear__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::quality::QualityMSE>(ropecv_self_)->clear();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityMSE_QualityMSE_compute__0(SEXP ropecv_self_, SEXP cmpImgs) {
  try {
    ropecv::InArg _i0(cmpImgs);
    cv::Scalar _rv = ropecv::obj_as<cv::quality::QualityMSE>(ropecv_self_)->compute(_i0.ia());
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityMSE_QualityMSE_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::quality::QualityMSE>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}
