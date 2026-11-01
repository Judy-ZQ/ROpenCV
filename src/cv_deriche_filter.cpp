// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/deriche_filter.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/deriche_filter.hpp>

// [[Rcpp::export]]
SEXP cv_GradientDericheX(SEXP op, double alpha, double omega, SEXP dst) {
  try {
    ropecv::InArg _i0(op);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::GradientDericheX(_i0.ia(), cv::_OutputArray(*_p0), alpha, omega);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("GradientDericheX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("GradientDericheX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GradientDericheY(SEXP op, double alpha, double omega, SEXP dst) {
  try {
    ropecv::InArg _i0(op);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::GradientDericheY(_i0.ia(), cv::_OutputArray(*_p0), alpha, omega);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("GradientDericheY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("GradientDericheY: %s", e.what());
  }
}
