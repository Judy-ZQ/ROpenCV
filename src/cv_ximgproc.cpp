// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/ximgproc.hpp
#include "ropecv.h"
#include <opencv2/ximgproc.hpp>

// [[Rcpp::export]]
SEXP cv_anisotropicDiffusion(SEXP src, double alpha, double K, int niters, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::anisotropicDiffusion(_i0.ia(), cv::_OutputArray(*_p0), (float)alpha, (float)K, niters);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("anisotropicDiffusion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("anisotropicDiffusion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_niBlackThreshold(SEXP src, double maxValue, int type, int blockSize, double k, int binarizationMethod, double r, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::niBlackThreshold(_i0.ia(), cv::_OutputArray(*_p0), maxValue, type, blockSize, k, binarizationMethod, r);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("niBlackThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("niBlackThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_thinning(SEXP src, int thinningType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::thinning(_i0.ia(), cv::_OutputArray(*_p0), thinningType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("thinning: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("thinning: %s", e.what());
  }
}
