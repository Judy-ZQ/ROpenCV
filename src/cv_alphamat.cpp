// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/alphamat.hpp
#include "ropecv.h"
#include <opencv2/alphamat.hpp>

// [[Rcpp::export]]
SEXP cv_infoFlow(SEXP image, SEXP tmap, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(tmap);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::alphamat::infoFlow(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("infoFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("infoFlow: %s", e.what());
  }
}
