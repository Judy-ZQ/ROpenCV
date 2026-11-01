// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/blenders.hpp
#include "ropecv.h"
#include <opencv2/stitching/detail/blenders.hpp>

// [[Rcpp::export]]
SEXP cv_createWeightMap(SEXP mask, double sharpness, SEXP weight) {
  try {
    ropecv::InArg _i0(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(weight) ? &_owned0 : ropecv::mat_ptr(weight);
    ::cv::detail::createWeightMap(_i0.ia(), (float)sharpness, cv::_InputOutputArray(*_p0));
    return Rf_isNull(weight) ? ropecv::wrap_mat(std::move(_owned0)) : weight;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createWeightMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createWeightMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_normalizeUsingWeightMap(SEXP weight, SEXP src) {
  try {
    ropecv::InArg _i0(weight);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(src) ? &_owned0 : ropecv::mat_ptr(src);
    ::cv::detail::normalizeUsingWeightMap(_i0.ia(), cv::_InputOutputArray(*_p0));
    return Rf_isNull(src) ? ropecv::wrap_mat(std::move(_owned0)) : src;
  } catch (const cv::Exception& e) {
    Rcpp::stop("normalizeUsingWeightMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("normalizeUsingWeightMap: %s", e.what());
  }
}
