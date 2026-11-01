// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/estimated_covariance.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/estimated_covariance.hpp>

// [[Rcpp::export]]
SEXP cv_covarianceEstimation(SEXP src, int windowRows, int windowCols, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::covarianceEstimation(_i0.ia(), cv::_OutputArray(*_p0), windowRows, windowCols);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("covarianceEstimation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("covarianceEstimation: %s", e.what());
  }
}
