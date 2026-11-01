// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/xfeatures2d.hpp
#include "ropecv.h"
#include <opencv2/xfeatures2d.hpp>

// [[Rcpp::export]]
SEXP cv_FASTForPointSet(SEXP image, SEXP keypoints, int threshold, bool nonmaxSuppression, int type) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::KeyPoint> _o0;
    if (!Rf_isNull(keypoints)) _o0 = ropecv::as_keypoints(keypoints);
    ::cv::xfeatures2d::FASTForPointSet(_i0.ia(), _o0, threshold, nonmaxSuppression, (cv::FastFeatureDetector::DetectorType)type);
    return Rcpp::List::create(Rcpp::Named("keypoints") = ropecv::wrap_keypoints(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("FASTForPointSet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FASTForPointSet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_matchGMS(SEXP size1, SEXP size2, SEXP keypoints1, SEXP keypoints2, SEXP matches1to2, bool withRotation, bool withScale, double thresholdFactor) {
  try {
    std::vector<cv::KeyPoint> _a0 = ropecv::as_keypoints(keypoints1);
    std::vector<cv::KeyPoint> _a1 = ropecv::as_keypoints(keypoints2);
    std::vector<cv::DMatch> _a2 = ropecv::as_dmatches(matches1to2);
    std::vector<cv::DMatch> _o0;
    ::cv::xfeatures2d::matchGMS(ropecv::as_size(size1), ropecv::as_size(size2), _a0, _a1, _a2, _o0, withRotation, withScale, thresholdFactor);
    return ropecv::wrap_dmatches(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("matchGMS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matchGMS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_matchLOGOS(SEXP keypoints1, SEXP keypoints2, SEXP nn1, SEXP nn2) {
  try {
    std::vector<cv::KeyPoint> _a0 = ropecv::as_keypoints(keypoints1);
    std::vector<cv::KeyPoint> _a1 = ropecv::as_keypoints(keypoints2);
    std::vector<int> _a2 = ropecv::as_int_vector(nn1);
    std::vector<int> _a3 = ropecv::as_int_vector(nn2);
    std::vector<cv::DMatch> _o0;
    ::cv::xfeatures2d::matchLOGOS(_a0, _a1, _a2, _a3, _o0);
    return ropecv::wrap_dmatches(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("matchLOGOS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matchLOGOS: %s", e.what());
  }
}
