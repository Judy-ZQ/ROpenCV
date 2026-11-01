// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/weighted_median_filter.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/weighted_median_filter.hpp>

// [[Rcpp::export]]
SEXP cv_weightedMedianFilter(SEXP joint, SEXP src, int r, double sigma, int weightType, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(joint);
    ropecv::InArg _i1(src);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::weightedMedianFilter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), r, sigma, weightType, _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("weightedMedianFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("weightedMedianFilter: %s", e.what());
  }
}
