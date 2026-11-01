// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/block_mean_hash.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_BlockMeanHash_BlockMeanHash_create__0(int mode) {
  try {
    cv::Ptr<cv::img_hash::BlockMeanHash> _rv = cv::img_hash::BlockMeanHash::create(mode);
    return ropecv::wrap_obj(_rv, "cvBlockMeanHash");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_BlockMeanHash_BlockMeanHash_getMean__0(SEXP ropecv_self_) {
  try {
    std::vector<double> _rv = ropecv::obj_as<cv::img_hash::BlockMeanHash>(ropecv_self_)->getMean();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMean: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMean: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_BlockMeanHash_BlockMeanHash_setMode__0(SEXP ropecv_self_, int mode) {
  try {
    ropecv::obj_as<cv::img_hash::BlockMeanHash>(ropecv_self_)->setMode(mode);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMode: %s", e.what());
  }
}
