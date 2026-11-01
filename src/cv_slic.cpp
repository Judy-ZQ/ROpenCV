// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/slic.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/slic.hpp>

// [[Rcpp::export]]
SEXP cv_createSuperpixelSLIC(SEXP image, int algorithm, int region_size, double ruler) {
  try {
    ropecv::InArg _i0(image);
    cv::Ptr<cv::ximgproc::SuperpixelSLIC> _rv = ::cv::ximgproc::createSuperpixelSLIC(_i0.ia(), algorithm, region_size, (float)ruler);
    return ropecv::wrap_obj(_rv, "cvSuperpixelSLIC");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSuperpixelSLIC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSuperpixelSLIC: %s", e.what());
  }
}
