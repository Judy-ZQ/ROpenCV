// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/white_balance.hpp
#include "ropecv.h"
#include <opencv2/xphoto/white_balance.hpp>

// [[Rcpp::export]]
SEXP cv_applyChannelGains(SEXP src, double gainB, double gainG, double gainR, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::xphoto::applyChannelGains(_i0.ia(), cv::_OutputArray(*_p0), (float)gainB, (float)gainG, (float)gainR);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyChannelGains: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyChannelGains: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createGrayworldWB() {
  try {
    cv::Ptr<cv::xphoto::GrayworldWB> _rv = ::cv::xphoto::createGrayworldWB();
    return ropecv::wrap_obj(_rv, "cvGrayworldWB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createGrayworldWB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createGrayworldWB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createLearningBasedWB(std::string path_to_model) {
  try {
    cv::Ptr<cv::xphoto::LearningBasedWB> _rv = ::cv::xphoto::createLearningBasedWB(path_to_model);
    return ropecv::wrap_obj(_rv, "cvLearningBasedWB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createLearningBasedWB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createLearningBasedWB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSimpleWB() {
  try {
    cv::Ptr<cv::xphoto::SimpleWB> _rv = ::cv::xphoto::createSimpleWB();
    return ropecv::wrap_obj(_rv, "cvSimpleWB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSimpleWB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSimpleWB: %s", e.what());
  }
}
