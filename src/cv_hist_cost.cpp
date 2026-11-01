// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/hist_cost.hpp
#include "ropecv.h"
#include <opencv2/shape/hist_cost.hpp>

// [[Rcpp::export]]
SEXP cv_createChiHistogramCostExtractor(int nDummies, double defaultCost) {
  try {
    cv::Ptr<cv::HistogramCostExtractor> _rv = ::cv::createChiHistogramCostExtractor(nDummies, (float)defaultCost);
    return ropecv::wrap_obj(_rv, "cvHistogramCostExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createChiHistogramCostExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createChiHistogramCostExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createEMDHistogramCostExtractor(int flag, int nDummies, double defaultCost) {
  try {
    cv::Ptr<cv::HistogramCostExtractor> _rv = ::cv::createEMDHistogramCostExtractor(flag, nDummies, (float)defaultCost);
    return ropecv::wrap_obj(_rv, "cvHistogramCostExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createEMDHistogramCostExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createEMDHistogramCostExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createEMDL1HistogramCostExtractor(int nDummies, double defaultCost) {
  try {
    cv::Ptr<cv::HistogramCostExtractor> _rv = ::cv::createEMDL1HistogramCostExtractor(nDummies, (float)defaultCost);
    return ropecv::wrap_obj(_rv, "cvHistogramCostExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createEMDL1HistogramCostExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createEMDL1HistogramCostExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createNormHistogramCostExtractor(int flag, int nDummies, double defaultCost) {
  try {
    cv::Ptr<cv::HistogramCostExtractor> _rv = ::cv::createNormHistogramCostExtractor(flag, nDummies, (float)defaultCost);
    return ropecv::wrap_obj(_rv, "cvHistogramCostExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createNormHistogramCostExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createNormHistogramCostExtractor: %s", e.what());
  }
}
