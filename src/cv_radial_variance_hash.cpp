// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/radial_variance_hash.hpp
#include "ropecv.h"
#include <opencv2/img_hash/radial_variance_hash.hpp>

// [[Rcpp::export]]
SEXP cv_radialVarianceHash(SEXP inputArr, double sigma, int numOfAngleLine, SEXP dst) {
  try {
    ropecv::InArg _i0(inputArr);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::img_hash::radialVarianceHash(_i0.ia(), cv::_OutputArray(*_p0), sigma, numOfAngleLine);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("radialVarianceHash: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("radialVarianceHash: %s", e.what());
  }
}
