// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/emdL1.hpp
#include "ropecv.h"
#include <opencv2/shape/emdL1.hpp>

// [[Rcpp::export]]
SEXP cv_EMDL1(SEXP signature1, SEXP signature2) {
  try {
    ropecv::InArg _i0(signature1);
    ropecv::InArg _i1(signature2);
    double _rv = ::cv::EMDL1(_i0.ia(), _i1.ia());
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("EMDL1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("EMDL1: %s", e.what());
  }
}
