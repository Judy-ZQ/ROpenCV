// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/odometry_frame.hpp>

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_new__0(SEXP depth, SEXP image, SEXP mask, SEXP normals) {
  try {
    ropecv::InArg _i0(depth);
    ropecv::InArg _i1(image);
    ropecv::InArg _i2(mask);
    ropecv::InArg _i3(normals);
    cv::Ptr<cv::OdometryFrame> _rv(new cv::OdometryFrame(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia()));
    return ropecv::wrap_obj(_rv, "cvOdometryFrame");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvOdometryFrame: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvOdometryFrame: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getDepth__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getDepth(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getGrayImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getGrayImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGrayImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGrayImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getMask__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getMask(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getNormals__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getNormals(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getProcessedDepth__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getProcessedDepth(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getProcessedDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getProcessedDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getPyramidAt__0(SEXP ropecv_self_, SEXP dst, int pyrType, int level) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getPyramidAt(cv::_OutputArray(*_p0), (cv::OdometryFramePyramidType)pyrType, (size_t)level);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPyramidAt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPyramidAt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometryFrame_OdometryFrame_getPyramidLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::OdometryFrame>(ropecv_self_)->getPyramidLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPyramidLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPyramidLevels: %s", e.what());
  }
}
