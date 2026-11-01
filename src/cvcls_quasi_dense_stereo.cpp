// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/xstereo.hpp>
#include <opencv2/xstereo/quasi_dense_stereo.hpp>

// [[Rcpp::export]]
SEXP cv_stereo_MatchQuasiDense_MatchQuasiDense_new__0() {
  try {
    cv::Ptr<cv::stereo::MatchQuasiDense> _rv(new cv::stereo::MatchQuasiDense());
    return ropecv::wrap_obj(_rv, "cvMatchQuasiDense");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMatchQuasiDense: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMatchQuasiDense: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_create__0(SEXP monoImgSize, std::string paramFilepath) {
  try {
    cv::Ptr<cv::stereo::QuasiDenseStereo> _rv = cv::stereo::QuasiDenseStereo::create(ropecv::as_size(monoImgSize), paramFilepath);
    return ropecv::wrap_obj(_rv, "cvQuasiDenseStereo");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDenseMatches__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::stereo::MatchQuasiDense> _o0;
    ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->getDenseMatches(_o0);
    return ropecv::wrap_vec_stereo_MatchQuasiDense(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDenseMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDenseMatches: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDisparity__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->getDisparity();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDisparity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDisparity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getMatch__0(SEXP ropecv_self_, int x, int y) {
  try {
    cv::Point2f _rv = ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->getMatch(x, y);
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getSparseMatches__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::stereo::MatchQuasiDense> _o0;
    ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->getSparseMatches(_o0);
    return ropecv::wrap_vec_stereo_MatchQuasiDense(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSparseMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSparseMatches: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_loadParameters__0(SEXP ropecv_self_, std::string filepath) {
  try {
    int _rv = ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->loadParameters(filepath);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_process__0(SEXP ropecv_self_, SEXP imgLeft, SEXP imgRight) {
  try {
    cv::Mat _m0 = Rf_isNull(imgLeft) ? cv::Mat() : *ropecv::mat_ptr(imgLeft);
    cv::Mat _m1 = Rf_isNull(imgRight) ? cv::Mat() : *ropecv::mat_ptr(imgRight);
    ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->process(_m0, _m1);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereo_QuasiDenseStereo_QuasiDenseStereo_saveParameters__0(SEXP ropecv_self_, std::string filepath) {
  try {
    int _rv = ropecv::obj_as<cv::stereo::QuasiDenseStereo>(ropecv_self_)->saveParameters(filepath);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("saveParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("saveParameters: %s", e.what());
  }
}
