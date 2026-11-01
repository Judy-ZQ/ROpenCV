// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/facemark.hpp
#include "ropecv.h"
#include <opencv2/face/facemark.hpp>

// [[Rcpp::export]]
SEXP cv_createFacemarkAAM() {
  try {
    cv::Ptr<cv::face::Facemark> _rv = ::cv::face::createFacemarkAAM();
    return ropecv::wrap_obj(_rv, "cvFacemark");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFacemarkAAM: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFacemarkAAM: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createFacemarkKazemi() {
  try {
    cv::Ptr<cv::face::Facemark> _rv = ::cv::face::createFacemarkKazemi();
    return ropecv::wrap_obj(_rv, "cvFacemark");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFacemarkKazemi: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFacemarkKazemi: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createFacemarkLBF() {
  try {
    cv::Ptr<cv::face::Facemark> _rv = ::cv::face::createFacemarkLBF();
    return ropecv::wrap_obj(_rv, "cvFacemark");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFacemarkLBF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFacemarkLBF: %s", e.what());
  }
}
