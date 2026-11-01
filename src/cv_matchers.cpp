// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/matchers.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/stitching/detail/matchers.hpp>

// [[Rcpp::export]]
SEXP cv_computeImageFeatures__0(SEXP featuresFinder, SEXP images, SEXP masks) {
  try {
    ropecv::InArg _i0(images);
    ropecv::InArg _i1(masks);
    std::vector<cv::detail::ImageFeatures> _o0;
    ::cv::detail::computeImageFeatures(ropecv::as_ptr<cv::Feature2D>(featuresFinder), _i0.ia(), _o0, _i1.ia());
    return ropecv::wrap_vec_detail_ImageFeatures(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeImageFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeImageFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeImageFeatures__1(SEXP featuresFinder, SEXP image, SEXP mask) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    cv::detail::ImageFeatures _o0;
    ::cv::detail::computeImageFeatures(ropecv::as_ptr<cv::Feature2D>(featuresFinder), _i0.ia(), _o0, _i1.ia());
    return ropecv::wrap_detail_ImageFeatures(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeImageFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeImageFeatures: %s", e.what());
  }
}
