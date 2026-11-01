// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/img_hash/img_hash_base.hpp>

// [[Rcpp::export]]
SEXP cv_img_hash_ImgHashBase_ImgHashBase_compare__0(SEXP ropecv_self_, SEXP hashOne, SEXP hashTwo) {
  try {
    ropecv::InArg _i0(hashOne);
    ropecv::InArg _i1(hashTwo);
    double _rv = ropecv::obj_as<cv::img_hash::ImgHashBase>(ropecv_self_)->compare(_i0.ia(), _i1.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compare: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compare: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_img_hash_ImgHashBase_ImgHashBase_compute__0(SEXP ropecv_self_, SEXP inputArr, SEXP dst) {
  try {
    ropecv::InArg _i0(inputArr);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::img_hash::ImgHashBase>(ropecv_self_)->compute(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}
