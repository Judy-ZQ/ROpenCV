// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/lsc.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/lsc.hpp>

// [[Rcpp::export]]
SEXP cv_createSuperpixelLSC(SEXP image, int region_size, double ratio) {
  try {
    ropecv::InArg _i0(image);
    cv::Ptr<cv::ximgproc::SuperpixelLSC> _rv = ::cv::ximgproc::createSuperpixelLSC(_i0.ia(), region_size, (float)ratio);
    return ropecv::wrap_obj(_rv, "cvSuperpixelLSC");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSuperpixelLSC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSuperpixelLSC: %s", e.what());
  }
}
