// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/peilin.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/peilin.hpp>

// [[Rcpp::export]]
SEXP cv_PeiLinNormalization(SEXP I, SEXP dst) {
  try {
    ropecv::InArg _i0(I);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::PeiLinNormalization(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("PeiLinNormalization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("PeiLinNormalization: %s", e.what());
  }
}
