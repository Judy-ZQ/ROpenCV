// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/tracking_legacy.hpp
#include "ropecv.h"
#include <opencv2/tracking.hpp>
#include <opencv2/tracking/tracking_legacy.hpp>

// [[Rcpp::export]]
SEXP cv_upgradeTrackingAPI(SEXP legacy_tracker) {
  try {
    cv::Ptr<cv::Tracker> _rv = ::cv::legacy::tracking::upgradeTrackingAPI(ropecv::as_ptr<cv::legacy::tracking::Tracker>(legacy_tracker));
    return ropecv::wrap_obj(_rv, "cvTracker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("upgradeTrackingAPI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("upgradeTrackingAPI: %s", e.what());
  }
}
