// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/structured_edge_detection.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/structured_edge_detection.hpp>

// [[Rcpp::export]]
SEXP cv_createRFFeatureGetter() {
  try {
    cv::Ptr<cv::ximgproc::RFFeatureGetter> _rv = ::cv::ximgproc::createRFFeatureGetter();
    return ropecv::wrap_obj(_rv, "cvRFFeatureGetter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createRFFeatureGetter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createRFFeatureGetter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createStructuredEdgeDetection(std::string model, SEXP howToGetFeatures) {
  try {
    cv::Ptr<cv::ximgproc::StructuredEdgeDetection> _rv = ::cv::ximgproc::createStructuredEdgeDetection(model, ropecv::as_ptr<cv::ximgproc::RFFeatureGetter>(howToGetFeatures));
    return ropecv::wrap_obj(_rv, "cvStructuredEdgeDetection");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createStructuredEdgeDetection: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createStructuredEdgeDetection: %s", e.what());
  }
}
