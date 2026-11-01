// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/signal_resample.hpp
#include "ropecv.h"
#include <opencv2/signal/signal_resample.hpp>

// [[Rcpp::export]]
SEXP cv_resampleSignal(SEXP inputSignal, int inFreq, int outFreq, SEXP dst) {
  try {
    ropecv::InArg _i0(inputSignal);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::signal::resampleSignal(_i0.ia(), cv::_OutputArray(*_p0), inFreq, outFreq);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("resampleSignal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resampleSignal: %s", e.what());
  }
}
