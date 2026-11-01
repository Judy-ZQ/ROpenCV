// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/fuzzy_image.hpp
#include "ropecv.h"
#include <opencv2/fuzzy/fuzzy_image.hpp>

// [[Rcpp::export]]
SEXP cv_createKernel__0(SEXP A, SEXP B, int chn, SEXP dst) {
  try {
    ropecv::InArg _i0(A);
    ropecv::InArg _i1(B);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::createKernel(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), chn);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createKernel__1(int function_, int radius, int chn, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::createKernel(function_, radius, cv::_OutputArray(*_p0), chn);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_filter(SEXP image, SEXP kernel, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::filter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ft_inpaint(SEXP image, SEXP mask, int radius, int function_, int algorithm, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::inpaint(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), radius, function_, algorithm);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("inpaint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inpaint: %s", e.what());
  }
}
