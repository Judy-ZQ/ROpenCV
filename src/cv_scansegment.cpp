// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/scansegment.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/scansegment.hpp>

// [[Rcpp::export]]
SEXP cv_createScanSegment(int image_width, int image_height, int num_superpixels, int slices, bool merge_small) {
  try {
    cv::Ptr<cv::ximgproc::ScanSegment> _rv = ::cv::ximgproc::createScanSegment(image_width, image_height, num_superpixels, slices, merge_small);
    return ropecv::wrap_obj(_rv, "cvScanSegment");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createScanSegment: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createScanSegment: %s", e.what());
  }
}
