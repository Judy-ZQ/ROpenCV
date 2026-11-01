// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/color_moment_hash.hpp
#include "ropecv.h"
#include <opencv2/img_hash/color_moment_hash.hpp>

// [[Rcpp::export]]
SEXP cv_colorMomentHash(SEXP inputArr, SEXP dst) {
  try {
    ropecv::InArg _i0(inputArr);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::img_hash::colorMomentHash(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("colorMomentHash: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("colorMomentHash: %s", e.what());
  }
}
