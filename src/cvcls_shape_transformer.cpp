// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/shape/shape_transformer.hpp>

// [[Rcpp::export]]
SEXP cv_AffineTransformer_AffineTransformer_getFullAffine__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::AffineTransformer>(ropecv_self_)->getFullAffine();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFullAffine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFullAffine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AffineTransformer_AffineTransformer_setFullAffine__0(SEXP ropecv_self_, bool fullAffine) {
  try {
    ropecv::obj_as<cv::AffineTransformer>(ropecv_self_)->setFullAffine(fullAffine);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFullAffine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFullAffine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeTransformer_ShapeTransformer_applyTransformation__0(SEXP ropecv_self_, SEXP input, SEXP dst) {
  try {
    ropecv::InArg _i0(input);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ropecv::obj_as<cv::ShapeTransformer>(ropecv_self_)->applyTransformation(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyTransformation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyTransformation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeTransformer_ShapeTransformer_estimateTransformation__0(SEXP ropecv_self_, SEXP transformingShape, SEXP targetShape, SEXP matches) {
  try {
    ropecv::InArg _i0(transformingShape);
    ropecv::InArg _i1(targetShape);
    std::vector<cv::DMatch> _o0;
    if (!Rf_isNull(matches)) _o0 = ropecv::as_dmatches(matches);
    ropecv::obj_as<cv::ShapeTransformer>(ropecv_self_)->estimateTransformation(_i0.ia(), _i1.ia(), _o0);
    return Rcpp::List::create(Rcpp::Named("matches") = ropecv::wrap_dmatches(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateTransformation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateTransformation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeTransformer_ShapeTransformer_warpImage__0(SEXP ropecv_self_, SEXP transformingImage, int flags, int borderMode, SEXP borderValue, SEXP dst) {
  try {
    ropecv::InArg _i0(transformingImage);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ShapeTransformer>(ropecv_self_)->warpImage(_i0.ia(), cv::_OutputArray(*_p0), flags, borderMode, ropecv::as_scalar(borderValue));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_getRegularizationParameter__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ThinPlateSplineShapeTransformer>(ropecv_self_)->getRegularizationParameter();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRegularizationParameter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRegularizationParameter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_setRegularizationParameter__0(SEXP ropecv_self_, double beta) {
  try {
    ropecv::obj_as<cv::ThinPlateSplineShapeTransformer>(ropecv_self_)->setRegularizationParameter(beta);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRegularizationParameter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRegularizationParameter: %s", e.what());
  }
}
