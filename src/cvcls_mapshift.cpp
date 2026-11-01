// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/reg/mapshift.hpp>

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_new__0() {
  try {
    cv::Ptr<cv::reg::MapShift> _rv(new cv::reg::MapShift());
    return ropecv::wrap_obj(_rv, "cvMapShift");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMapShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMapShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_new__1(SEXP shift) {
  try {
    ropecv::InArg _i0(shift);
    cv::Ptr<cv::reg::MapShift> _rv(new cv::reg::MapShift(_i0.ia()));
    return ropecv::wrap_obj(_rv, "cvMapShift");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMapShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMapShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_compose__0(SEXP ropecv_self_, SEXP map) {
  try {
    ropecv::obj_as<cv::reg::MapShift>(ropecv_self_)->compose(ropecv::as_ptr<cv::reg::Map>(map));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_getShift__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::reg::MapShift>(ropecv_self_)->getShift(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_inverseMap__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::reg::Map> _rv = ropecv::obj_as<cv::reg::MapShift>(ropecv_self_)->inverseMap();
    return ropecv::wrap_obj(_rv, "cvMap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("inverseMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inverseMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_inverseWarp__0(SEXP ropecv_self_, SEXP img1, SEXP dst) {
  try {
    ropecv::InArg _i0(img1);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::reg::MapShift>(ropecv_self_)->inverseWarp(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("inverseWarp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inverseWarp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapShift_MapShift_scale__0(SEXP ropecv_self_, double factor) {
  try {
    ropecv::obj_as<cv::reg::MapShift>(ropecv_self_)->scale(factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("scale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("scale: %s", e.what());
  }
}
