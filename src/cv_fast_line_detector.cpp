// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/fast_line_detector.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/fast_line_detector.hpp>

// [[Rcpp::export]]
SEXP cv_createFastLineDetector(int length_threshold, double distance_threshold, double canny_th1, double canny_th2, int canny_aperture_size, bool do_merge) {
  try {
    cv::Ptr<cv::ximgproc::FastLineDetector> _rv = ::cv::ximgproc::createFastLineDetector(length_threshold, (float)distance_threshold, canny_th1, canny_th2, canny_aperture_size, do_merge);
    return ropecv::wrap_obj(_rv, "cvFastLineDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFastLineDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFastLineDetector: %s", e.what());
  }
}
