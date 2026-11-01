// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/bgsegm.hpp>

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_apply__0(SEXP ropecv_self_, SEXP image, double learningRate, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0), learningRate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getBackgroundImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->getBackgroundImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getIsParallel__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->getIsParallel();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIsParallel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIsParallel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getMaxPixelStability__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->getMaxPixelStability();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxPixelStability: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxPixelStability: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getMinPixelStability__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->getMinPixelStability();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinPixelStability: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinPixelStability: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getUseHistory__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->getUseHistory();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setIsParallel__0(SEXP ropecv_self_, bool value) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->setIsParallel(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIsParallel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIsParallel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setMaxPixelStability__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->setMaxPixelStability(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxPixelStability: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxPixelStability: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setMinPixelStability__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->setMinPixelStability(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinPixelStability: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinPixelStability: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setUseHistory__0(SEXP ropecv_self_, bool value) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorCNT>(ropecv_self_)->setUseHistory(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_apply__0(SEXP ropecv_self_, SEXP image, double learningRate, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0), learningRate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getBackgroundImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getBackgroundImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getBackgroundPrior__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getBackgroundPrior();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundPrior: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundPrior: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getDecisionThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getDecisionThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDecisionThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDecisionThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getDefaultLearningRate__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getDefaultLearningRate();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultLearningRate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultLearningRate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getMaxFeatures__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getMaxFeatures();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getMaxVal__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getMaxVal();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getMinVal__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getMinVal();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getNumFrames__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getNumFrames();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumFrames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumFrames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getQuantizationLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getQuantizationLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getQuantizationLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getQuantizationLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getSmoothingRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getSmoothingRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSmoothingRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSmoothingRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getUpdateBackgroundModel__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->getUpdateBackgroundModel();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUpdateBackgroundModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUpdateBackgroundModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setBackgroundPrior__0(SEXP ropecv_self_, double bgprior) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setBackgroundPrior(bgprior);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBackgroundPrior: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBackgroundPrior: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setDecisionThreshold__0(SEXP ropecv_self_, double thresh) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setDecisionThreshold(thresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDecisionThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDecisionThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setDefaultLearningRate__0(SEXP ropecv_self_, double lr) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setDefaultLearningRate(lr);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDefaultLearningRate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDefaultLearningRate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setMaxFeatures__0(SEXP ropecv_self_, int maxFeatures) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setMaxFeatures(maxFeatures);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setMaxVal__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setMaxVal(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setMinVal__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setMinVal(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setNumFrames__0(SEXP ropecv_self_, int nframes) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setNumFrames(nframes);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumFrames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumFrames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setQuantizationLevels__0(SEXP ropecv_self_, int nlevels) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setQuantizationLevels(nlevels);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setQuantizationLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setQuantizationLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setSmoothingRadius__0(SEXP ropecv_self_, int radius) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setSmoothingRadius(radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSmoothingRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSmoothingRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setUpdateBackgroundModel__0(SEXP ropecv_self_, bool update) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGMG>(ropecv_self_)->setUpdateBackgroundModel(update);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUpdateBackgroundModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUpdateBackgroundModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGSOC_BackgroundSubtractorGSOC_apply__0(SEXP ropecv_self_, SEXP image, double learningRate, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGSOC>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0), learningRate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorGSOC_BackgroundSubtractorGSOC_getBackgroundImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorGSOC>(ropecv_self_)->getBackgroundImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorLSBP_BackgroundSubtractorLSBP_apply__0(SEXP ropecv_self_, SEXP image, double learningRate, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorLSBP>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0), learningRate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorLSBP_BackgroundSubtractorLSBP_getBackgroundImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorLSBP>(ropecv_self_)->getBackgroundImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getBackgroundRatio__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->getBackgroundRatio();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getHistory__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->getHistory();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getNMixtures__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->getNMixtures();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNMixtures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNMixtures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getNoiseSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->getNoiseSigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNoiseSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNoiseSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setBackgroundRatio__0(SEXP ropecv_self_, double backgroundRatio) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->setBackgroundRatio(backgroundRatio);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBackgroundRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBackgroundRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setHistory__0(SEXP ropecv_self_, int nframes) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->setHistory(nframes);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setNMixtures__0(SEXP ropecv_self_, int nmix) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->setNMixtures(nmix);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNMixtures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNMixtures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setNoiseSigma__0(SEXP ropecv_self_, double noiseSigma) {
  try {
    ropecv::obj_as<cv::bgsegm::BackgroundSubtractorMOG>(ropecv_self_)->setNoiseSigma(noiseSigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNoiseSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNoiseSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_SyntheticSequenceGenerator_SyntheticSequenceGenerator_new__0(SEXP background, SEXP object, double amplitude, double wavelength, double wavespeed, double objspeed) {
  try {
    ropecv::InArg _i0(background);
    ropecv::InArg _i1(object);
    cv::Ptr<cv::bgsegm::SyntheticSequenceGenerator> _rv(new cv::bgsegm::SyntheticSequenceGenerator(_i0.ia(), _i1.ia(), amplitude, wavelength, wavespeed, objspeed));
    return ropecv::wrap_obj(_rv, "cvSyntheticSequenceGenerator");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSyntheticSequenceGenerator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSyntheticSequenceGenerator: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bgsegm_SyntheticSequenceGenerator_SyntheticSequenceGenerator_getNextFrame__0(SEXP ropecv_self_, SEXP frame, SEXP gtMask) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(frame) ? &_owned0 : ropecv::mat_ptr(frame);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(gtMask) ? &_owned1 : ropecv::mat_ptr(gtMask);
    ropecv::obj_as<cv::bgsegm::SyntheticSequenceGenerator>(ropecv_self_)->getNextFrame(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("frame") = Rf_isNull(frame) ? ropecv::wrap_mat(std::move(_owned0)) : frame,
                                Rcpp::Named("gtMask") = Rf_isNull(gtMask) ? ropecv::wrap_mat(std::move(_owned1)) : gtMask);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNextFrame: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNextFrame: %s", e.what());
  }
}
