// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/types.hpp
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/types.hpp>

// [[Rcpp::export]]
SEXP cv_rectangleIntersectionArea(SEXP a, SEXP b) {
  try {
    std::vector<double> _v0 = Rcpp::as<std::vector<double> >(a); cv::Rect2d _r0(_v0[0], _v0[1], _v0[2], _v0[3]);
    std::vector<double> _v1 = Rcpp::as<std::vector<double> >(b); cv::Rect2d _r1(_v1[0], _v1[1], _v1[2], _v1[3]);
    double _rv = ::cv::rectangleIntersectionArea(_r0, _r1);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("rectangleIntersectionArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rectangleIntersectionArea: %s", e.what());
  }
}
