// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/fast_line_detector.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_FastLineDetector_FastLineDetector_detect__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::FastLineDetector>(ropecv_self_)->detect(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_FastLineDetector_FastLineDetector_drawSegments__0(SEXP ropecv_self_, SEXP image, SEXP lines, bool draw_arrow, SEXP linecolor, int linethickness) {
  try {
    ropecv::InArg _i0(lines);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ropecv::obj_as<cv::ximgproc::FastLineDetector>(ropecv_self_)->drawSegments(cv::_InputOutputArray(*_p0), _i0.ia(), draw_arrow, ropecv::as_scalar(linecolor), linethickness);
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawSegments: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawSegments: %s", e.what());
  }
}
