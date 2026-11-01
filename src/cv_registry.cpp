// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/registry.hpp
#include "ropecv.h"
#include <opencv2/videoio/registry.hpp>

// [[Rcpp::export]]
SEXP cv_getBackendName(int api) {
  try {
    std::string _rv = ::cv::videoio_registry::getBackendName((cv::VideoCaptureAPIs)api);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackendName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackendName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getCameraBackendPluginVersion(int api) {
  try {
    int _o0 = 0;
    int _o1 = 0;
    std::string _rv = ::cv::videoio_registry::getCameraBackendPluginVersion((cv::VideoCaptureAPIs)api, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("version_ABI") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("version_API") = Rf_ScalarInteger(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCameraBackendPluginVersion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCameraBackendPluginVersion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getStreamBackendPluginVersion(int api) {
  try {
    int _o0 = 0;
    int _o1 = 0;
    std::string _rv = ::cv::videoio_registry::getStreamBackendPluginVersion((cv::VideoCaptureAPIs)api, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("version_ABI") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("version_API") = Rf_ScalarInteger(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStreamBackendPluginVersion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStreamBackendPluginVersion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getWriterBackendPluginVersion(int api) {
  try {
    int _o0 = 0;
    int _o1 = 0;
    std::string _rv = ::cv::videoio_registry::getWriterBackendPluginVersion((cv::VideoCaptureAPIs)api, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("version_ABI") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("version_API") = Rf_ScalarInteger(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWriterBackendPluginVersion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWriterBackendPluginVersion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hasBackend(int api) {
  try {
    bool _rv = ::cv::videoio_registry::hasBackend((cv::VideoCaptureAPIs)api);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("hasBackend: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("hasBackend: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_isBackendBuiltIn(int api) {
  try {
    bool _rv = ::cv::videoio_registry::isBackendBuiltIn((cv::VideoCaptureAPIs)api);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isBackendBuiltIn: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isBackendBuiltIn: %s", e.what());
  }
}
