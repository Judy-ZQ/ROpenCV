// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/autocalib.hpp
#include "ropecv.h"
#include <opencv2/stitching/detail/autocalib.hpp>

// [[Rcpp::export]]
SEXP cv_calibrateRotatingCamera(SEXP Hs) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(Hs);
    cv::Mat _o0;
    ::cv::detail::calibrateRotatingCamera(_a0, _o0);
    return ropecv::wrap_mat(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateRotatingCamera: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateRotatingCamera: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_focalsFromHomography(SEXP H, SEXP f0, SEXP f1, SEXP f0_ok, SEXP f1_ok) {
  try {
    cv::Mat _m0 = Rf_isNull(H) ? cv::Mat() : *ropecv::mat_ptr(H);
    double _o0 = 0;
    if (!Rf_isNull(f0)) _o0 = Rcpp::as<double>(f0);
    double _o1 = 0;
    if (!Rf_isNull(f1)) _o1 = Rcpp::as<double>(f1);
    bool _o2 = 0;
    if (!Rf_isNull(f0_ok)) _o2 = Rcpp::as<bool>(f0_ok);
    bool _o3 = 0;
    if (!Rf_isNull(f1_ok)) _o3 = Rcpp::as<bool>(f1_ok);
    ::cv::detail::focalsFromHomography(_m0, _o0, _o1, _o2, _o3);
    return Rcpp::List::create(Rcpp::Named("f0") = Rf_ScalarReal(_o0),
                                Rcpp::Named("f1") = Rf_ScalarReal(_o1),
                                Rcpp::Named("f0_ok") = Rf_ScalarLogical(_o2),
                                Rcpp::Named("f1_ok") = Rf_ScalarLogical(_o3));
  } catch (const cv::Exception& e) {
    Rcpp::stop("focalsFromHomography: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("focalsFromHomography: %s", e.what());
  }
}
