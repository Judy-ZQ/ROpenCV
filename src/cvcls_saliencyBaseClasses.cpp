// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/saliency/saliencyBaseClasses.hpp>

// [[Rcpp::export]]
SEXP cv_saliency_Saliency_Saliency_computeSaliency__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::saliency::Saliency>(ropecv_self_)->computeSaliency(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliency_StaticSaliency_computeBinaryMap__0(SEXP ropecv_self_, SEXP saliencyMap, SEXP dst) {
  try {
    ropecv::InArg _i0(saliencyMap);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::saliency::StaticSaliency>(ropecv_self_)->computeBinaryMap(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeBinaryMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeBinaryMap: %s", e.what());
  }
}
