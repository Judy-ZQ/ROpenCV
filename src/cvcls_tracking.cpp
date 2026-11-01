// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/tracking/tracking.hpp>
#include <opencv2/tracking.hpp>

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_create__0(int preset) {
  try {
    cv::Ptr<cv::DISOpticalFlow> _rv = cv::DISOpticalFlow::create(preset);
    return ropecv::wrap_obj(_rv, "cvDISOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getFinestScale__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getFinestScale();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFinestScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFinestScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getGradientDescentIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getGradientDescentIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGradientDescentIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGradientDescentIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getPatchSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getPatchSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPatchSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPatchSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getPatchStride__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getPatchStride();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPatchStride: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPatchStride: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getUseMeanNormalization__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getUseMeanNormalization();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseMeanNormalization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseMeanNormalization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getUseSpatialPropagation__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getUseSpatialPropagation();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseSpatialPropagation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseSpatialPropagation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementAlpha__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getVariationalRefinementAlpha();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVariationalRefinementAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVariationalRefinementAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementDelta__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getVariationalRefinementDelta();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVariationalRefinementDelta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVariationalRefinementDelta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementEpsilon__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getVariationalRefinementEpsilon();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVariationalRefinementEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVariationalRefinementEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementGamma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getVariationalRefinementGamma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVariationalRefinementGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVariationalRefinementGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->getVariationalRefinementIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVariationalRefinementIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVariationalRefinementIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setFinestScale__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setFinestScale(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFinestScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFinestScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setGradientDescentIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setGradientDescentIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGradientDescentIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGradientDescentIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setPatchSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setPatchSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPatchSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPatchSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setPatchStride__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setPatchStride(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPatchStride: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPatchStride: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setUseMeanNormalization__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setUseMeanNormalization(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseMeanNormalization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseMeanNormalization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setUseSpatialPropagation__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setUseSpatialPropagation(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseSpatialPropagation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseSpatialPropagation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementAlpha__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setVariationalRefinementAlpha((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVariationalRefinementAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVariationalRefinementAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementDelta__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setVariationalRefinementDelta((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVariationalRefinementDelta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVariationalRefinementDelta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementEpsilon__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setVariationalRefinementEpsilon((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVariationalRefinementEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVariationalRefinementEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementGamma__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setVariationalRefinementGamma((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVariationalRefinementGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVariationalRefinementGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::DISOpticalFlow>(ropecv_self_)->setVariationalRefinementIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVariationalRefinementIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVariationalRefinementIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DenseOpticalFlow_DenseOpticalFlow_calc__0(SEXP ropecv_self_, SEXP I0, SEXP I1, SEXP flow) {
  try {
    ropecv::InArg _i0(I0);
    ropecv::InArg _i1(I1);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(flow) ? &_owned0 : ropecv::mat_ptr(flow);
    ropecv::obj_as<cv::DenseOpticalFlow>(ropecv_self_)->calc(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0));
    return Rf_isNull(flow) ? ropecv::wrap_mat(std::move(_owned0)) : flow;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calc: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calc: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DenseOpticalFlow_DenseOpticalFlow_collectGarbage__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::DenseOpticalFlow>(ropecv_self_)->collectGarbage();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("collectGarbage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("collectGarbage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_create__0(int numLevels, double pyrScale, bool fastPyramids, int winSize, int numIters, int polyN, double polySigma, int flags) {
  try {
    cv::Ptr<cv::FarnebackOpticalFlow> _rv = cv::FarnebackOpticalFlow::create(numLevels, pyrScale, fastPyramids, winSize, numIters, polyN, polySigma, flags);
    return ropecv::wrap_obj(_rv, "cvFarnebackOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getFastPyramids__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getFastPyramids();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFastPyramids: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFastPyramids: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getFlags__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getFlags();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getNumIters__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getNumIters();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumIters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumIters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getNumLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getNumLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getPolyN__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getPolyN();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPolyN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPolyN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getPolySigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getPolySigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPolySigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPolySigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getPyrScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getPyrScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPyrScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPyrScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getWinSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->getWinSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setFastPyramids__0(SEXP ropecv_self_, bool fastPyramids) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setFastPyramids(fastPyramids);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFastPyramids: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFastPyramids: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setFlags__0(SEXP ropecv_self_, int flags) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setFlags(flags);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setNumIters__0(SEXP ropecv_self_, int numIters) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setNumIters(numIters);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumIters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumIters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setNumLevels__0(SEXP ropecv_self_, int numLevels) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setNumLevels(numLevels);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setPolyN__0(SEXP ropecv_self_, int polyN) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setPolyN(polyN);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPolyN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPolyN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setPolySigma__0(SEXP ropecv_self_, double polySigma) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setPolySigma(polySigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPolySigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPolySigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setPyrScale__0(SEXP ropecv_self_, double pyrScale) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setPyrScale(pyrScale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPyrScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPyrScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setWinSize__0(SEXP ropecv_self_, int winSize) {
  try {
    ropecv::obj_as<cv::FarnebackOpticalFlow>(ropecv_self_)->setWinSize(winSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KalmanFilter_KalmanFilter_new__0() {
  try {
    cv::Ptr<cv::KalmanFilter> _rv(new cv::KalmanFilter());
    return ropecv::wrap_obj(_rv, "cvKalmanFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKalmanFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKalmanFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KalmanFilter_KalmanFilter_new__1(int dynamParams, int measureParams, int controlParams, int type) {
  try {
    cv::Ptr<cv::KalmanFilter> _rv(new cv::KalmanFilter(dynamParams, measureParams, controlParams, type));
    return ropecv::wrap_obj(_rv, "cvKalmanFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKalmanFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKalmanFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KalmanFilter_KalmanFilter_correct__0(SEXP ropecv_self_, SEXP measurement) {
  try {
    cv::Mat _m0 = Rf_isNull(measurement) ? cv::Mat() : *ropecv::mat_ptr(measurement);
    cv::Mat _rv = ropecv::obj_as<cv::KalmanFilter>(ropecv_self_)->correct(_m0);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("correct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("correct: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KalmanFilter_KalmanFilter_predict__0(SEXP ropecv_self_, SEXP control) {
  try {
    cv::Mat _m0 = Rf_isNull(control) ? cv::Mat() : *ropecv::mat_ptr(control);
    cv::Mat _rv = ropecv::obj_as<cv::KalmanFilter>(ropecv_self_)->predict(_m0);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparseOpticalFlow_SparseOpticalFlow_calc__0(SEXP ropecv_self_, SEXP prevImg, SEXP nextImg, SEXP prevPts, SEXP nextPts, SEXP status, SEXP err) {
  try {
    ropecv::InArg _i0(prevImg);
    ropecv::InArg _i1(nextImg);
    ropecv::InArg _i2(prevPts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(nextPts) ? &_owned0 : ropecv::mat_ptr(nextPts);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(status) ? &_owned1 : ropecv::mat_ptr(status);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(err) ? &_owned2 : ropecv::mat_ptr(err);
    ropecv::obj_as<cv::SparseOpticalFlow>(ropecv_self_)->calc(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("nextPts") = Rf_isNull(nextPts) ? ropecv::wrap_mat(std::move(_owned0)) : nextPts,
                                Rcpp::Named("status") = Rf_isNull(status) ? ropecv::wrap_mat(std::move(_owned1)) : status,
                                Rcpp::Named("err") = Rf_isNull(err) ? ropecv::wrap_mat(std::move(_owned2)) : err);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calc: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calc: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_create__0(SEXP winSize, int maxLevel, SEXP crit, int flags, double minEigThreshold) {
  try {
    cv::Ptr<cv::SparsePyrLKOpticalFlow> _rv = cv::SparsePyrLKOpticalFlow::create(ropecv::as_size(winSize), maxLevel, ropecv::as_termcriteria(crit), flags, minEigThreshold);
    return ropecv::wrap_obj(_rv, "cvSparsePyrLKOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getFlags__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->getFlags();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getMaxLevel__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->getMaxLevel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getMinEigThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->getMinEigThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinEigThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinEigThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getWinSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->getWinSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setFlags__0(SEXP ropecv_self_, int flags) {
  try {
    ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->setFlags(flags);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setMaxLevel__0(SEXP ropecv_self_, int maxLevel) {
  try {
    ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->setMaxLevel(maxLevel);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setMinEigThreshold__0(SEXP ropecv_self_, double minEigThreshold) {
  try {
    ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->setMinEigThreshold(minEigThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinEigThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinEigThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setTermCriteria__0(SEXP ropecv_self_, SEXP crit) {
  try {
    cv::TermCriteria _o0;
    if (!Rf_isNull(crit)) _o0 = ropecv::as_termcriteria(crit);
    ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->setTermCriteria(_o0);
    return Rcpp::List::create(Rcpp::Named("crit") = Rcpp::List::create(Rcpp::Named("type") = (int)_o0.type, Rcpp::Named("maxCount") = _o0.maxCount, Rcpp::Named("epsilon") = _o0.epsilon));
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setWinSize__0(SEXP ropecv_self_, SEXP winSize) {
  try {
    ropecv::obj_as<cv::SparsePyrLKOpticalFlow>(ropecv_self_)->setWinSize(ropecv::as_size(winSize));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Tracker_Tracker_init__0(SEXP ropecv_self_, SEXP image, SEXP boundingBox) {
  try {
    ropecv::InArg _i0(image);
    ropecv::obj_as<cv::Tracker>(ropecv_self_)->init(_i0.ia(), ropecv::as_rect(boundingBox));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("init: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("init: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Tracker_Tracker_update__0(SEXP ropecv_self_, SEXP image) {
  try {
    ropecv::InArg _i0(image);
    cv::Rect _o0;
    bool _rv = ropecv::obj_as<cv::Tracker>(ropecv_self_)->update(_i0.ia(), _o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("boundingBox") = ropecv::wrap_rect(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerDaSiamRPN_TrackerDaSiamRPN_create__0(SEXP parameters) {
  try {
    cv::TrackerDaSiamRPN::Params _s0 = ropecv::as_TrackerDaSiamRPN_Params(parameters);
    cv::Ptr<cv::TrackerDaSiamRPN> _rv = cv::TrackerDaSiamRPN::create(_s0);
    return ropecv::wrap_obj(_rv, "cvTrackerDaSiamRPN");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerDaSiamRPN_TrackerDaSiamRPN_getTrackingScore__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TrackerDaSiamRPN>(ropecv_self_)->getTrackingScore();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrackingScore: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrackingScore: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerDaSiamRPN_Params_Params_new__0() {
  try {
    cv::Ptr<cv::TrackerDaSiamRPN::Params> _rv(new cv::TrackerDaSiamRPN::Params());
    return ropecv::wrap_obj(_rv, "cvTrackerDaSiamRPNParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTrackerDaSiamRPNParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTrackerDaSiamRPNParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerMIL_TrackerMIL_create__0(SEXP parameters) {
  try {
    cv::TrackerMIL::Params _s0 = ropecv::as_TrackerMIL_Params(parameters);
    cv::Ptr<cv::TrackerMIL> _rv = cv::TrackerMIL::create(_s0);
    return ropecv::wrap_obj(_rv, "cvTrackerMIL");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerMIL_Params_Params_new__0() {
  try {
    cv::Ptr<cv::TrackerMIL::Params> _rv(new cv::TrackerMIL::Params());
    return ropecv::wrap_obj(_rv, "cvTrackerMILParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTrackerMILParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTrackerMILParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerNano_TrackerNano_create__0(SEXP parameters) {
  try {
    cv::TrackerNano::Params _s0 = ropecv::as_TrackerNano_Params(parameters);
    cv::Ptr<cv::TrackerNano> _rv = cv::TrackerNano::create(_s0);
    return ropecv::wrap_obj(_rv, "cvTrackerNano");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerNano_TrackerNano_getTrackingScore__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TrackerNano>(ropecv_self_)->getTrackingScore();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrackingScore: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrackingScore: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerNano_Params_Params_new__0() {
  try {
    cv::Ptr<cv::TrackerNano::Params> _rv(new cv::TrackerNano::Params());
    return ropecv::wrap_obj(_rv, "cvTrackerNanoParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTrackerNanoParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTrackerNanoParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerVit_TrackerVit_create__0(SEXP parameters) {
  try {
    cv::TrackerVit::Params _s0 = ropecv::as_TrackerVit_Params(parameters);
    cv::Ptr<cv::TrackerVit> _rv = cv::TrackerVit::create(_s0);
    return ropecv::wrap_obj(_rv, "cvTrackerVit");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerVit_TrackerVit_getTrackingScore__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TrackerVit>(ropecv_self_)->getTrackingScore();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrackingScore: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrackingScore: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TrackerVit_Params_Params_new__0() {
  try {
    cv::Ptr<cv::TrackerVit::Params> _rv(new cv::TrackerVit::Params());
    return ropecv::wrap_obj(_rv, "cvTrackerVitParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTrackerVitParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTrackerVitParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_create__0() {
  try {
    cv::Ptr<cv::VariationalRefinement> _rv = cv::VariationalRefinement::create();
    return ropecv::wrap_obj(_rv, "cvVariationalRefinement");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_calcUV__0(SEXP ropecv_self_, SEXP I0, SEXP I1, SEXP flow_u, SEXP flow_v) {
  try {
    ropecv::InArg _i0(I0);
    ropecv::InArg _i1(I1);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(flow_u) ? &_owned0 : ropecv::mat_ptr(flow_u);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(flow_v) ? &_owned1 : ropecv::mat_ptr(flow_v);
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->calcUV(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("flow_u") = Rf_isNull(flow_u) ? ropecv::wrap_mat(std::move(_owned0)) : flow_u,
                                Rcpp::Named("flow_v") = Rf_isNull(flow_v) ? ropecv::wrap_mat(std::move(_owned1)) : flow_v);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcUV: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcUV: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getAlpha__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getAlpha();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getDelta__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getDelta();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDelta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDelta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getEpsilon__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getEpsilon();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getFixedPointIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getFixedPointIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFixedPointIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFixedPointIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getGamma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getGamma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getOmega__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getOmega();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOmega: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOmega: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_getSorIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->getSorIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSorIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSorIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setAlpha__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setAlpha((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAlpha: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAlpha: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setDelta__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setDelta((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDelta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDelta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setEpsilon__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setEpsilon((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setFixedPointIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setFixedPointIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFixedPointIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFixedPointIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setGamma__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setGamma((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setOmega__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setOmega((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOmega: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOmega: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VariationalRefinement_VariationalRefinement_setSorIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VariationalRefinement>(ropecv_self_)->setSorIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSorIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSorIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_tracking_TrackerCSRT_TrackerCSRT_create__0(SEXP parameters) {
  try {
    cv::tracking::TrackerCSRT::Params _s0 = ropecv::as_tracking_TrackerCSRT_Params(parameters);
    cv::Ptr<cv::tracking::TrackerCSRT> _rv = cv::tracking::TrackerCSRT::create(_s0);
    return ropecv::wrap_obj(_rv, "cvTrackerCSRT");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_tracking_TrackerCSRT_TrackerCSRT_setInitialMask__0(SEXP ropecv_self_, SEXP mask) {
  try {
    ropecv::InArg _i0(mask);
    ropecv::obj_as<cv::tracking::TrackerCSRT>(ropecv_self_)->setInitialMask(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitialMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitialMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_tracking_TrackerCSRT_Params_Params_new__0() {
  try {
    cv::Ptr<cv::tracking::TrackerCSRT::Params> _rv(new cv::tracking::TrackerCSRT::Params());
    return ropecv::wrap_obj(_rv, "cvTrackerCSRTParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTrackerCSRTParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTrackerCSRTParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_tracking_TrackerKCF_TrackerKCF_create__0(SEXP parameters) {
  try {
    cv::tracking::TrackerKCF::Params _s0 = ropecv::as_tracking_TrackerKCF_Params(parameters);
    cv::Ptr<cv::tracking::TrackerKCF> _rv = cv::tracking::TrackerKCF::create(_s0);
    return ropecv::wrap_obj(_rv, "cvTrackerKCF");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_tracking_TrackerKCF_Params_Params_new__0() {
  try {
    cv::Ptr<cv::tracking::TrackerKCF::Params> _rv(new cv::tracking::TrackerKCF::Params());
    return ropecv::wrap_obj(_rv, "cvTrackerKCFParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTrackerKCFParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTrackerKCFParams: %s", e.what());
  }
}
