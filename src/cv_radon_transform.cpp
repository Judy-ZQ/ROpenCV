// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/radon_transform.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/radon_transform.hpp>

// [[Rcpp::export]]
SEXP cv_RadonTransform(SEXP src, double theta, double start_angle, double end_angle, bool crop, bool norm, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::RadonTransform(_i0.ia(), cv::_OutputArray(*_p0), theta, start_angle, end_angle, crop, norm);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("RadonTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("RadonTransform: %s", e.what());
  }
}
