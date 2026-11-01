// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/ridgefilter.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_create__0(int ddepth, int dx, int dy, int ksize, int out_dtype, double scale, double delta, int borderType) {
  try {
    cv::Ptr<cv::ximgproc::RidgeDetectionFilter> _rv = cv::ximgproc::RidgeDetectionFilter::create(ddepth, dx, dy, ksize, out_dtype, scale, delta, borderType);
    return ropecv::wrap_obj(_rv, "cvRidgeDetectionFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_getRidgeFilteredImage__0(SEXP ropecv_self_, SEXP img, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::RidgeDetectionFilter>(ropecv_self_)->getRidgeFilteredImage(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRidgeFilteredImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRidgeFilteredImage: %s", e.what());
  }
}
