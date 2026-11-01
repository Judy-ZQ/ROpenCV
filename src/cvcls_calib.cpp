// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/calib.hpp>

// [[Rcpp::export]]
SEXP cv_CirclesGridFinderParameters_CirclesGridFinderParameters_new__0() {
  try {
    cv::Ptr<cv::CirclesGridFinderParameters> _rv(new cv::CirclesGridFinderParameters());
    return ropecv::wrap_obj(_rv, "cvCirclesGridFinderParameters");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvCirclesGridFinderParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvCirclesGridFinderParameters: %s", e.what());
  }
}
