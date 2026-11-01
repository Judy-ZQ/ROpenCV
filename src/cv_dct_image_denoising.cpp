// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/dct_image_denoising.hpp
#include "ropecv.h"
#include <opencv2/xphoto/dct_image_denoising.hpp>

// [[Rcpp::export]]
SEXP cv_dctDenoising(SEXP src, SEXP dst, double sigma, int psize) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Mat _o0;
    if (!Rf_isNull(dst)) _o0 = *ropecv::mat_ptr(dst);
    ::cv::xphoto::dctDenoising(_m0, _o0, sigma, psize);
    return Rcpp::List::create(Rcpp::Named("dst") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("dctDenoising: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dctDenoising: %s", e.what());
  }
}
