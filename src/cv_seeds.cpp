// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/seeds.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/seeds.hpp>

// [[Rcpp::export]]
SEXP cv_createSuperpixelSEEDS(int image_width, int image_height, int image_channels, int num_superpixels, int num_levels, int prior, int histogram_bins, bool double_step) {
  try {
    cv::Ptr<cv::ximgproc::SuperpixelSEEDS> _rv = ::cv::ximgproc::createSuperpixelSEEDS(image_width, image_height, image_channels, num_superpixels, num_levels, prior, histogram_bins, double_step);
    return ropecv::wrap_obj(_rv, "cvSuperpixelSEEDS");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSuperpixelSEEDS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSuperpixelSEEDS: %s", e.what());
  }
}
