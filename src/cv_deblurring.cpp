// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/deblurring.hpp
#include "ropecv.h"
#include <opencv2/videostab/deblurring.hpp>

// [[Rcpp::export]]
SEXP cv_calcBlurriness(SEXP frame) {
  try {
    cv::Mat _m0 = Rf_isNull(frame) ? cv::Mat() : *ropecv::mat_ptr(frame);
    double _rv = ::cv::videostab::calcBlurriness(_m0);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcBlurriness: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcBlurriness: %s", e.what());
  }
}
