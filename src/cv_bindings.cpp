// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/bindings.hpp
#include "ropecv.h"
#include <opencv2/imgproc.hpp>
#include <opencv2/imgproc/bindings.hpp>

// [[Rcpp::export]]
SEXP cv_HoughLinesWithAccumulator(SEXP image, double rho, double theta, int threshold, double srn, double stn, double min_theta, double max_theta, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::HoughLinesWithAccumulator(_i0.ia(), cv::_OutputArray(*_p0), rho, theta, threshold, srn, stn, min_theta, max_theta);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("HoughLinesWithAccumulator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("HoughLinesWithAccumulator: %s", e.what());
  }
}
