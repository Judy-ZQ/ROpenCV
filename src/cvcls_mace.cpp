// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/face/mace.hpp>

// [[Rcpp::export]]
SEXP cv_face_MACE_MACE_create__0(int IMGSIZE) {
  try {
    cv::Ptr<cv::face::MACE> _rv = cv::face::MACE::create(IMGSIZE);
    return ropecv::wrap_obj(_rv, "cvMACE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_MACE_MACE_load__1(std::string filename, std::string objname) {
  try {
    cv::Ptr<cv::face::MACE> _rv = cv::face::MACE::load(filename, objname);
    return ropecv::wrap_obj(_rv, "cvMACE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_MACE_MACE_salt__0(SEXP ropecv_self_, std::string passphrase) {
  try {
    ropecv::obj_as<cv::face::MACE>(ropecv_self_)->salt(passphrase);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("salt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("salt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_MACE_MACE_same__0(SEXP ropecv_self_, SEXP query) {
  try {
    ropecv::InArg _i0(query);
    bool _rv = ropecv::obj_as<cv::face::MACE>(ropecv_self_)->same(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("same: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("same: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_MACE_MACE_train__0(SEXP ropecv_self_, SEXP images) {
  try {
    ropecv::InArg _i0(images);
    ropecv::obj_as<cv::face::MACE>(ropecv_self_)->train(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("train: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("train: %s", e.what());
  }
}
