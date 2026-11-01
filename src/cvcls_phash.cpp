// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/phash.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_PHash_PHash_create__0() {
  try {
    cv::Ptr<cv::img_hash::PHash> _rv = cv::img_hash::PHash::create();
    return ropecv::wrap_obj(_rv, "cvPHash");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}
