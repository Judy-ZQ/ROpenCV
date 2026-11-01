// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/shape_transformer.hpp
#include "ropecv.h"
#include <opencv2/shape/shape_transformer.hpp>

// [[Rcpp::export]]
SEXP cv_createAffineTransformer(bool fullAffine) {
  try {
    cv::Ptr<cv::AffineTransformer> _rv = ::cv::createAffineTransformer(fullAffine);
    return ropecv::wrap_obj(_rv, "cvAffineTransformer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createAffineTransformer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createAffineTransformer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createThinPlateSplineShapeTransformer(double regularizationParameter) {
  try {
    cv::Ptr<cv::ThinPlateSplineShapeTransformer> _rv = ::cv::createThinPlateSplineShapeTransformer(regularizationParameter);
    return ropecv::wrap_obj(_rv, "cvThinPlateSplineShapeTransformer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createThinPlateSplineShapeTransformer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createThinPlateSplineShapeTransformer: %s", e.what());
  }
}
