// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/shape_distance.hpp
#include "ropecv.h"
#include <opencv2/shape/shape_distance.hpp>

// [[Rcpp::export]]
SEXP cv_createHausdorffDistanceExtractor(int distanceFlag, double rankProp) {
  try {
    cv::Ptr<cv::HausdorffDistanceExtractor> _rv = ::cv::createHausdorffDistanceExtractor(distanceFlag, (float)rankProp);
    return ropecv::wrap_obj(_rv, "cvHausdorffDistanceExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createHausdorffDistanceExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createHausdorffDistanceExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createShapeContextDistanceExtractor(int nAngularBins, int nRadialBins, double innerRadius, double outerRadius, int iterations, SEXP comparer, SEXP transformer) {
  try {
    cv::Ptr<cv::ShapeContextDistanceExtractor> _rv = ::cv::createShapeContextDistanceExtractor(nAngularBins, nRadialBins, (float)innerRadius, (float)outerRadius, iterations, ropecv::as_ptr<cv::HistogramCostExtractor>(comparer), ropecv::as_ptr<cv::ShapeTransformer>(transformer));
    return ropecv::wrap_obj(_rv, "cvShapeContextDistanceExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createShapeContextDistanceExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createShapeContextDistanceExtractor: %s", e.what());
  }
}
