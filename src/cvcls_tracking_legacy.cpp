// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/tracking.hpp>
#include <opencv2/tracking/tracking_legacy.hpp>

// [[Rcpp::export]]
SEXP cv_legacy_tracking_MultiTracker_MultiTracker_new__0() {
  try {
    cv::Ptr<cv::legacy::tracking::MultiTracker> _rv(new cv::legacy::tracking::MultiTracker());
    return ropecv::wrap_obj(_rv, "cvMultiTracker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMultiTracker: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMultiTracker: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_MultiTracker_MultiTracker_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::MultiTracker> _rv = cv::legacy::tracking::MultiTracker::create();
    return ropecv::wrap_obj(_rv, "cvMultiTracker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_MultiTracker_MultiTracker_add__0(SEXP ropecv_self_, SEXP newTracker, SEXP image, SEXP boundingBox) {
  try {
    ropecv::InArg _i0(image);
    std::vector<double> _v1 = Rcpp::as<std::vector<double> >(boundingBox); cv::Rect2d _r1(_v1[0], _v1[1], _v1[2], _v1[3]);
    bool _rv = ropecv::obj_as<cv::legacy::tracking::MultiTracker>(ropecv_self_)->add(ropecv::as_ptr<cv::legacy::Tracker>(newTracker), _i0.ia(), _r1);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("add: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("add: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_MultiTracker_MultiTracker_getObjects__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Rect2d> _rv = ropecv::obj_as<cv::legacy::tracking::MultiTracker>(ropecv_self_)->getObjects();
    return ropecv::wrap_rects2d(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getObjects: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getObjects: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_MultiTracker_MultiTracker_update__0(SEXP ropecv_self_, SEXP image) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Rect2d> _o0;
    bool _rv = ropecv::obj_as<cv::legacy::tracking::MultiTracker>(ropecv_self_)->update(_i0.ia(), _o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("boundingBox") = ropecv::wrap_rects2d(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_Tracker_Tracker_init__0(SEXP ropecv_self_, SEXP image, SEXP boundingBox) {
  try {
    ropecv::InArg _i0(image);
    std::vector<double> _v1 = Rcpp::as<std::vector<double> >(boundingBox); cv::Rect2d _r1(_v1[0], _v1[1], _v1[2], _v1[3]);
    bool _rv = ropecv::obj_as<cv::legacy::tracking::Tracker>(ropecv_self_)->init(_i0.ia(), _r1);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("init: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("init: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_Tracker_Tracker_update__0(SEXP ropecv_self_, SEXP image) {
  try {
    ropecv::InArg _i0(image);
    cv::Rect2d _o0;
    bool _rv = ropecv::obj_as<cv::legacy::tracking::Tracker>(ropecv_self_)->update(_i0.ia(), _o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("boundingBox") = Rcpp::NumericVector::create(_o0.x, _o0.y, _o0.width, _o0.height));
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerBoosting_TrackerBoosting_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerBoosting> _rv = cv::legacy::tracking::TrackerBoosting::create();
    return ropecv::wrap_obj(_rv, "cvTrackerBoosting");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerCSRT_TrackerCSRT_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerCSRT> _rv = cv::legacy::tracking::TrackerCSRT::create();
    return ropecv::wrap_obj(_rv, "cvLegacyTrackerCSRT");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerCSRT_TrackerCSRT_setInitialMask__0(SEXP ropecv_self_, SEXP mask) {
  try {
    ropecv::InArg _i0(mask);
    ropecv::obj_as<cv::legacy::tracking::TrackerCSRT>(ropecv_self_)->setInitialMask(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitialMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitialMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerKCF_TrackerKCF_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerKCF> _rv = cv::legacy::tracking::TrackerKCF::create();
    return ropecv::wrap_obj(_rv, "cvLegacyTrackerKCF");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerMIL_TrackerMIL_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerMIL> _rv = cv::legacy::tracking::TrackerMIL::create();
    return ropecv::wrap_obj(_rv, "cvLegacyTrackerMIL");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerMOSSE_TrackerMOSSE_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerMOSSE> _rv = cv::legacy::tracking::TrackerMOSSE::create();
    return ropecv::wrap_obj(_rv, "cvTrackerMOSSE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerMedianFlow_TrackerMedianFlow_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerMedianFlow> _rv = cv::legacy::tracking::TrackerMedianFlow::create();
    return ropecv::wrap_obj(_rv, "cvTrackerMedianFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_legacy_tracking_TrackerTLD_TrackerTLD_create__0() {
  try {
    cv::Ptr<cv::legacy::tracking::TrackerTLD> _rv = cv::legacy::tracking::TrackerTLD::create();
    return ropecv::wrap_obj(_rv, "cvTrackerTLD");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}
