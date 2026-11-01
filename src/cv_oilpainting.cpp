// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/oilpainting.hpp
#include "ropecv.h"
#include <opencv2/xphoto/oilpainting.hpp>

// [[Rcpp::export]]
SEXP cv_oilPainting__0(SEXP src, int size, int dynRatio, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::xphoto::oilPainting(_i0.ia(), cv::_OutputArray(*_p0), size, dynRatio);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("oilPainting: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("oilPainting: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_oilPainting__1(SEXP src, int size, int dynRatio, int code, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::xphoto::oilPainting(_i0.ia(), cv::_OutputArray(*_p0), size, dynRatio, code);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("oilPainting: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("oilPainting: %s", e.what());
  }
}
