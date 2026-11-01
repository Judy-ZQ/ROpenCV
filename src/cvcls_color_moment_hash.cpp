// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/color_moment_hash.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_ColorMomentHash_ColorMomentHash_create__0() {
  try {
    cv::Ptr<cv::img_hash::ColorMomentHash> _rv = cv::img_hash::ColorMomentHash::create();
    return ropecv::wrap_obj(_rv, "cvColorMomentHash");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}
