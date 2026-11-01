// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/phase_unwrapping/histogramphaseunwrapping.hpp>

// [[Rcpp::export]]
SEXP cv_phase_unwrapping_HistogramPhaseUnwrapping_HistogramPhaseUnwrapping_create__0(SEXP parameters) {
  try {
    cv::phase_unwrapping::HistogramPhaseUnwrapping::Params _s0 = ropecv::as_phase_unwrapping_HistogramPhaseUnwrapping_Params(parameters);
    cv::Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping> _rv = cv::phase_unwrapping::HistogramPhaseUnwrapping::create(_s0);
    return ropecv::wrap_obj(_rv, "cvHistogramPhaseUnwrapping");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_phase_unwrapping_HistogramPhaseUnwrapping_HistogramPhaseUnwrapping_getInverseReliabilityMap__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::phase_unwrapping::HistogramPhaseUnwrapping>(ropecv_self_)->getInverseReliabilityMap(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInverseReliabilityMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInverseReliabilityMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_phase_unwrapping_HistogramPhaseUnwrapping_Params_Params_new__0() {
  try {
    cv::Ptr<cv::phase_unwrapping::HistogramPhaseUnwrapping::Params> _rv(new cv::phase_unwrapping::HistogramPhaseUnwrapping::Params());
    return ropecv::wrap_obj(_rv, "cvHistogramPhaseUnwrappingParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvHistogramPhaseUnwrappingParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvHistogramPhaseUnwrappingParams: %s", e.what());
  }
}
