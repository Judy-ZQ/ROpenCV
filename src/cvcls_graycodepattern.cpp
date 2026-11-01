// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/structured_light/graycodepattern.hpp>

// [[Rcpp::export]]
SEXP cv_structured_light_GrayCodePattern_GrayCodePattern_create__0(int width, int height) {
  try {
    cv::Ptr<cv::structured_light::GrayCodePattern> _rv = cv::structured_light::GrayCodePattern::create(width, height);
    return ropecv::wrap_obj(_rv, "cvGrayCodePattern");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_GrayCodePattern_GrayCodePattern_getImagesForShadowMasks__0(SEXP ropecv_self_, SEXP blackImage, SEXP whiteImage) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(blackImage) ? &_owned0 : ropecv::mat_ptr(blackImage);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(whiteImage) ? &_owned1 : ropecv::mat_ptr(whiteImage);
    ropecv::obj_as<cv::structured_light::GrayCodePattern>(ropecv_self_)->getImagesForShadowMasks(cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("blackImage") = Rf_isNull(blackImage) ? ropecv::wrap_mat(std::move(_owned0)) : blackImage,
                                Rcpp::Named("whiteImage") = Rf_isNull(whiteImage) ? ropecv::wrap_mat(std::move(_owned1)) : whiteImage);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImagesForShadowMasks: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImagesForShadowMasks: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_GrayCodePattern_GrayCodePattern_getNumberOfPatternImages__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::structured_light::GrayCodePattern>(ropecv_self_)->getNumberOfPatternImages();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumberOfPatternImages: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumberOfPatternImages: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_GrayCodePattern_GrayCodePattern_getProjPixel__0(SEXP ropecv_self_, SEXP patternImages, int x, int y) {
  try {
    ropecv::InArg _i0(patternImages);
    cv::Point _o0;
    bool _rv = ropecv::obj_as<cv::structured_light::GrayCodePattern>(ropecv_self_)->getProjPixel(_i0.ia(), x, y, _o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("projPix") = ropecv::wrap_point(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getProjPixel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getProjPixel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_GrayCodePattern_GrayCodePattern_setBlackThreshold__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::structured_light::GrayCodePattern>(ropecv_self_)->setBlackThreshold((size_t)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBlackThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBlackThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_structured_light_GrayCodePattern_GrayCodePattern_setWhiteThreshold__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::structured_light::GrayCodePattern>(ropecv_self_)->setWhiteThreshold((size_t)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWhiteThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWhiteThreshold: %s", e.what());
  }
}
