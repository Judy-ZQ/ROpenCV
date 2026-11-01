// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/reg/mapperpyramid.hpp>

// [[Rcpp::export]]
SEXP cv_reg_MapTypeCaster_MapTypeCaster_toAffine__0(SEXP sourceMap) {
  try {
    cv::Ptr<cv::reg::MapAffine> _rv = cv::reg::MapTypeCaster::toAffine(ropecv::as_ptr<cv::reg::Map>(sourceMap));
    return ropecv::wrap_obj(_rv, "cvMapAffine");
  } catch (const cv::Exception& e) {
    Rcpp::stop("toAffine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("toAffine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapTypeCaster_MapTypeCaster_toShift__1(SEXP sourceMap) {
  try {
    cv::Ptr<cv::reg::MapShift> _rv = cv::reg::MapTypeCaster::toShift(ropecv::as_ptr<cv::reg::Map>(sourceMap));
    return ropecv::wrap_obj(_rv, "cvMapShift");
  } catch (const cv::Exception& e) {
    Rcpp::stop("toShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("toShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapTypeCaster_MapTypeCaster_toProjec__2(SEXP sourceMap) {
  try {
    cv::Ptr<cv::reg::MapProjec> _rv = cv::reg::MapTypeCaster::toProjec(ropecv::as_ptr<cv::reg::Map>(sourceMap));
    return ropecv::wrap_obj(_rv, "cvMapProjec");
  } catch (const cv::Exception& e) {
    Rcpp::stop("toProjec: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("toProjec: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapperPyramid_MapperPyramid_new__0(SEXP baseMapper) {
  try {
    cv::Ptr<cv::reg::MapperPyramid> _rv(new cv::reg::MapperPyramid(ropecv::as_ptr<cv::reg::Mapper>(baseMapper)));
    return ropecv::wrap_obj(_rv, "cvMapperPyramid");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMapperPyramid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMapperPyramid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapperPyramid_MapperPyramid_calculate__0(SEXP ropecv_self_, SEXP img1, SEXP img2, SEXP init) {
  try {
    ropecv::InArg _i0(img1);
    ropecv::InArg _i1(img2);
    cv::Ptr<cv::reg::Map> _rv = ropecv::obj_as<cv::reg::MapperPyramid>(ropecv_self_)->calculate(_i0.ia(), _i1.ia(), ropecv::as_ptr<cv::reg::Map>(init));
    return ropecv::wrap_obj(_rv, "cvMap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("calculate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calculate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapperPyramid_MapperPyramid_getMap__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::reg::Map> _rv = ropecv::obj_as<cv::reg::MapperPyramid>(ropecv_self_)->getMap();
    return ropecv::wrap_obj(_rv, "cvMap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMap: %s", e.what());
  }
}
