// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/intensity_transform.hpp
#include "ropecv.h"
#include <opencv2/intensity_transform.hpp>

// [[Rcpp::export]]
SEXP cv_BIMEF__0(SEXP input, double mu, double a, double b, SEXP dst) {
  try {
    ropecv::InArg _i0(input);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::intensity_transform::BIMEF(_i0.ia(), cv::_OutputArray(*_p0), (float)mu, (float)a, (float)b);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("BIMEF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("BIMEF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BIMEF__1(SEXP input, double k, double mu, double a, double b, SEXP dst) {
  try {
    ropecv::InArg _i0(input);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::intensity_transform::BIMEF(_i0.ia(), cv::_OutputArray(*_p0), (float)k, (float)mu, (float)a, (float)b);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("BIMEF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("BIMEF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_autoscaling(SEXP input, SEXP output) {
  try {
    cv::Mat _m0 = Rf_isNull(input) ? cv::Mat() : *ropecv::mat_ptr(input);
    cv::Mat _o0;
    if (!Rf_isNull(output)) _o0 = *ropecv::mat_ptr(output);
    ::cv::intensity_transform::autoscaling(_m0, _o0);
    return Rcpp::List::create(Rcpp::Named("output") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("autoscaling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("autoscaling: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_contrastStretching(SEXP input, SEXP output, int r1, int s1, int r2, int s2) {
  try {
    cv::Mat _m0 = Rf_isNull(input) ? cv::Mat() : *ropecv::mat_ptr(input);
    cv::Mat _o0;
    if (!Rf_isNull(output)) _o0 = *ropecv::mat_ptr(output);
    ::cv::intensity_transform::contrastStretching(_m0, _o0, r1, s1, r2, s2);
    return Rcpp::List::create(Rcpp::Named("output") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("contrastStretching: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("contrastStretching: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_gammaCorrection(SEXP input, SEXP output, double gamma) {
  try {
    cv::Mat _m0 = Rf_isNull(input) ? cv::Mat() : *ropecv::mat_ptr(input);
    cv::Mat _o0;
    if (!Rf_isNull(output)) _o0 = *ropecv::mat_ptr(output);
    ::cv::intensity_transform::gammaCorrection(_m0, _o0, (float)gamma);
    return Rcpp::List::create(Rcpp::Named("output") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("gammaCorrection: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("gammaCorrection: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_logTransform(SEXP input, SEXP output) {
  try {
    cv::Mat _m0 = Rf_isNull(input) ? cv::Mat() : *ropecv::mat_ptr(input);
    cv::Mat _o0;
    if (!Rf_isNull(output)) _o0 = *ropecv::mat_ptr(output);
    ::cv::intensity_transform::logTransform(_m0, _o0);
    return Rcpp::List::create(Rcpp::Named("output") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("logTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("logTransform: %s", e.what());
  }
}
