// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/phase_unwrapping/phase_unwrapping.hpp>

// [[Rcpp::export]]
SEXP cv_phase_unwrapping_PhaseUnwrapping_PhaseUnwrapping_unwrapPhaseMap__0(SEXP ropecv_self_, SEXP wrappedPhaseMap, SEXP shadowMask, SEXP dst) {
  try {
    ropecv::InArg _i0(wrappedPhaseMap);
    ropecv::InArg _i1(shadowMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::phase_unwrapping::PhaseUnwrapping>(ropecv_self_)->unwrapPhaseMap(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("unwrapPhaseMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("unwrapPhaseMap: %s", e.what());
  }
}
