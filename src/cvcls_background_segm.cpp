// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/video/background_segm.hpp>

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractor_BackgroundSubtractor_apply__0(SEXP ropecv_self_, SEXP image, double learningRate, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::BackgroundSubtractor>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0), learningRate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractor_BackgroundSubtractor_getBackgroundImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::BackgroundSubtractor>(ropecv_self_)->getBackgroundImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getDetectShadows__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getDetectShadows();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDetectShadows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDetectShadows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getDist2Threshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getDist2Threshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDist2Threshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDist2Threshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getHistory__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getHistory();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getNSamples__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getNSamples();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getShadowThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getShadowThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShadowThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShadowThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getShadowValue__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getShadowValue();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShadowValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShadowValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getkNNSamples__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->getkNNSamples();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getkNNSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getkNNSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setDetectShadows__0(SEXP ropecv_self_, bool detectShadows) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setDetectShadows(detectShadows);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDetectShadows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDetectShadows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setDist2Threshold__0(SEXP ropecv_self_, double dist2Threshold) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setDist2Threshold(dist2Threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDist2Threshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDist2Threshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setHistory__0(SEXP ropecv_self_, int history) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setHistory(history);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setNSamples__0(SEXP ropecv_self_, int nN) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setNSamples(nN);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setShadowThreshold__0(SEXP ropecv_self_, double threshold) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setShadowThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShadowThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShadowThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setShadowValue__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setShadowValue(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShadowValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShadowValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setkNNSamples__0(SEXP ropecv_self_, int nkNN) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorKNN>(ropecv_self_)->setkNNSamples(nkNN);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setkNNSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setkNNSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_apply__0(SEXP ropecv_self_, SEXP image, double learningRate, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0), learningRate);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getBackgroundRatio__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getBackgroundRatio();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackgroundRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackgroundRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getComplexityReductionThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getComplexityReductionThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getComplexityReductionThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getComplexityReductionThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getDetectShadows__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getDetectShadows();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDetectShadows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDetectShadows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getHistory__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getHistory();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getNMixtures__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getNMixtures();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNMixtures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNMixtures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getShadowThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getShadowThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShadowThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShadowThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getShadowValue__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getShadowValue();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShadowValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShadowValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarInit__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getVarInit();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarInit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarInit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarMax__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getVarMax();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarMin__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getVarMin();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getVarThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarThresholdGen__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->getVarThresholdGen();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarThresholdGen: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarThresholdGen: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setBackgroundRatio__0(SEXP ropecv_self_, double ratio) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setBackgroundRatio(ratio);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBackgroundRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBackgroundRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setComplexityReductionThreshold__0(SEXP ropecv_self_, double ct) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setComplexityReductionThreshold(ct);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setComplexityReductionThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setComplexityReductionThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setDetectShadows__0(SEXP ropecv_self_, bool detectShadows) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setDetectShadows(detectShadows);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDetectShadows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDetectShadows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setHistory__0(SEXP ropecv_self_, int history) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setHistory(history);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHistory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHistory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setNMixtures__0(SEXP ropecv_self_, int nmixtures) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setNMixtures(nmixtures);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNMixtures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNMixtures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setShadowThreshold__0(SEXP ropecv_self_, double threshold) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setShadowThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShadowThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShadowThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setShadowValue__0(SEXP ropecv_self_, int value) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setShadowValue(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShadowValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShadowValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarInit__0(SEXP ropecv_self_, double varInit) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setVarInit(varInit);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVarInit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVarInit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarMax__0(SEXP ropecv_self_, double varMax) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setVarMax(varMax);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVarMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVarMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarMin__0(SEXP ropecv_self_, double varMin) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setVarMin(varMin);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVarMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVarMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarThreshold__0(SEXP ropecv_self_, double varThreshold) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setVarThreshold(varThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVarThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVarThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarThresholdGen__0(SEXP ropecv_self_, double varThresholdGen) {
  try {
    ropecv::obj_as<cv::BackgroundSubtractorMOG2>(ropecv_self_)->setVarThresholdGen(varThresholdGen);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVarThresholdGen: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVarThresholdGen: %s", e.what());
  }
}
