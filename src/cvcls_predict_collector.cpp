// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/face/predict_collector.hpp>

// [[Rcpp::export]]
SEXP cv_face_StandardCollector_StandardCollector_create__0(double threshold) {
  try {
    cv::Ptr<cv::face::StandardCollector> _rv = cv::face::StandardCollector::create(threshold);
    return ropecv::wrap_obj(_rv, "cvStandardCollector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_StandardCollector_StandardCollector_getMinDist__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::face::StandardCollector>(ropecv_self_)->getMinDist();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinDist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinDist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_StandardCollector_StandardCollector_getMinLabel__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::face::StandardCollector>(ropecv_self_)->getMinLabel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinLabel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinLabel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_StandardCollector_StandardCollector_getResults__0(SEXP ropecv_self_, bool sorted) {
  try {
    std::vector<std::pair<int, double> > _rv = ropecv::obj_as<cv::face::StandardCollector>(ropecv_self_)->getResults(sorted);
    return ropecv::wrap_int_double_pairs(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getResults: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getResults: %s", e.what());
  }
}
