// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/structured_light/structured_light.hpp>

// [[Rcpp::export]]
SEXP cv_structured_light_StructuredLightPattern_StructuredLightPattern_decode__0(SEXP ropecv_self_, SEXP patternImages, SEXP blackImages, SEXP whiteImages, int flags, SEXP dst) {
  try {
    std::vector<std::vector<cv::Mat> > _a0 = ropecv::as_mat_mat_vector(patternImages);
    ropecv::InArg _i1(blackImages);
    ropecv::InArg _i2(whiteImages);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::structured_light::StructuredLightPattern>(ropecv_self_)->decode(_a0, cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("decode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_StructuredLightPattern_StructuredLightPattern_generate__0(SEXP ropecv_self_, SEXP patternImages) {
  try {
    std::vector<cv::Mat> _o0;
    bool _rv = ropecv::obj_as<cv::structured_light::StructuredLightPattern>(ropecv_self_)->generate(cv::_OutputArray(_o0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("patternImages") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("generate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("generate: %s", e.what());
  }
}
