// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/find_ellipses.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/find_ellipses.hpp>

// [[Rcpp::export]]
SEXP cv_findEllipses(SEXP image, double scoreThreshold, double reliabilityThreshold, double centerDistanceThreshold, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::findEllipses(_i0.ia(), cv::_OutputArray(*_p0), (float)scoreThreshold, (float)reliabilityThreshold, (float)centerDistanceThreshold);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findEllipses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findEllipses: %s", e.what());
  }
}
