// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/core.hpp>
#include <opencv2/core/types.hpp>

// [[Rcpp::export]]
SEXP cv_DMatch_DMatch_new__0() {
  try {
    cv::Ptr<cv::DMatch> _rv(new cv::DMatch());
    return ropecv::wrap_obj(_rv, "cvDMatch");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DMatch_DMatch_new__1(int queryIdx, int trainIdx, double distance) {
  try {
    cv::Ptr<cv::DMatch> _rv(new cv::DMatch(queryIdx, trainIdx, (float)distance));
    return ropecv::wrap_obj(_rv, "cvDMatch");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DMatch_DMatch_new__2(int queryIdx, int trainIdx, int imgIdx, double distance) {
  try {
    cv::Ptr<cv::DMatch> _rv(new cv::DMatch(queryIdx, trainIdx, imgIdx, (float)distance));
    return ropecv::wrap_obj(_rv, "cvDMatch");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KeyPoint_KeyPoint_new__0() {
  try {
    cv::Ptr<cv::KeyPoint> _rv(new cv::KeyPoint());
    return ropecv::wrap_obj(_rv, "cvKeyPoint");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKeyPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKeyPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KeyPoint_KeyPoint_new__1(double x, double y, double size, double angle, double response, int octave, int class_id) {
  try {
    cv::Ptr<cv::KeyPoint> _rv(new cv::KeyPoint((float)x, (float)y, (float)size, (float)angle, (float)response, octave, class_id));
    return ropecv::wrap_obj(_rv, "cvKeyPoint");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKeyPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKeyPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KeyPoint_KeyPoint_overlap__0(SEXP kp1, SEXP kp2) {
  try {
    cv::KeyPoint _s0 = Rf_isNull(kp1) ? cv::KeyPoint() : *ropecv::obj_as<cv::KeyPoint>(kp1);
    cv::KeyPoint _s1 = Rf_isNull(kp2) ? cv::KeyPoint() : *ropecv::obj_as<cv::KeyPoint>(kp2);
    double _rv = cv::KeyPoint::overlap(_s0, _s1);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("overlap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("overlap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KeyPoint_KeyPoint_convert__1(SEXP keypoints, SEXP keypointIndexes) {
  try {
    std::vector<cv::KeyPoint> _a0 = ropecv::as_keypoints(keypoints);
    std::vector<int> _a1 = ropecv::as_int_vector(keypointIndexes);
    std::vector<cv::Point2f> _o0;
    cv::KeyPoint::convert(_a0, _o0, _a1);
    return ropecv::wrap_points2f(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("convert: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convert: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KeyPoint_KeyPoint_convert__2(SEXP points2f, double size, double response, int octave, int class_id) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(points2f);
    std::vector<cv::KeyPoint> _o0;
    cv::KeyPoint::convert(_a0, _o0, (float)size, (float)response, octave, class_id);
    return ropecv::wrap_keypoints(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("convert: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convert: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RotatedRect_RotatedRect_new__0() {
  try {
    cv::Ptr<cv::RotatedRect> _rv(new cv::RotatedRect());
    return ropecv::wrap_obj(_rv, "cvRotatedRect");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvRotatedRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvRotatedRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RotatedRect_RotatedRect_new__1(SEXP center, SEXP size, double angle) {
  try {
    cv::Ptr<cv::RotatedRect> _rv(new cv::RotatedRect(ropecv::as_point2f(center), ropecv::as_size2f(size), (float)angle));
    return ropecv::wrap_obj(_rv, "cvRotatedRect");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvRotatedRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvRotatedRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RotatedRect_RotatedRect_new__2(SEXP point1, SEXP point2, SEXP point3) {
  try {
    cv::Ptr<cv::RotatedRect> _rv(new cv::RotatedRect(ropecv::as_point2f(point1), ropecv::as_point2f(point2), ropecv::as_point2f(point3)));
    return ropecv::wrap_obj(_rv, "cvRotatedRect");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvRotatedRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvRotatedRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RotatedRect_RotatedRect_boundingRect__0(SEXP ropecv_self_) {
  try {
    cv::Rect _rv = ropecv::obj_as<cv::RotatedRect>(ropecv_self_)->boundingRect();
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("boundingRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("boundingRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RotatedRect_RotatedRect_boundingRect2f__0(SEXP ropecv_self_) {
  try {
    cv::Rect2f _rv = ropecv::obj_as<cv::RotatedRect>(ropecv_self_)->boundingRect2f();
    return ropecv::wrap_rect2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("boundingRect2f: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("boundingRect2f: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RotatedRect_RotatedRect_points__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Point2f> _o0;
    ropecv::obj_as<cv::RotatedRect>(ropecv_self_)->points(_o0);
    return ropecv::wrap_points2f(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("points: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("points: %s", e.what());
  }
}
