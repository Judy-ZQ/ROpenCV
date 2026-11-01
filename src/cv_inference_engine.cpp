// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/inference_engine.hpp
#include "ropecv.h"
#include <opencv2/dnn.hpp>
#include <opencv2/dnn/utils/inference_engine.hpp>

// [[Rcpp::export]]
SEXP cv_getInferenceEngineBackendType() {
  try {
    std::string _rv = ::cv::dnn::getInferenceEngineBackendType();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInferenceEngineBackendType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInferenceEngineBackendType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getInferenceEngineCPUType() {
  try {
    std::string _rv = ::cv::dnn::getInferenceEngineCPUType();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInferenceEngineCPUType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInferenceEngineCPUType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getInferenceEngineVPUType() {
  try {
    std::string _rv = ::cv::dnn::getInferenceEngineVPUType();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInferenceEngineVPUType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInferenceEngineVPUType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_releaseHDDLPlugin() {
  try {
    ::cv::dnn::releaseHDDLPlugin();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("releaseHDDLPlugin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("releaseHDDLPlugin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resetMyriadDevice() {
  try {
    ::cv::dnn::resetMyriadDevice();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("resetMyriadDevice: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resetMyriadDevice: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_setInferenceEngineBackendType(std::string newBackendType) {
  try {
    std::string _rv = ::cv::dnn::setInferenceEngineBackendType(newBackendType);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInferenceEngineBackendType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInferenceEngineBackendType: %s", e.what());
  }
}
