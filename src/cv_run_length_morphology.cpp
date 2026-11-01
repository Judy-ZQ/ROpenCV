// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/run_length_morphology.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/run_length_morphology.hpp>

// [[Rcpp::export]]
SEXP cv_createRLEImage(SEXP runs, SEXP size, SEXP dst) {
  try {
    std::vector<cv::Point3i> _a0 = ropecv::as_points3i(runs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::rl::createRLEImage(_a0, cv::_OutputArray(*_p0), ropecv::as_size(size));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createRLEImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createRLEImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_isRLMorphologyPossible(SEXP rlStructuringElement) {
  try {
    ropecv::InArg _i0(rlStructuringElement);
    bool _rv = ::cv::ximgproc::rl::isRLMorphologyPossible(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isRLMorphologyPossible: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isRLMorphologyPossible: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_paint(SEXP image, SEXP rlSrc, SEXP value) {
  try {
    ropecv::InArg _i0(rlSrc);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::ximgproc::rl::paint(cv::_InputOutputArray(*_p0), _i0.ia(), ropecv::as_scalar(value));
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("paint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("paint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_rl_dilate(SEXP rlSrc, SEXP rlKernel, SEXP anchor, SEXP dst) {
  try {
    ropecv::InArg _i0(rlSrc);
    ropecv::InArg _i1(rlKernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::rl::dilate(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), ropecv::as_point(anchor));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dilate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dilate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_rl_erode(SEXP rlSrc, SEXP rlKernel, bool bBoundaryOn, SEXP anchor, SEXP dst) {
  try {
    ropecv::InArg _i0(rlSrc);
    ropecv::InArg _i1(rlKernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::rl::erode(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), bBoundaryOn, ropecv::as_point(anchor));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("erode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("erode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_rl_getStructuringElement(int shape, SEXP ksize) {
  try {
    cv::Mat _rv = ::cv::ximgproc::rl::getStructuringElement(shape, ropecv::as_size(ksize));
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStructuringElement: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStructuringElement: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_rl_morphologyEx(SEXP rlSrc, int op, SEXP rlKernel, bool bBoundaryOnForErosion, SEXP anchor, SEXP dst) {
  try {
    ropecv::InArg _i0(rlSrc);
    ropecv::InArg _i1(rlKernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::rl::morphologyEx(_i0.ia(), cv::_OutputArray(*_p0), op, _i1.ia(), bBoundaryOnForErosion, ropecv::as_point(anchor));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("morphologyEx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("morphologyEx: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_rl_threshold(SEXP src, double thresh, int type, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::rl::threshold(_i0.ia(), cv::_OutputArray(*_p0), thresh, type);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("threshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("threshold: %s", e.what());
  }
}
