// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/fast_hough_transform.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/fast_hough_transform.hpp>

// [[Rcpp::export]]
SEXP cv_FastHoughTransform(SEXP src, int dstMatDepth, int angleRange, int op, int makeSkew, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::FastHoughTransform(_i0.ia(), cv::_OutputArray(*_p0), dstMatDepth, angleRange, op, makeSkew);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FastHoughTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FastHoughTransform: %s", e.what());
  }
}
