// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/reg/mapprojec.hpp>

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_new__0() {
  try {
    cv::Ptr<cv::reg::MapProjec> _rv(new cv::reg::MapProjec());
    return ropecv::wrap_obj(_rv, "cvMapProjec");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMapProjec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMapProjec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_new__1(SEXP projTr) {
  try {
    ropecv::InArg _i0(projTr);
    cv::Ptr<cv::reg::MapProjec> _rv(new cv::reg::MapProjec(_i0.ia()));
    return ropecv::wrap_obj(_rv, "cvMapProjec");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMapProjec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMapProjec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_compose__0(SEXP ropecv_self_, SEXP map) {
  try {
    ropecv::obj_as<cv::reg::MapProjec>(ropecv_self_)->compose(ropecv::as_ptr<cv::reg::Map>(map));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_getProjTr__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::reg::MapProjec>(ropecv_self_)->getProjTr(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getProjTr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getProjTr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_inverseMap__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::reg::Map> _rv = ropecv::obj_as<cv::reg::MapProjec>(ropecv_self_)->inverseMap();
    return ropecv::wrap_obj(_rv, "cvMap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("inverseMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inverseMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_inverseWarp__0(SEXP ropecv_self_, SEXP img1, SEXP dst) {
  try {
    ropecv::InArg _i0(img1);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::reg::MapProjec>(ropecv_self_)->inverseWarp(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("inverseWarp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inverseWarp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_normalize__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::reg::MapProjec>(ropecv_self_)->normalize();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("normalize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("normalize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapProjec_MapProjec_scale__0(SEXP ropecv_self_, double factor) {
  try {
    ropecv::obj_as<cv::reg::MapProjec>(ropecv_self_)->scale(factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("scale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("scale: %s", e.what());
  }
}
