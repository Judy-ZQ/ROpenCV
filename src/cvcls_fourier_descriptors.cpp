// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/fourier_descriptors.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_ContourFitting_ContourFitting_estimateTransformation__0(SEXP ropecv_self_, SEXP src, SEXP dst, bool fdContour, SEXP alphaPhiST) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(alphaPhiST) ? &_owned0 : ropecv::mat_ptr(alphaPhiST);
    double _o1 = 0;
    ropecv::obj_as<cv::ximgproc::ContourFitting>(ropecv_self_)->estimateTransformation(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _o1, fdContour);
    return Rcpp::List::create(Rcpp::Named("alphaPhiST") = Rf_isNull(alphaPhiST) ? ropecv::wrap_mat(std::move(_owned0)) : alphaPhiST,
                                Rcpp::Named("dist") = Rf_ScalarReal(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateTransformation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateTransformation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_ContourFitting_ContourFitting_getCtrSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::ContourFitting>(ropecv_self_)->getCtrSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCtrSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCtrSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_ContourFitting_ContourFitting_getFDSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::ContourFitting>(ropecv_self_)->getFDSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFDSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFDSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_ContourFitting_ContourFitting_setCtrSize__0(SEXP ropecv_self_, int n) {
  try {
    ropecv::obj_as<cv::ximgproc::ContourFitting>(ropecv_self_)->setCtrSize(n);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCtrSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCtrSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_ContourFitting_ContourFitting_setFDSize__0(SEXP ropecv_self_, int n) {
  try {
    ropecv::obj_as<cv::ximgproc::ContourFitting>(ropecv_self_)->setFDSize(n);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFDSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFDSize: %s", e.what());
  }
}
