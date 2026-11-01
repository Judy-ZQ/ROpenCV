// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/xfeatures2d.hpp>

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BEBLID_BEBLID_create__0(double scale_factor, int n_bits) {
  try {
    cv::Ptr<cv::xfeatures2d::BEBLID> _rv = cv::xfeatures2d::BEBLID::create((float)scale_factor, n_bits);
    return ropecv::wrap_obj(_rv, "cvBEBLID");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BEBLID_BEBLID_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::BEBLID>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BEBLID_BEBLID_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::BEBLID>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BEBLID_BEBLID_setScaleFactor__0(SEXP ropecv_self_, double scale_factor) {
  try {
    ropecv::obj_as<cv::xfeatures2d::BEBLID>(ropecv_self_)->setScaleFactor((float)scale_factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BoostDesc_BoostDesc_create__0(int desc, bool use_scale_orientation, double scale_factor) {
  try {
    cv::Ptr<cv::xfeatures2d::BoostDesc> _rv = cv::xfeatures2d::BoostDesc::create(desc, use_scale_orientation, (float)scale_factor);
    return ropecv::wrap_obj(_rv, "cvBoostDesc");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BoostDesc_BoostDesc_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::BoostDesc>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BoostDesc_BoostDesc_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::BoostDesc>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BoostDesc_BoostDesc_getUseScaleOrientation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::BoostDesc>(ropecv_self_)->getUseScaleOrientation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseScaleOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseScaleOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BoostDesc_BoostDesc_setScaleFactor__0(SEXP ropecv_self_, double scale_factor) {
  try {
    ropecv::obj_as<cv::xfeatures2d::BoostDesc>(ropecv_self_)->setScaleFactor((float)scale_factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BoostDesc_BoostDesc_setUseScaleOrientation__0(SEXP ropecv_self_, bool use_scale_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::BoostDesc>(ropecv_self_)->setUseScaleOrientation(use_scale_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseScaleOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseScaleOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_create__0(int bytes, bool use_orientation) {
  try {
    cv::Ptr<cv::xfeatures2d::BriefDescriptorExtractor> _rv = cv::xfeatures2d::BriefDescriptorExtractor::create(bytes, use_orientation);
    return ropecv::wrap_obj(_rv, "cvBriefDescriptorExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::BriefDescriptorExtractor>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_getDescriptorSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::BriefDescriptorExtractor>(ropecv_self_)->getDescriptorSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDescriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDescriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_getUseOrientation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::BriefDescriptorExtractor>(ropecv_self_)->getUseOrientation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_setDescriptorSize__0(SEXP ropecv_self_, int bytes) {
  try {
    ropecv::obj_as<cv::xfeatures2d::BriefDescriptorExtractor>(ropecv_self_)->setDescriptorSize(bytes);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDescriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDescriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_setUseOrientation__0(SEXP ropecv_self_, bool use_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::BriefDescriptorExtractor>(ropecv_self_)->setUseOrientation(use_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_create__0(double radius, int q_radius, int q_theta, int q_hist, int norm, SEXP H, bool interpolation, bool use_orientation) {
  try {
    ropecv::InArg _i0(H);
    cv::Ptr<cv::xfeatures2d::DAISY> _rv = cv::xfeatures2d::DAISY::create((float)radius, q_radius, q_theta, q_hist, (cv::xfeatures2d::DAISY::NormalizationType)norm, _i0.ia(), interpolation, use_orientation);
    return ropecv::wrap_obj(_rv, "cvDAISY");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getH__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getH();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getH: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getH: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getInterpolation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getInterpolation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInterpolation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInterpolation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getNorm__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getNorm();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNorm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNorm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getQHist__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getQHist();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getQHist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getQHist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getQRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getQRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getQRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getQRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getQTheta__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getQTheta();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getQTheta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getQTheta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getRadius__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getRadius();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_getUseOrientation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->getUseOrientation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setH__0(SEXP ropecv_self_, SEXP H) {
  try {
    ropecv::InArg _i0(H);
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setH(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setH: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setH: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setInterpolation__0(SEXP ropecv_self_, bool interpolation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setInterpolation(interpolation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInterpolation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInterpolation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setNorm__0(SEXP ropecv_self_, int norm) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setNorm(norm);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNorm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNorm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setQHist__0(SEXP ropecv_self_, int q_hist) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setQHist(q_hist);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setQHist: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setQHist: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setQRadius__0(SEXP ropecv_self_, int q_radius) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setQRadius(q_radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setQRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setQRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setQTheta__0(SEXP ropecv_self_, int q_theta) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setQTheta(q_theta);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setQTheta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setQTheta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setRadius__0(SEXP ropecv_self_, double radius) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setRadius((float)radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_DAISY_DAISY_setUseOrientation__0(SEXP ropecv_self_, bool use_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::DAISY>(ropecv_self_)->setUseOrientation(use_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_create__0(bool orientationNormalized, bool scaleNormalized, double patternScale, int nOctaves, SEXP selectedPairs) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(selectedPairs);
    cv::Ptr<cv::xfeatures2d::FREAK> _rv = cv::xfeatures2d::FREAK::create(orientationNormalized, scaleNormalized, (float)patternScale, nOctaves, _a0);
    return ropecv::wrap_obj(_rv, "cvFREAK");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_getNOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->getNOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_getOrientationNormalized__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->getOrientationNormalized();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOrientationNormalized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOrientationNormalized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_getPatternScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->getPatternScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPatternScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPatternScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_getScaleNormalized__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->getScaleNormalized();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleNormalized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleNormalized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_setNOctaves__0(SEXP ropecv_self_, int nOctaves) {
  try {
    ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->setNOctaves(nOctaves);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_setOrientationNormalized__0(SEXP ropecv_self_, bool orientationNormalized) {
  try {
    ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->setOrientationNormalized(orientationNormalized);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOrientationNormalized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOrientationNormalized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_setPatternScale__0(SEXP ropecv_self_, double patternScale) {
  try {
    ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->setPatternScale(patternScale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPatternScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPatternScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_FREAK_FREAK_setScaleNormalized__0(SEXP ropecv_self_, bool scaleNormalized) {
  try {
    ropecv::obj_as<cv::xfeatures2d::FREAK>(ropecv_self_)->setScaleNormalized(scaleNormalized);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleNormalized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleNormalized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_create__0(int numOctaves, double corn_thresh, double DOG_thresh, int maxCorners, int num_layers) {
  try {
    cv::Ptr<cv::xfeatures2d::HarrisLaplaceFeatureDetector> _rv = cv::xfeatures2d::HarrisLaplaceFeatureDetector::create(numOctaves, (float)corn_thresh, (float)DOG_thresh, maxCorners, num_layers);
    return ropecv::wrap_obj(_rv, "cvHarrisLaplaceFeatureDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getCornThresh__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->getCornThresh();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCornThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCornThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getDOGThresh__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->getDOGThresh();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDOGThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDOGThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getMaxCorners__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->getMaxCorners();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxCorners: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxCorners: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getNumLayers__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->getNumLayers();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getNumOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->getNumOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setCornThresh__0(SEXP ropecv_self_, double corn_thresh_) {
  try {
    ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->setCornThresh((float)corn_thresh_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCornThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCornThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setDOGThresh__0(SEXP ropecv_self_, double DOG_thresh_) {
  try {
    ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->setDOGThresh((float)DOG_thresh_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDOGThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDOGThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setMaxCorners__0(SEXP ropecv_self_, int maxCorners_) {
  try {
    ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->setMaxCorners(maxCorners_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxCorners: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxCorners: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setNumLayers__0(SEXP ropecv_self_, int num_layers_) {
  try {
    ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->setNumLayers(num_layers_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setNumOctaves__0(SEXP ropecv_self_, int numOctaves_) {
  try {
    ropecv::obj_as<cv::xfeatures2d::HarrisLaplaceFeatureDetector>(ropecv_self_)->setNumOctaves(numOctaves_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_create__0(int bytes, bool rotationInvariance, int half_ssd_size, double sigma) {
  try {
    cv::Ptr<cv::xfeatures2d::LATCH> _rv = cv::xfeatures2d::LATCH::create(bytes, rotationInvariance, half_ssd_size, sigma);
    return ropecv::wrap_obj(_rv, "cvLATCH");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_getBytes__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->getBytes();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBytes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBytes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_getHalfSSDsize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->getHalfSSDsize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHalfSSDsize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHalfSSDsize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_getRotationInvariance__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->getRotationInvariance();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRotationInvariance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRotationInvariance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_getSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->getSigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_setBytes__0(SEXP ropecv_self_, int bytes) {
  try {
    ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->setBytes(bytes);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBytes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBytes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_setHalfSSDsize__0(SEXP ropecv_self_, int half_ssd_size) {
  try {
    ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->setHalfSSDsize(half_ssd_size);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHalfSSDsize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHalfSSDsize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_setRotationInvariance__0(SEXP ropecv_self_, bool rotationInvariance) {
  try {
    ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->setRotationInvariance(rotationInvariance);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRotationInvariance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRotationInvariance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LATCH_LATCH_setSigma__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::xfeatures2d::LATCH>(ropecv_self_)->setSigma(sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LUCID_LUCID_create__0(int lucid_kernel, int blur_kernel) {
  try {
    cv::Ptr<cv::xfeatures2d::LUCID> _rv = cv::xfeatures2d::LUCID::create(lucid_kernel, blur_kernel);
    return ropecv::wrap_obj(_rv, "cvLUCID");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LUCID_LUCID_getBlurKernel__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::LUCID>(ropecv_self_)->getBlurKernel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBlurKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBlurKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LUCID_LUCID_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::LUCID>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LUCID_LUCID_getLucidKernel__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::LUCID>(ropecv_self_)->getLucidKernel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLucidKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLucidKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LUCID_LUCID_setBlurKernel__0(SEXP ropecv_self_, int blur_kernel) {
  try {
    ropecv::obj_as<cv::xfeatures2d::LUCID>(ropecv_self_)->setBlurKernel(blur_kernel);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBlurKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBlurKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_LUCID_LUCID_setLucidKernel__0(SEXP ropecv_self_, int lucid_kernel) {
  try {
    ropecv::obj_as<cv::xfeatures2d::LUCID>(ropecv_self_)->setLucidKernel(lucid_kernel);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLucidKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLucidKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_create__0(int m_patch_radius, int m_search_area_radius, int m_nms_radius, int m_nms_scale_radius, double m_th_saliency, int m_kNN, double m_scale_factor, int m_n_scales, bool m_compute_orientation) {
  try {
    cv::Ptr<cv::xfeatures2d::MSDDetector> _rv = cv::xfeatures2d::MSDDetector::create(m_patch_radius, m_search_area_radius, m_nms_radius, m_nms_scale_radius, (float)m_th_saliency, m_kNN, (float)m_scale_factor, m_n_scales, m_compute_orientation);
    return ropecv::wrap_obj(_rv, "cvMSDDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getComputeOrientation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getComputeOrientation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getComputeOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getComputeOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getKNN__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getKNN();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getKNN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getKNN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getNScales__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getNScales();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNScales: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNScales: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getNmsRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getNmsRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNmsRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNmsRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getNmsScaleRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getNmsScaleRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNmsScaleRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNmsScaleRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getPatchRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getPatchRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPatchRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPatchRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getSearchAreaRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getSearchAreaRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSearchAreaRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSearchAreaRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_getThSaliency__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->getThSaliency();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setComputeOrientation__0(SEXP ropecv_self_, bool compute_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setComputeOrientation(compute_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setComputeOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setComputeOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setKNN__0(SEXP ropecv_self_, int kNN) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setKNN(kNN);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setKNN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setKNN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setNScales__0(SEXP ropecv_self_, int use_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setNScales(use_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNScales: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNScales: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setNmsRadius__0(SEXP ropecv_self_, int nms_radius) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setNmsRadius(nms_radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNmsRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNmsRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setNmsScaleRadius__0(SEXP ropecv_self_, int nms_scale_radius) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setNmsScaleRadius(nms_scale_radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNmsScaleRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNmsScaleRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setPatchRadius__0(SEXP ropecv_self_, int patch_radius) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setPatchRadius(patch_radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPatchRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPatchRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setScaleFactor__0(SEXP ropecv_self_, double scale_factor) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setScaleFactor((float)scale_factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setSearchAreaRadius__0(SEXP ropecv_self_, int use_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setSearchAreaRadius(use_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSearchAreaRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSearchAreaRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_MSDDetector_MSDDetector_setThSaliency__0(SEXP ropecv_self_, double th_saliency) {
  try {
    ropecv::obj_as<cv::xfeatures2d::MSDDetector>(ropecv_self_)->setThSaliency((float)th_saliency);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_create__0(SEXP initSamplingPoints, int initSeedCount) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(initSamplingPoints);
    cv::Ptr<cv::xfeatures2d::PCTSignatures> _rv = cv::xfeatures2d::PCTSignatures::create(_a0, initSeedCount);
    return ropecv::wrap_obj(_rv, "cvPCTSignatures");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_create__1(SEXP initSamplingPoints, SEXP initClusterSeedIndexes) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(initSamplingPoints);
    std::vector<int> _a1 = ropecv::as_int_vector(initClusterSeedIndexes);
    cv::Ptr<cv::xfeatures2d::PCTSignatures> _rv = cv::xfeatures2d::PCTSignatures::create(_a0, _a1);
    return ropecv::wrap_obj(_rv, "cvPCTSignatures");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_create__2(int initSampleCount, int initSeedCount, int pointDistribution) {
  try {
    cv::Ptr<cv::xfeatures2d::PCTSignatures> _rv = cv::xfeatures2d::PCTSignatures::create(initSampleCount, initSeedCount, pointDistribution);
    return ropecv::wrap_obj(_rv, "cvPCTSignatures");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_generateInitPoints__3(SEXP initPoints, int count, int pointDistribution) {
  try {
    std::vector<cv::Point2f> _o0;
    if (!Rf_isNull(initPoints)) _o0 = ropecv::as_points2f(initPoints);
    cv::xfeatures2d::PCTSignatures::generateInitPoints(_o0, count, pointDistribution);
    return Rcpp::List::create(Rcpp::Named("initPoints") = ropecv::wrap_points2f(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("generateInitPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("generateInitPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_drawSignature__4(SEXP source, SEXP signature, double radiusToShorterSideRatio, int borderThickness, SEXP dst) {
  try {
    ropecv::InArg _i0(source);
    ropecv::InArg _i1(signature);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::xfeatures2d::PCTSignatures::drawSignature(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), (float)radiusToShorterSideRatio, borderThickness);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawSignature: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawSignature: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_computeSignature__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->computeSignature(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSignature: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSignature: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_computeSignatures__0(SEXP ropecv_self_, SEXP images, SEXP signatures) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(images);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(signatures)) _o0 = ropecv::as_mat_vector(signatures);
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->computeSignatures(_a0, _o0);
    return Rcpp::List::create(Rcpp::Named("signatures") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSignatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSignatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getClusterMinSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getClusterMinSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getClusterMinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getClusterMinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getDistanceFunction__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getDistanceFunction();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDistanceFunction: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDistanceFunction: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getDropThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getDropThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDropThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDropThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getGrayscaleBits__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getGrayscaleBits();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGrayscaleBits: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGrayscaleBits: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getInitSeedCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getInitSeedCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInitSeedCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInitSeedCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getInitSeedIndexes__0(SEXP ropecv_self_) {
  try {
    std::vector<int> _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getInitSeedIndexes();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInitSeedIndexes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInitSeedIndexes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getIterationCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getIterationCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIterationCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIterationCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getJoiningDistance__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getJoiningDistance();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getJoiningDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getJoiningDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getMaxClustersCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getMaxClustersCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxClustersCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxClustersCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getSampleCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getSampleCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSampleCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSampleCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getSamplingPoints__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Point2f> _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getSamplingPoints();
    return ropecv::wrap_points2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSamplingPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSamplingPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightA__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightA();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightA: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightA: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightB__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightB();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightContrast__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightContrast();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightContrast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightContrast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightEntropy__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightEntropy();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightEntropy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightEntropy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightL__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightL();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightL: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightL: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightX__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightX();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightY__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWeightY();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_getWindowRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->getWindowRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWindowRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWindowRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setClusterMinSize__0(SEXP ropecv_self_, int clusterMinSize) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setClusterMinSize(clusterMinSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setClusterMinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setClusterMinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setDistanceFunction__0(SEXP ropecv_self_, int distanceFunction) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setDistanceFunction(distanceFunction);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDistanceFunction: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDistanceFunction: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setDropThreshold__0(SEXP ropecv_self_, double dropThreshold) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setDropThreshold((float)dropThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDropThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDropThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setGrayscaleBits__0(SEXP ropecv_self_, int grayscaleBits) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setGrayscaleBits(grayscaleBits);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGrayscaleBits: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGrayscaleBits: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setInitSeedIndexes__0(SEXP ropecv_self_, SEXP initSeedIndexes) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(initSeedIndexes);
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setInitSeedIndexes(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitSeedIndexes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitSeedIndexes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setIterationCount__0(SEXP ropecv_self_, int iterationCount) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setIterationCount(iterationCount);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIterationCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIterationCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setJoiningDistance__0(SEXP ropecv_self_, double joiningDistance) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setJoiningDistance((float)joiningDistance);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setJoiningDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setJoiningDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setMaxClustersCount__0(SEXP ropecv_self_, int maxClustersCount) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setMaxClustersCount(maxClustersCount);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxClustersCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxClustersCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setSamplingPoints__0(SEXP ropecv_self_, SEXP samplingPoints) {
  try {
    std::vector<cv::Point2f> _a0 = ropecv::as_points2f(samplingPoints);
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setSamplingPoints(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSamplingPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSamplingPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setTranslation__0(SEXP ropecv_self_, int idx, double value) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setTranslation(idx, (float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTranslation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTranslation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setTranslations__0(SEXP ropecv_self_, SEXP translations) {
  try {
    std::vector<float> _a0 = ropecv::as_flt_vector(translations);
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setTranslations(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTranslations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTranslations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeight__0(SEXP ropecv_self_, int idx, double value) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeight(idx, (float)value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightA__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightA((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightA: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightA: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightB__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightB((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightContrast__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightContrast((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightContrast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightContrast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightEntropy__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightEntropy((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightEntropy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightEntropy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightL__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightL((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightL: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightL: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightX__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightX((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightY__0(SEXP ropecv_self_, double weight) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeightY((float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeights__0(SEXP ropecv_self_, SEXP weights) {
  try {
    std::vector<float> _a0 = ropecv::as_flt_vector(weights);
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWeights(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignatures_PCTSignatures_setWindowRadius__0(SEXP ropecv_self_, int radius) {
  try {
    ropecv::obj_as<cv::xfeatures2d::PCTSignatures>(ropecv_self_)->setWindowRadius(radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWindowRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWindowRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignaturesSQFD_PCTSignaturesSQFD_create__0(int distanceFunction, int similarityFunction, double similarityParameter) {
  try {
    cv::Ptr<cv::xfeatures2d::PCTSignaturesSQFD> _rv = cv::xfeatures2d::PCTSignaturesSQFD::create(distanceFunction, similarityFunction, (float)similarityParameter);
    return ropecv::wrap_obj(_rv, "cvPCTSignaturesSQFD");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignaturesSQFD_PCTSignaturesSQFD_computeQuadraticFormDistance__0(SEXP ropecv_self_, SEXP signature0, SEXP signature1) {
  try {
    ropecv::InArg _i0(signature0);
    ropecv::InArg _i1(signature1);
    double _rv = ropecv::obj_as<cv::xfeatures2d::PCTSignaturesSQFD>(ropecv_self_)->computeQuadraticFormDistance(_i0.ia(), _i1.ia());
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeQuadraticFormDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeQuadraticFormDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_PCTSignaturesSQFD_PCTSignaturesSQFD_computeQuadraticFormDistances__0(SEXP ropecv_self_, SEXP sourceSignature, SEXP imageSignatures, SEXP distances) {
  try {
    cv::Mat _m0 = Rf_isNull(sourceSignature) ? cv::Mat() : *ropecv::mat_ptr(sourceSignature);
    std::vector<cv::Mat> _a1 = ropecv::as_mat_vector(imageSignatures);
    std::vector<float> _o0;
    if (!Rf_isNull(distances)) _o0 = ropecv::as_flt_vector(distances);
    ropecv::obj_as<cv::xfeatures2d::PCTSignaturesSQFD>(ropecv_self_)->computeQuadraticFormDistances(_m0, _a1, _o0);
    return Rcpp::List::create(Rcpp::Named("distances") = Rcpp::wrap(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeQuadraticFormDistances: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeQuadraticFormDistances: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_create__0(int maxSize, int responseThreshold, int lineThresholdProjected, int lineThresholdBinarized, int suppressNonmaxSize) {
  try {
    cv::Ptr<cv::xfeatures2d::StarDetector> _rv = cv::xfeatures2d::StarDetector::create(maxSize, responseThreshold, lineThresholdProjected, lineThresholdBinarized, suppressNonmaxSize);
    return ropecv::wrap_obj(_rv, "cvStarDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_getLineThresholdBinarized__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->getLineThresholdBinarized();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLineThresholdBinarized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLineThresholdBinarized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_getLineThresholdProjected__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->getLineThresholdProjected();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLineThresholdProjected: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLineThresholdProjected: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_getMaxSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->getMaxSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_getResponseThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->getResponseThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getResponseThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getResponseThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_getSuppressNonmaxSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->getSuppressNonmaxSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSuppressNonmaxSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSuppressNonmaxSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_setLineThresholdBinarized__0(SEXP ropecv_self_, int lineThresholdBinarized) {
  try {
    ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->setLineThresholdBinarized(lineThresholdBinarized);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLineThresholdBinarized: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLineThresholdBinarized: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_setLineThresholdProjected__0(SEXP ropecv_self_, int lineThresholdProjected) {
  try {
    ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->setLineThresholdProjected(lineThresholdProjected);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLineThresholdProjected: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLineThresholdProjected: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_setMaxSize__0(SEXP ropecv_self_, int maxSize) {
  try {
    ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->setMaxSize(maxSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_setResponseThreshold__0(SEXP ropecv_self_, int responseThreshold) {
  try {
    ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->setResponseThreshold(responseThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setResponseThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setResponseThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_StarDetector_StarDetector_setSuppressNonmaxSize__0(SEXP ropecv_self_, int suppressNonmaxSize) {
  try {
    ropecv::obj_as<cv::xfeatures2d::StarDetector>(ropecv_self_)->setSuppressNonmaxSize(suppressNonmaxSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSuppressNonmaxSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSuppressNonmaxSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_create__0(int min_area, double max_area_relative, double scale_factor, int n_scales) {
  try {
    cv::Ptr<cv::xfeatures2d::TBMR> _rv = cv::xfeatures2d::TBMR::create(min_area, (float)max_area_relative, (float)scale_factor, n_scales);
    return ropecv::wrap_obj(_rv, "cvTBMR");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_getMaxAreaRelative__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->getMaxAreaRelative();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxAreaRelative: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxAreaRelative: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_getMinArea__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->getMinArea();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_getNScales__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->getNScales();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNScales: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNScales: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_setMaxAreaRelative__0(SEXP ropecv_self_, double maxArea) {
  try {
    ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->setMaxAreaRelative((float)maxArea);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxAreaRelative: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxAreaRelative: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_setMinArea__0(SEXP ropecv_self_, int minArea) {
  try {
    ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->setMinArea(minArea);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_setNScales__0(SEXP ropecv_self_, int n_scales) {
  try {
    ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->setNScales(n_scales);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNScales: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNScales: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TBMR_TBMR_setScaleFactor__0(SEXP ropecv_self_, double scale_factor) {
  try {
    ropecv::obj_as<cv::xfeatures2d::TBMR>(ropecv_self_)->setScaleFactor((float)scale_factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TEBLID_TEBLID_create__0(double scale_factor, int n_bits) {
  try {
    cv::Ptr<cv::xfeatures2d::TEBLID> _rv = cv::xfeatures2d::TEBLID::create((float)scale_factor, n_bits);
    return ropecv::wrap_obj(_rv, "cvTEBLID");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_TEBLID_TEBLID_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::TEBLID>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_create__0(int desc, double isigma, bool img_normalize, bool use_scale_orientation, double scale_factor, bool dsc_normalize) {
  try {
    cv::Ptr<cv::xfeatures2d::VGG> _rv = cv::xfeatures2d::VGG::create(desc, (float)isigma, img_normalize, use_scale_orientation, (float)scale_factor, dsc_normalize);
    return ropecv::wrap_obj(_rv, "cvVGG");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_getSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->getSigma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_getUseNormalizeDescriptor__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->getUseNormalizeDescriptor();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseNormalizeDescriptor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseNormalizeDescriptor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_getUseNormalizeImage__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->getUseNormalizeImage();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseNormalizeImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseNormalizeImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_getUseScaleOrientation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->getUseScaleOrientation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseScaleOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseScaleOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_setScaleFactor__0(SEXP ropecv_self_, double scale_factor) {
  try {
    ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->setScaleFactor((float)scale_factor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_setSigma__0(SEXP ropecv_self_, double isigma) {
  try {
    ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->setSigma((float)isigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_setUseNormalizeDescriptor__0(SEXP ropecv_self_, bool dsc_normalize) {
  try {
    ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->setUseNormalizeDescriptor(dsc_normalize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseNormalizeDescriptor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseNormalizeDescriptor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_setUseNormalizeImage__0(SEXP ropecv_self_, bool img_normalize) {
  try {
    ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->setUseNormalizeImage(img_normalize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseNormalizeImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseNormalizeImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_VGG_VGG_setUseScaleOrientation__0(SEXP ropecv_self_, bool use_scale_orientation) {
  try {
    ropecv::obj_as<cv::xfeatures2d::VGG>(ropecv_self_)->setUseScaleOrientation(use_scale_orientation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseScaleOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseScaleOrientation: %s", e.what());
  }
}
