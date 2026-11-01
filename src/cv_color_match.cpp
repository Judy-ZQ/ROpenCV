// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/color_match.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/color_match.hpp>

// [[Rcpp::export]]
SEXP cv_colorMatchTemplate(SEXP img, SEXP templ, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(templ);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::colorMatchTemplate(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("colorMatchTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("colorMatchTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createQuaternionImage(SEXP img, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::createQuaternionImage(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createQuaternionImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createQuaternionImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_qconj(SEXP qimg, SEXP dst) {
  try {
    ropecv::InArg _i0(qimg);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::qconj(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("qconj: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("qconj: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_qdft(SEXP img, int flags, bool sideLeft, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::qdft(_i0.ia(), cv::_OutputArray(*_p0), flags, sideLeft);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("qdft: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("qdft: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_qmultiply(SEXP src1, SEXP src2, SEXP dst) {
  try {
    ropecv::InArg _i0(src1);
    ropecv::InArg _i1(src2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::qmultiply(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("qmultiply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("qmultiply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_qunitary(SEXP qimg, SEXP dst) {
  try {
    ropecv::InArg _i0(qimg);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::qunitary(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("qunitary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("qunitary: %s", e.what());
  }
}
