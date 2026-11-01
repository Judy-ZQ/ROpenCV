// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/hfs.hpp>

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_create__0(int height, int width, double segEgbThresholdI, int minRegionSizeI, double segEgbThresholdII, int minRegionSizeII, double spatialWeight, int slicSpixelSize, int numSlicIter) {
  try {
    cv::Ptr<cv::hfs::HfsSegment> _rv = cv::hfs::HfsSegment::create(height, width, (float)segEgbThresholdI, minRegionSizeI, (float)segEgbThresholdII, minRegionSizeII, (float)spatialWeight, slicSpixelSize, numSlicIter);
    return ropecv::wrap_obj(_rv, "cvHfsSegment");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getMinRegionSizeI__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getMinRegionSizeI();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinRegionSizeI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinRegionSizeI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getMinRegionSizeII__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getMinRegionSizeII();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinRegionSizeII: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinRegionSizeII: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getNumSlicIter__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getNumSlicIter();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumSlicIter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumSlicIter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getSegEgbThresholdI__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getSegEgbThresholdI();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSegEgbThresholdI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSegEgbThresholdI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getSegEgbThresholdII__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getSegEgbThresholdII();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSegEgbThresholdII: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSegEgbThresholdII: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getSlicSpixelSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getSlicSpixelSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSlicSpixelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSlicSpixelSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_getSpatialWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->getSpatialWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSpatialWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSpatialWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_performSegmentCpu__0(SEXP ropecv_self_, SEXP src, bool ifDraw) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->performSegmentCpu(_i0.ia(), ifDraw);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("performSegmentCpu: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("performSegmentCpu: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_performSegmentGpu__0(SEXP ropecv_self_, SEXP src, bool ifDraw) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _rv = ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->performSegmentGpu(_i0.ia(), ifDraw);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("performSegmentGpu: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("performSegmentGpu: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setMinRegionSizeI__0(SEXP ropecv_self_, int n) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setMinRegionSizeI(n);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinRegionSizeI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinRegionSizeI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setMinRegionSizeII__0(SEXP ropecv_self_, int n) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setMinRegionSizeII(n);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinRegionSizeII: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinRegionSizeII: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setNumSlicIter__0(SEXP ropecv_self_, int n) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setNumSlicIter(n);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumSlicIter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumSlicIter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setSegEgbThresholdI__0(SEXP ropecv_self_, double c) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setSegEgbThresholdI((float)c);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSegEgbThresholdI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSegEgbThresholdI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setSegEgbThresholdII__0(SEXP ropecv_self_, double c) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setSegEgbThresholdII((float)c);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSegEgbThresholdII: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSegEgbThresholdII: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setSlicSpixelSize__0(SEXP ropecv_self_, int n) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setSlicSpixelSize(n);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSlicSpixelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSlicSpixelSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_hfs_HfsSegment_HfsSegment_setSpatialWeight__0(SEXP ropecv_self_, double w) {
  try {
    ropecv::obj_as<cv::hfs::HfsSegment>(ropecv_self_)->setSpatialWeight((float)w);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSpatialWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSpatialWeight: %s", e.what());
  }
}
