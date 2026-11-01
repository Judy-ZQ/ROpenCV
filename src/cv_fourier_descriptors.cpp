// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/fourier_descriptors.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/fourier_descriptors.hpp>

// [[Rcpp::export]]
SEXP cv_contourSampling(SEXP src, int nbElt, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::contourSampling(_i0.ia(), cv::_OutputArray(*_p0), nbElt);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("contourSampling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("contourSampling: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createContourFitting(int ctr, int fd) {
  try {
    cv::Ptr<cv::ximgproc::ContourFitting> _rv = ::cv::ximgproc::createContourFitting(ctr, fd);
    return ropecv::wrap_obj(_rv, "cvContourFitting");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createContourFitting: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createContourFitting: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fourierDescriptor(SEXP src, int nbElt, int nbFD, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::fourierDescriptor(_i0.ia(), cv::_OutputArray(*_p0), nbElt, nbFD);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fourierDescriptor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fourierDescriptor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_transformFD(SEXP src, SEXP t, bool fdContour, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(t);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::transformFD(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), fdContour);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("transformFD: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("transformFD: %s", e.what());
  }
}
