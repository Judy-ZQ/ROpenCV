// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/reg/mappergradshift.hpp>

// [[Rcpp::export]]
SEXP cv_reg_MapperGradShift_MapperGradShift_new__0() {
  try {
    cv::Ptr<cv::reg::MapperGradShift> _rv(new cv::reg::MapperGradShift());
    return ropecv::wrap_obj(_rv, "cvMapperGradShift");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMapperGradShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMapperGradShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapperGradShift_MapperGradShift_calculate__0(SEXP ropecv_self_, SEXP img1, SEXP img2, SEXP init) {
  try {
    ropecv::InArg _i0(img1);
    ropecv::InArg _i1(img2);
    cv::Ptr<cv::reg::Map> _rv = ropecv::obj_as<cv::reg::MapperGradShift>(ropecv_self_)->calculate(_i0.ia(), _i1.ia(), ropecv::as_ptr<cv::reg::Map>(init));
    return ropecv::wrap_obj(_rv, "cvMap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("calculate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calculate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reg_MapperGradShift_MapperGradShift_getMap__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::reg::Map> _rv = ropecv::obj_as<cv::reg::MapperGradShift>(ropecv_self_)->getMap();
    return ropecv::wrap_obj(_rv, "cvMap");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMap: %s", e.what());
  }
}
