// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/marr_hildreth_hash.hpp
#include "ropecv.h"
#include <opencv2/img_hash/marr_hildreth_hash.hpp>

// [[Rcpp::export]]
SEXP cv_marrHildrethHash(SEXP inputArr, double alpha, double scale, SEXP dst) {
  try {
    ropecv::InArg _i0(inputArr);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::img_hash::marrHildrethHash(_i0.ia(), cv::_OutputArray(*_p0), (float)alpha, (float)scale);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("marrHildrethHash: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("marrHildrethHash: %s", e.what());
  }
}
