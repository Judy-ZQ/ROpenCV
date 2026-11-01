// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/edge_filter.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_create__0() {
  try {
    cv::Ptr<cv::ximgproc::AdaptiveManifoldFilter> _rv = cv::ximgproc::AdaptiveManifoldFilter::create();
    return ropecv::wrap_obj(_rv, "cvAdaptiveManifoldFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_collectGarbage__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ximgproc::AdaptiveManifoldFilter>(ropecv_self_)->collectGarbage();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("collectGarbage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("collectGarbage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_filter__0(SEXP ropecv_self_, SEXP src, SEXP joint, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(joint);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::AdaptiveManifoldFilter>(ropecv_self_)->filter(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DTFilter_DTFilter_filter__0(SEXP ropecv_self_, SEXP src, int dDepth, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::DTFilter>(ropecv_self_)->filter(_i0.ia(), cv::_OutputArray(*_p0), dDepth);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_FastBilateralSolverFilter_FastBilateralSolverFilter_filter__0(SEXP ropecv_self_, SEXP src, SEXP confidence, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(confidence);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::FastBilateralSolverFilter>(ropecv_self_)->filter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_FastGlobalSmootherFilter_FastGlobalSmootherFilter_filter__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::FastGlobalSmootherFilter>(ropecv_self_)->filter(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_GuidedFilter_GuidedFilter_filter__0(SEXP ropecv_self_, SEXP src, int dDepth, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::GuidedFilter>(ropecv_self_)->filter(_i0.ia(), cv::_OutputArray(*_p0), dDepth);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}
