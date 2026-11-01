// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/aruco_dictionary.hpp
#include "ropecv.h"
#include <opencv2/objdetect/aruco_dictionary.hpp>

// [[Rcpp::export]]
SEXP cv_extendDictionary(int nMarkers, int markerSize, SEXP baseDictionary, int randomSeed) {
  try {
    cv::aruco::Dictionary _s0 = Rf_isNull(baseDictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(baseDictionary);
    cv::aruco::Dictionary _rv = ::cv::aruco::extendDictionary(nMarkers, markerSize, _s0, randomSeed);
    return ropecv::wrap_obj(cv::Ptr<cv::aruco::Dictionary>(std::make_shared<cv::aruco::Dictionary>(_rv)), "cvDictionary");
  } catch (const cv::Exception& e) {
    Rcpp::stop("extendDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("extendDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getPredefinedDictionary(int dict) {
  try {
    cv::aruco::Dictionary _rv = ::cv::aruco::getPredefinedDictionary(dict);
    return ropecv::wrap_obj(cv::Ptr<cv::aruco::Dictionary>(std::make_shared<cv::aruco::Dictionary>(_rv)), "cvDictionary");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPredefinedDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPredefinedDictionary: %s", e.what());
  }
}
