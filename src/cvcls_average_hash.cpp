// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/average_hash.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_AverageHash_AverageHash_create__0() {
  try {
    cv::Ptr<cv::img_hash::AverageHash> _rv = cv::img_hash::AverageHash::create();
    return ropecv::wrap_obj(_rv, "cvAverageHash");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}
