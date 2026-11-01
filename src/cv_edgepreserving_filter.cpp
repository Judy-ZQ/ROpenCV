// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/edgepreserving_filter.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/edgepreserving_filter.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_edgePreservingFilter(SEXP src, int d, double threshold, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::edgePreservingFilter(_i0.ia(), cv::_OutputArray(*_p0), d, threshold);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("edgePreservingFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("edgePreservingFilter: %s", e.what());
  }
}
