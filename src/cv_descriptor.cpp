// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/descriptor.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/line_descriptor/descriptor.hpp>

// [[Rcpp::export]]
SEXP cv_drawKeylines(SEXP image, SEXP keylines, SEXP color, int flags) {
  try {
    cv::Mat _m0 = Rf_isNull(image) ? cv::Mat() : *ropecv::mat_ptr(image);
    std::vector<cv::line_descriptor::KeyLine> _a1 = ropecv::as_vec_line_descriptor_KeyLine(keylines);
    cv::Mat _o0;
    ::cv::line_descriptor::drawKeylines(_m0, _a1, _o0, ropecv::as_scalar(color), flags);
    return ropecv::wrap_mat(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawKeylines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawKeylines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawLineMatches(SEXP img1, SEXP keylines1, SEXP img2, SEXP keylines2, SEXP matches1to2, SEXP matchColor, SEXP singleLineColor, SEXP matchesMask, int flags) {
  try {
    cv::Mat _m0 = Rf_isNull(img1) ? cv::Mat() : *ropecv::mat_ptr(img1);
    std::vector<cv::line_descriptor::KeyLine> _a1 = ropecv::as_vec_line_descriptor_KeyLine(keylines1);
    cv::Mat _m2 = Rf_isNull(img2) ? cv::Mat() : *ropecv::mat_ptr(img2);
    std::vector<cv::line_descriptor::KeyLine> _a3 = ropecv::as_vec_line_descriptor_KeyLine(keylines2);
    std::vector<cv::DMatch> _a4 = ropecv::as_dmatches(matches1to2);
    std::vector<char> _a5 = ropecv::as_char_vector(matchesMask);
    cv::Mat _o0;
    ::cv::line_descriptor::drawLineMatches(_m0, _a1, _m2, _a3, _a4, _o0, ropecv::as_scalar(matchColor), ropecv::as_scalar(singleLineColor), _a5, flags);
    return ropecv::wrap_mat(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawLineMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawLineMatches: %s", e.what());
  }
}
