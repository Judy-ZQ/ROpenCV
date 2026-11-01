// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/background_segm.hpp
#include "ropecv.h"
#include <opencv2/video/background_segm.hpp>

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorKNN(int history, double dist2Threshold, bool detectShadows) {
  try {
    cv::Ptr<cv::BackgroundSubtractorKNN> _rv = ::cv::createBackgroundSubtractorKNN(history, dist2Threshold, detectShadows);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorKNN");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorKNN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorKNN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createBackgroundSubtractorMOG2(int history, double varThreshold, bool detectShadows) {
  try {
    cv::Ptr<cv::BackgroundSubtractorMOG2> _rv = ::cv::createBackgroundSubtractorMOG2(history, varThreshold, detectShadows);
    return ropecv::wrap_obj(_rv, "cvBackgroundSubtractorMOG2");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBackgroundSubtractorMOG2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBackgroundSubtractorMOG2: %s", e.what());
  }
}
