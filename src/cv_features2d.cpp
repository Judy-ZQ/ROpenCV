// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/features2d.hpp
#include "ropecv.h"
#include <opencv2/features2d.hpp>

// [[Rcpp::export]]
SEXP cv_AGAST(SEXP image, int threshold, bool nonmaxSuppression, int type) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::KeyPoint> _o0;
    ::cv::AGAST(_i0.ia(), _o0, threshold, nonmaxSuppression, (cv::AgastFeatureDetector::DetectorType)type);
    return ropecv::wrap_keypoints(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("AGAST: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("AGAST: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FAST(SEXP image, int threshold, bool nonmaxSuppression, int type) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::KeyPoint> _o0;
    ::cv::FAST(_i0.ia(), _o0, threshold, nonmaxSuppression, (cv::FastFeatureDetector::DetectorType)type);
    return ropecv::wrap_keypoints(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("FAST: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FAST: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeRecallPrecisionCurve(SEXP matches1to2, SEXP correctMatches1to2Mask, SEXP recallPrecisionCurve) {
  try {
    std::vector<std::vector<cv::DMatch>> _a0 = ropecv::as_dmatches_list(matches1to2);
    std::vector<std::vector<uchar>> _a1 = Rcpp::as<std::vector<std::vector<uchar> > >(correctMatches1to2Mask);
    std::vector<cv::Point2f> _o0;
    if (!Rf_isNull(recallPrecisionCurve)) _o0 = ropecv::as_points2f(recallPrecisionCurve);
    ::cv::computeRecallPrecisionCurve(_a0, _a1, _o0);
    return Rcpp::List::create(Rcpp::Named("recallPrecisionCurve") = ropecv::wrap_points2f(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeRecallPrecisionCurve: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeRecallPrecisionCurve: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawKeypoints(SEXP image, SEXP keypoints, SEXP outImage, SEXP color, int flags) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::KeyPoint> _a1 = ropecv::as_keypoints(keypoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(outImage) ? &_owned0 : ropecv::mat_ptr(outImage);
    ::cv::drawKeypoints(_i0.ia(), _a1, cv::_InputOutputArray(*_p0), ropecv::as_scalar(color), (cv::DrawMatchesFlags)flags);
    return Rf_isNull(outImage) ? ropecv::wrap_mat(std::move(_owned0)) : outImage;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawKeypoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawKeypoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawMatches__0(SEXP img1, SEXP keypoints1, SEXP img2, SEXP keypoints2, SEXP matches1to2, SEXP outImg, SEXP matchColor, SEXP singlePointColor, SEXP matchesMask, int flags) {
  try {
    ropecv::InArg _i0(img1);
    std::vector<cv::KeyPoint> _a1 = ropecv::as_keypoints(keypoints1);
    ropecv::InArg _i2(img2);
    std::vector<cv::KeyPoint> _a3 = ropecv::as_keypoints(keypoints2);
    std::vector<cv::DMatch> _a4 = ropecv::as_dmatches(matches1to2);
    std::vector<char> _a5 = ropecv::as_char_vector(matchesMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(outImg) ? &_owned0 : ropecv::mat_ptr(outImg);
    ::cv::drawMatches(_i0.ia(), _a1, _i2.ia(), _a3, _a4, cv::_InputOutputArray(*_p0), ropecv::as_scalar(matchColor), ropecv::as_scalar(singlePointColor), _a5, (cv::DrawMatchesFlags)flags);
    return Rf_isNull(outImg) ? ropecv::wrap_mat(std::move(_owned0)) : outImg;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawMatches: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawMatches__1(SEXP img1, SEXP keypoints1, SEXP img2, SEXP keypoints2, SEXP matches1to2, SEXP outImg, int matchesThickness, SEXP matchColor, SEXP singlePointColor, SEXP matchesMask, int flags) {
  try {
    ropecv::InArg _i0(img1);
    std::vector<cv::KeyPoint> _a1 = ropecv::as_keypoints(keypoints1);
    ropecv::InArg _i2(img2);
    std::vector<cv::KeyPoint> _a3 = ropecv::as_keypoints(keypoints2);
    std::vector<cv::DMatch> _a4 = ropecv::as_dmatches(matches1to2);
    std::vector<char> _a5 = ropecv::as_char_vector(matchesMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(outImg) ? &_owned0 : ropecv::mat_ptr(outImg);
    ::cv::drawMatches(_i0.ia(), _a1, _i2.ia(), _a3, _a4, cv::_InputOutputArray(*_p0), matchesThickness, ropecv::as_scalar(matchColor), ropecv::as_scalar(singlePointColor), _a5, (cv::DrawMatchesFlags)flags);
    return Rf_isNull(outImg) ? ropecv::wrap_mat(std::move(_owned0)) : outImg;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawMatches: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_evaluateFeatureDetector(SEXP img1, SEXP img2, SEXP H1to2, SEXP repeatability, SEXP correspCount, SEXP fdetector) {
  try {
    cv::Mat _m0 = Rf_isNull(img1) ? cv::Mat() : *ropecv::mat_ptr(img1);
    cv::Mat _m1 = Rf_isNull(img2) ? cv::Mat() : *ropecv::mat_ptr(img2);
    cv::Mat _m2 = Rf_isNull(H1to2) ? cv::Mat() : *ropecv::mat_ptr(H1to2);
    std::vector<cv::KeyPoint> _o0;
    std::vector<cv::KeyPoint> _o1;
    float _o2 = 0;
    if (!Rf_isNull(repeatability)) _o2 = Rcpp::as<double>(repeatability);
    int _o3 = 0;
    if (!Rf_isNull(correspCount)) _o3 = Rcpp::as<int>(correspCount);
    ::cv::evaluateFeatureDetector(_m0, _m1, _m2, &_o0, &_o1, _o2, _o3, ropecv::as_ptr<cv::FeatureDetector>(fdetector));
    return Rcpp::List::create(Rcpp::Named("keypoints1") = ropecv::wrap_keypoints(_o0),
                                Rcpp::Named("keypoints2") = ropecv::wrap_keypoints(_o1),
                                Rcpp::Named("repeatability") = Rf_ScalarReal((double)_o2),
                                Rcpp::Named("correspCount") = Rf_ScalarInteger(_o3));
  } catch (const cv::Exception& e) {
    Rcpp::stop("evaluateFeatureDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("evaluateFeatureDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getNearestPoint(SEXP recallPrecisionCurve, double l_precision) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(recallPrecisionCurve);
    int _rv = ::cv::getNearestPoint(_a0, (float)l_precision);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNearestPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNearestPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getRecall(SEXP recallPrecisionCurve, double l_precision) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(recallPrecisionCurve);
    double _rv = ::cv::getRecall(_a0, (float)l_precision);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRecall: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRecall: %s", e.what());
  }
}
