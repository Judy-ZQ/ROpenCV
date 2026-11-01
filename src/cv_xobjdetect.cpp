// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/xobjdetect.hpp
#include "ropecv.h"
#include <opencv2/xobjdetect.hpp>

// [[Rcpp::export]]
SEXP cv_createFaceDetectionMaskGenerator() {
  try {
    cv::Ptr<cv::BaseCascadeClassifier::MaskGenerator> _rv = ::cv::createFaceDetectionMaskGenerator();
    return ropecv::wrap_obj(_rv, "cvMaskGenerator");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFaceDetectionMaskGenerator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFaceDetectionMaskGenerator: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_groupRectangles(SEXP rectList, int groupThreshold, double eps) {
  try {
    std::vector<cv::Rect> _o0;
    if (!Rf_isNull(rectList)) _o0 = ropecv::as_rects(rectList);
    std::vector<int> _o1;
    ::cv::groupRectangles(_o0, _o1, groupThreshold, eps);
    return Rcpp::List::create(Rcpp::Named("rectList") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("weights") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("groupRectangles: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("groupRectangles: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_groupRectangles_meanshift(SEXP rectList, SEXP foundWeights, SEXP foundScales, double detectThreshold, SEXP winDetSize) {
  try {
    std::vector<cv::Rect> _o0;
    if (!Rf_isNull(rectList)) _o0 = ropecv::as_rects(rectList);
    std::vector<double> _o1;
    if (!Rf_isNull(foundWeights)) _o1 = ropecv::as_dbl_vector(foundWeights);
    std::vector<double> _o2;
    if (!Rf_isNull(foundScales)) _o2 = ropecv::as_dbl_vector(foundScales);
    ::cv::groupRectangles_meanshift(_o0, _o1, _o2, detectThreshold, ropecv::as_size(winDetSize));
    return Rcpp::List::create(Rcpp::Named("rectList") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("foundWeights") = Rcpp::wrap(_o1),
                                Rcpp::Named("foundScales") = Rcpp::wrap(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("groupRectangles_meanshift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("groupRectangles_meanshift: %s", e.what());
  }
}
