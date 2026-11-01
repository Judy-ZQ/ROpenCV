// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/face/bif.hpp>

// [[Rcpp::export]]
SEXP cv_face_BIF_BIF_create__0(int num_bands, int num_rotations) {
  try {
    cv::Ptr<cv::face::BIF> _rv = cv::face::BIF::create(num_bands, num_rotations);
    return ropecv::wrap_obj(_rv, "cvBIF");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BIF_BIF_compute__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::face::BIF>(ropecv_self_)->compute(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BIF_BIF_getNumBands__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::BIF>(ropecv_self_)->getNumBands();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumBands: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumBands: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_BIF_BIF_getNumRotations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::BIF>(ropecv_self_)->getNumRotations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumRotations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumRotations: %s", e.what());
  }
}
