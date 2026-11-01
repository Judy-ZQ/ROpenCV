// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/paillou_filter.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/paillou_filter.hpp>

// [[Rcpp::export]]
SEXP cv_GradientPaillouX(SEXP op, double alpha, double omega, SEXP dst) {
  try {
    ropecv::InArg _i0(op);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::GradientPaillouX(_i0.ia(), cv::_OutputArray(*_p0), alpha, omega);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("GradientPaillouX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("GradientPaillouX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GradientPaillouY(SEXP op, double alpha, double omega, SEXP dst) {
  try {
    ropecv::InArg _i0(op);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::GradientPaillouY(_i0.ia(), cv::_OutputArray(*_p0), alpha, omega);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("GradientPaillouY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("GradientPaillouY: %s", e.what());
  }
}
