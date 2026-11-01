// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/structured_light/sinusoidalpattern.hpp>

// [[Rcpp::export]]
SEXP cv_structured_light_SinusoidalPattern_SinusoidalPattern_create__0(SEXP parameters) {
  try {
    cv::Ptr<cv::structured_light::SinusoidalPattern> _rv = cv::structured_light::SinusoidalPattern::create(ropecv::as_ptr<cv::structured_light::SinusoidalPattern::Params>(parameters));
    return ropecv::wrap_obj(_rv, "cvSinusoidalPattern");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_SinusoidalPattern_SinusoidalPattern_computeDataModulationTerm__0(SEXP ropecv_self_, SEXP patternImages, SEXP shadowMask, SEXP dst) {
  try {
    ropecv::InArg _i0(patternImages);
    ropecv::InArg _i1(shadowMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::structured_light::SinusoidalPattern>(ropecv_self_)->computeDataModulationTerm(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeDataModulationTerm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeDataModulationTerm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_SinusoidalPattern_SinusoidalPattern_computePhaseMap__0(SEXP ropecv_self_, SEXP patternImages, SEXP fundamental, SEXP wrappedPhaseMap, SEXP shadowMask) {
  try {
    ropecv::InArg _i0(patternImages);
    ropecv::InArg _i1(fundamental);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(wrappedPhaseMap) ? &_owned0 : ropecv::mat_ptr(wrappedPhaseMap);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(shadowMask) ? &_owned1 : ropecv::mat_ptr(shadowMask);
    ropecv::obj_as<cv::structured_light::SinusoidalPattern>(ropecv_self_)->computePhaseMap(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), _i1.ia());
    return Rcpp::List::create(Rcpp::Named("wrappedPhaseMap") = Rf_isNull(wrappedPhaseMap) ? ropecv::wrap_mat(std::move(_owned0)) : wrappedPhaseMap,
                                Rcpp::Named("shadowMask") = Rf_isNull(shadowMask) ? ropecv::wrap_mat(std::move(_owned1)) : shadowMask);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computePhaseMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computePhaseMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_SinusoidalPattern_SinusoidalPattern_findProCamMatches__0(SEXP ropecv_self_, SEXP projUnwrappedPhaseMap, SEXP camUnwrappedPhaseMap, SEXP matches) {
  try {
    ropecv::InArg _i0(projUnwrappedPhaseMap);
    ropecv::InArg _i1(camUnwrappedPhaseMap);
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::structured_light::SinusoidalPattern>(ropecv_self_)->findProCamMatches(_i0.ia(), _i1.ia(), cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findProCamMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findProCamMatches: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_SinusoidalPattern_SinusoidalPattern_unwrapPhaseMap__0(SEXP ropecv_self_, SEXP wrappedPhaseMap, SEXP camSize, SEXP shadowMask, SEXP dst) {
  try {
    ropecv::InArg _i0(wrappedPhaseMap);
    ropecv::InArg _i1(shadowMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::structured_light::SinusoidalPattern>(ropecv_self_)->unwrapPhaseMap(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_size(camSize), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("unwrapPhaseMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("unwrapPhaseMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_SinusoidalPattern_Params_Params_new__0() {
  try {
    cv::Ptr<cv::structured_light::SinusoidalPattern::Params> _rv(new cv::structured_light::SinusoidalPattern::Params());
    return ropecv::wrap_obj(_rv, "cvSinusoidalPatternParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSinusoidalPatternParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSinusoidalPatternParams: %s", e.what());
  }
}
