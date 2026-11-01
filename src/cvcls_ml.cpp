// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/ml/ml.hpp>

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_create__0() {
  try {
    cv::Ptr<cv::ml::ANN_MLP> _rv = cv::ml::ANN_MLP::create();
    return ropecv::wrap_obj(_rv, "cvANN_MLP");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_load__1(std::string filepath) {
  try {
    cv::Ptr<cv::ml::ANN_MLP> _rv = cv::ml::ANN_MLP::load(filepath);
    return ropecv::wrap_obj(_rv, "cvANN_MLP");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getAnnealCoolingRatio__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getAnnealCoolingRatio();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAnnealCoolingRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAnnealCoolingRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getAnnealFinalT__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getAnnealFinalT();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAnnealFinalT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAnnealFinalT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getAnnealInitialT__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getAnnealInitialT();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAnnealInitialT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAnnealInitialT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getAnnealItePerStep__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getAnnealItePerStep();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAnnealItePerStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAnnealItePerStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getBackpropMomentumScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getBackpropMomentumScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackpropMomentumScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackpropMomentumScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getBackpropWeightScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getBackpropWeightScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBackpropWeightScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBackpropWeightScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getLayerSizes__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getLayerSizes();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayerSizes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayerSizes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getRpropDW0__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getRpropDW0();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRpropDW0: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRpropDW0: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getRpropDWMax__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getRpropDWMax();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRpropDWMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRpropDWMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getRpropDWMin__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getRpropDWMin();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRpropDWMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRpropDWMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getRpropDWMinus__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getRpropDWMinus();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRpropDWMinus: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRpropDWMinus: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getRpropDWPlus__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getRpropDWPlus();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRpropDWPlus: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRpropDWPlus: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getTrainMethod__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getTrainMethod();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_getWeights__0(SEXP ropecv_self_, int layerIdx) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->getWeights(layerIdx);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setActivationFunction__0(SEXP ropecv_self_, int type, double param1, double param2) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setActivationFunction(type, param1, param2);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setActivationFunction: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setActivationFunction: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setAnnealCoolingRatio__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setAnnealCoolingRatio(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAnnealCoolingRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAnnealCoolingRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setAnnealFinalT__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setAnnealFinalT(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAnnealFinalT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAnnealFinalT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setAnnealInitialT__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setAnnealInitialT(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAnnealInitialT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAnnealInitialT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setAnnealItePerStep__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setAnnealItePerStep(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAnnealItePerStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAnnealItePerStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setBackpropMomentumScale__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setBackpropMomentumScale(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBackpropMomentumScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBackpropMomentumScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setBackpropWeightScale__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setBackpropWeightScale(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBackpropWeightScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBackpropWeightScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setLayerSizes__0(SEXP ropecv_self_, SEXP layer_sizes) {
  try {
    ropecv::InArg _i0(layer_sizes);
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setLayerSizes(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLayerSizes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLayerSizes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setRpropDW0__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setRpropDW0(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRpropDW0: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRpropDW0: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setRpropDWMax__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setRpropDWMax(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRpropDWMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRpropDWMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setRpropDWMin__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setRpropDWMin(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRpropDWMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRpropDWMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setRpropDWMinus__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setRpropDWMinus(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRpropDWMinus: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRpropDWMinus: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setRpropDWPlus__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setRpropDWPlus(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRpropDWPlus: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRpropDWPlus: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setTermCriteria__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setTermCriteria(ropecv::as_termcriteria(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ANN_MLP_ANN_MLP_setTrainMethod__0(SEXP ropecv_self_, int method, double param1, double param2) {
  try {
    ropecv::obj_as<cv::ml::ANN_MLP>(ropecv_self_)->setTrainMethod(method, param1, param2);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrainMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrainMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_create__0() {
  try {
    cv::Ptr<cv::ml::Boost> _rv = cv::ml::Boost::create();
    return ropecv::wrap_obj(_rv, "cvBoost");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::Boost> _rv = cv::ml::Boost::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvBoost");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_getBoostType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::Boost>(ropecv_self_)->getBoostType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBoostType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBoostType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_getWeakCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::Boost>(ropecv_self_)->getWeakCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeakCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeakCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_getWeightTrimRate__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::Boost>(ropecv_self_)->getWeightTrimRate();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeightTrimRate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeightTrimRate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_setBoostType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::Boost>(ropecv_self_)->setBoostType(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBoostType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBoostType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_setWeakCount__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::Boost>(ropecv_self_)->setWeakCount(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeakCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeakCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_Boost_Boost_setWeightTrimRate__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::Boost>(ropecv_self_)->setWeightTrimRate(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeightTrimRate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeightTrimRate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_create__0() {
  try {
    cv::Ptr<cv::ml::DTrees> _rv = cv::ml::DTrees::create();
    return ropecv::wrap_obj(_rv, "cvDTrees");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::DTrees> _rv = cv::ml::DTrees::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvDTrees");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getCVFolds__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getCVFolds();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCVFolds: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCVFolds: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getMaxCategories__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getMaxCategories();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxCategories: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxCategories: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getMaxDepth__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getMaxDepth();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getMinSampleCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getMinSampleCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinSampleCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinSampleCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getPriors__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getPriors();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPriors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPriors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getRegressionAccuracy__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getRegressionAccuracy();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRegressionAccuracy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRegressionAccuracy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getTruncatePrunedTree__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getTruncatePrunedTree();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTruncatePrunedTree: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTruncatePrunedTree: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getUse1SERule__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getUse1SERule();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUse1SERule: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUse1SERule: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_getUseSurrogates__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->getUseSurrogates();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseSurrogates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseSurrogates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setCVFolds__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setCVFolds(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCVFolds: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCVFolds: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setMaxCategories__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setMaxCategories(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxCategories: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxCategories: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setMaxDepth__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setMaxDepth(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setMinSampleCount__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setMinSampleCount(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinSampleCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinSampleCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setPriors__0(SEXP ropecv_self_, SEXP val) {
  try {
    cv::Mat _m0 = Rf_isNull(val) ? cv::Mat() : *ropecv::mat_ptr(val);
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setPriors(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPriors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPriors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setRegressionAccuracy__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setRegressionAccuracy((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRegressionAccuracy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRegressionAccuracy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setTruncatePrunedTree__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setTruncatePrunedTree(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTruncatePrunedTree: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTruncatePrunedTree: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setUse1SERule__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setUse1SERule(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUse1SERule: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUse1SERule: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_DTrees_DTrees_setUseSurrogates__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::ml::DTrees>(ropecv_self_)->setUseSurrogates(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseSurrogates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseSurrogates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_create__0() {
  try {
    cv::Ptr<cv::ml::EM> _rv = cv::ml::EM::create();
    return ropecv::wrap_obj(_rv, "cvEM");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::EM> _rv = cv::ml::EM::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvEM");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_getClustersNumber__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->getClustersNumber();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getClustersNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getClustersNumber: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_getCovarianceMatrixType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->getCovarianceMatrixType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCovarianceMatrixType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCovarianceMatrixType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_getCovs__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::ml::EM>(ropecv_self_)->getCovs(_o0);
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCovs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCovs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_getMeans__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->getMeans();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMeans: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMeans: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_getWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->getWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_predict__0(SEXP ropecv_self_, SEXP samples, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->predict(_i0.ia(), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_predict2__0(SEXP ropecv_self_, SEXP sample, SEXP dst) {
  try {
    ropecv::InArg _i0(sample);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Vec2d _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->predict2(_i0.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rcpp::NumericVector::create(_rv[0], _rv[1]),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_setClustersNumber__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::EM>(ropecv_self_)->setClustersNumber(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setClustersNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setClustersNumber: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_setCovarianceMatrixType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::EM>(ropecv_self_)->setCovarianceMatrixType(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCovarianceMatrixType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCovarianceMatrixType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_setTermCriteria__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::ml::EM>(ropecv_self_)->setTermCriteria(ropecv::as_termcriteria(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_trainE__0(SEXP ropecv_self_, SEXP samples, SEXP means0, SEXP covs0, SEXP weights0, SEXP logLikelihoods, SEXP labels, SEXP probs) {
  try {
    ropecv::InArg _i0(samples);
    ropecv::InArg _i1(means0);
    ropecv::InArg _i2(covs0);
    ropecv::InArg _i3(weights0);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(logLikelihoods) ? &_owned0 : ropecv::mat_ptr(logLikelihoods);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(labels) ? &_owned1 : ropecv::mat_ptr(labels);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(probs) ? &_owned2 : ropecv::mat_ptr(probs);
    bool _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->trainE(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("logLikelihoods") = Rf_isNull(logLikelihoods) ? ropecv::wrap_mat(std::move(_owned0)) : logLikelihoods,
                                Rcpp::Named("labels") = Rf_isNull(labels) ? ropecv::wrap_mat(std::move(_owned1)) : labels,
                                Rcpp::Named("probs") = Rf_isNull(probs) ? ropecv::wrap_mat(std::move(_owned2)) : probs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("trainE: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("trainE: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_trainEM__0(SEXP ropecv_self_, SEXP samples, SEXP logLikelihoods, SEXP labels, SEXP probs) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(logLikelihoods) ? &_owned0 : ropecv::mat_ptr(logLikelihoods);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(labels) ? &_owned1 : ropecv::mat_ptr(labels);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(probs) ? &_owned2 : ropecv::mat_ptr(probs);
    bool _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->trainEM(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("logLikelihoods") = Rf_isNull(logLikelihoods) ? ropecv::wrap_mat(std::move(_owned0)) : logLikelihoods,
                                Rcpp::Named("labels") = Rf_isNull(labels) ? ropecv::wrap_mat(std::move(_owned1)) : labels,
                                Rcpp::Named("probs") = Rf_isNull(probs) ? ropecv::wrap_mat(std::move(_owned2)) : probs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("trainEM: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("trainEM: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_EM_EM_trainM__0(SEXP ropecv_self_, SEXP samples, SEXP probs0, SEXP logLikelihoods, SEXP labels, SEXP probs) {
  try {
    ropecv::InArg _i0(samples);
    ropecv::InArg _i1(probs0);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(logLikelihoods) ? &_owned0 : ropecv::mat_ptr(logLikelihoods);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(labels) ? &_owned1 : ropecv::mat_ptr(labels);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(probs) ? &_owned2 : ropecv::mat_ptr(probs);
    bool _rv = ropecv::obj_as<cv::ml::EM>(ropecv_self_)->trainM(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("logLikelihoods") = Rf_isNull(logLikelihoods) ? ropecv::wrap_mat(std::move(_owned0)) : logLikelihoods,
                                Rcpp::Named("labels") = Rf_isNull(labels) ? ropecv::wrap_mat(std::move(_owned1)) : labels,
                                Rcpp::Named("probs") = Rf_isNull(probs) ? ropecv::wrap_mat(std::move(_owned2)) : probs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("trainM: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("trainM: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_create__0() {
  try {
    cv::Ptr<cv::ml::KNearest> _rv = cv::ml::KNearest::create();
    return ropecv::wrap_obj(_rv, "cvKNearest");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_load__1(std::string filepath) {
  try {
    cv::Ptr<cv::ml::KNearest> _rv = cv::ml::KNearest::load(filepath);
    return ropecv::wrap_obj(_rv, "cvKNearest");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_findNearest__0(SEXP ropecv_self_, SEXP samples, int k, SEXP results, SEXP neighborResponses, SEXP dist) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(results) ? &_owned0 : ropecv::mat_ptr(results);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(neighborResponses) ? &_owned1 : ropecv::mat_ptr(neighborResponses);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(dist) ? &_owned2 : ropecv::mat_ptr(dist);
    double _rv = ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->findNearest(_i0.ia(), k, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("results") = Rf_isNull(results) ? ropecv::wrap_mat(std::move(_owned0)) : results,
                                Rcpp::Named("neighborResponses") = Rf_isNull(neighborResponses) ? ropecv::wrap_mat(std::move(_owned1)) : neighborResponses,
                                Rcpp::Named("dist") = Rf_isNull(dist) ? ropecv::wrap_mat(std::move(_owned2)) : dist);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findNearest: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findNearest: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_getAlgorithmType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->getAlgorithmType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlgorithmType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlgorithmType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_getDefaultK__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->getDefaultK();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_getEmax__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->getEmax();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEmax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEmax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_getIsClassifier__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->getIsClassifier();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIsClassifier: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIsClassifier: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_setAlgorithmType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->setAlgorithmType(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAlgorithmType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAlgorithmType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_setDefaultK__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->setDefaultK(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDefaultK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDefaultK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_setEmax__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->setEmax(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEmax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEmax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_KNearest_KNearest_setIsClassifier__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::ml::KNearest>(ropecv_self_)->setIsClassifier(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIsClassifier: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIsClassifier: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_create__0() {
  try {
    cv::Ptr<cv::ml::LogisticRegression> _rv = cv::ml::LogisticRegression::create();
    return ropecv::wrap_obj(_rv, "cvLogisticRegression");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::LogisticRegression> _rv = cv::ml::LogisticRegression::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvLogisticRegression");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_getIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->getIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_getLearningRate__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->getLearningRate();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLearningRate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLearningRate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_getMiniBatchSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->getMiniBatchSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMiniBatchSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMiniBatchSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_getRegularization__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->getRegularization();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRegularization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRegularization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_getTrainMethod__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->getTrainMethod();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_get_learnt_thetas__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->get_learnt_thetas();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("get_learnt_thetas: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get_learnt_thetas: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_predict__0(SEXP ropecv_self_, SEXP samples, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->predict(_i0.ia(), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_setIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->setIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_setLearningRate__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->setLearningRate(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLearningRate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLearningRate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_setMiniBatchSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->setMiniBatchSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMiniBatchSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMiniBatchSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_setRegularization__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->setRegularization(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRegularization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRegularization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_setTermCriteria__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->setTermCriteria(ropecv::as_termcriteria(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_LogisticRegression_LogisticRegression_setTrainMethod__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::LogisticRegression>(ropecv_self_)->setTrainMethod(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrainMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrainMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_NormalBayesClassifier_NormalBayesClassifier_create__0() {
  try {
    cv::Ptr<cv::ml::NormalBayesClassifier> _rv = cv::ml::NormalBayesClassifier::create();
    return ropecv::wrap_obj(_rv, "cvNormalBayesClassifier");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_NormalBayesClassifier_NormalBayesClassifier_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::NormalBayesClassifier> _rv = cv::ml::NormalBayesClassifier::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvNormalBayesClassifier");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_NormalBayesClassifier_NormalBayesClassifier_predictProb__0(SEXP ropecv_self_, SEXP inputs, int flags, SEXP outputs, SEXP outputProbs) {
  try {
    ropecv::InArg _i0(inputs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(outputs) ? &_owned0 : ropecv::mat_ptr(outputs);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(outputProbs) ? &_owned1 : ropecv::mat_ptr(outputProbs);
    double _rv = ropecv::obj_as<cv::ml::NormalBayesClassifier>(ropecv_self_)->predictProb(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("outputs") = Rf_isNull(outputs) ? ropecv::wrap_mat(std::move(_owned0)) : outputs,
                                Rcpp::Named("outputProbs") = Rf_isNull(outputProbs) ? ropecv::wrap_mat(std::move(_owned1)) : outputProbs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("predictProb: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predictProb: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_ParamGrid_ParamGrid_create__0(double minVal, double maxVal, double logstep) {
  try {
    cv::Ptr<cv::ml::ParamGrid> _rv = cv::ml::ParamGrid::create(minVal, maxVal, logstep);
    return ropecv::wrap_obj(_rv, "cvParamGrid");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_create__0() {
  try {
    cv::Ptr<cv::ml::RTrees> _rv = cv::ml::RTrees::create();
    return ropecv::wrap_obj(_rv, "cvRTrees");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::RTrees> _rv = cv::ml::RTrees::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvRTrees");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_getActiveVarCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->getActiveVarCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getActiveVarCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getActiveVarCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_getCalculateVarImportance__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->getCalculateVarImportance();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCalculateVarImportance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCalculateVarImportance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_getOOBError__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->getOOBError();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOOBError: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOOBError: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_getVarImportance__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->getVarImportance();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarImportance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarImportance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_getVotes__0(SEXP ropecv_self_, SEXP samples, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->getVotes(_i0.ia(), cv::_OutputArray(*_p0), flags);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVotes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVotes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_setActiveVarCount__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->setActiveVarCount(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setActiveVarCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setActiveVarCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_setCalculateVarImportance__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->setCalculateVarImportance(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCalculateVarImportance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCalculateVarImportance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_RTrees_RTrees_setTermCriteria__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::ml::RTrees>(ropecv_self_)->setTermCriteria(ropecv::as_termcriteria(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_create__0() {
  try {
    cv::Ptr<cv::ml::SVM> _rv = cv::ml::SVM::create();
    return ropecv::wrap_obj(_rv, "cvSVM");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getDefaultGridPtr__1(int param_id) {
  try {
    cv::Ptr<cv::ml::ParamGrid> _rv = cv::ml::SVM::getDefaultGridPtr(param_id);
    return ropecv::wrap_obj(_rv, "cvParamGrid");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultGridPtr: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultGridPtr: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_load__2(std::string filepath) {
  try {
    cv::Ptr<cv::ml::SVM> _rv = cv::ml::SVM::load(filepath);
    return ropecv::wrap_obj(_rv, "cvSVM");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getC__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getC();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getClassWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getClassWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getClassWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getClassWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getCoef0__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getCoef0();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCoef0: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCoef0: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getDecisionFunction__0(SEXP ropecv_self_, int i, SEXP alpha, SEXP svidx) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(alpha) ? &_owned0 : ropecv::mat_ptr(alpha);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(svidx) ? &_owned1 : ropecv::mat_ptr(svidx);
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getDecisionFunction(i, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("alpha") = Rf_isNull(alpha) ? ropecv::wrap_mat(std::move(_owned0)) : alpha,
                                Rcpp::Named("svidx") = Rf_isNull(svidx) ? ropecv::wrap_mat(std::move(_owned1)) : svidx);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDecisionFunction: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDecisionFunction: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getDegree__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getDegree();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDegree: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDegree: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getGamma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getGamma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getKernelType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getKernelType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getKernelType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getKernelType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getNu__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getNu();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNu: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNu: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getP__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getP();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getSupportVectors__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getSupportVectors();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSupportVectors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSupportVectors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_getUncompressedSupportVectors__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->getUncompressedSupportVectors();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUncompressedSupportVectors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUncompressedSupportVectors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setC__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setC(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setClassWeights__0(SEXP ropecv_self_, SEXP val) {
  try {
    cv::Mat _m0 = Rf_isNull(val) ? cv::Mat() : *ropecv::mat_ptr(val);
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setClassWeights(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setClassWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setClassWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setCoef0__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setCoef0(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCoef0: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCoef0: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setDegree__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setDegree(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDegree: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDegree: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setGamma__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setGamma(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setKernel__0(SEXP ropecv_self_, int kernelType) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setKernel(kernelType);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setKernel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setKernel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setNu__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setNu(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNu: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNu: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setP__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setP(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setTermCriteria__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setTermCriteria(ropecv::as_termcriteria(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_setType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->setType(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVM_SVM_trainAuto__0(SEXP ropecv_self_, SEXP samples, int layout, SEXP responses, int kFold, SEXP Cgrid, SEXP gammaGrid, SEXP pGrid, SEXP nuGrid, SEXP coeffGrid, SEXP degreeGrid, bool balanced) {
  try {
    ropecv::InArg _i0(samples);
    ropecv::InArg _i1(responses);
    bool _rv = ropecv::obj_as<cv::ml::SVM>(ropecv_self_)->trainAuto(_i0.ia(), layout, _i1.ia(), kFold, ropecv::as_ptr<cv::ml::ParamGrid>(Cgrid), ropecv::as_ptr<cv::ml::ParamGrid>(gammaGrid), ropecv::as_ptr<cv::ml::ParamGrid>(pGrid), ropecv::as_ptr<cv::ml::ParamGrid>(nuGrid), ropecv::as_ptr<cv::ml::ParamGrid>(coeffGrid), ropecv::as_ptr<cv::ml::ParamGrid>(degreeGrid), balanced);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("trainAuto: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("trainAuto: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_create__0() {
  try {
    cv::Ptr<cv::ml::SVMSGD> _rv = cv::ml::SVMSGD::create();
    return ropecv::wrap_obj(_rv, "cvSVMSGD");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_load__1(std::string filepath, std::string nodeName) {
  try {
    cv::Ptr<cv::ml::SVMSGD> _rv = cv::ml::SVMSGD::load(filepath, nodeName);
    return ropecv::wrap_obj(_rv, "cvSVMSGD");
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getInitialStepSize__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getInitialStepSize();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInitialStepSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInitialStepSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getMarginRegularization__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getMarginRegularization();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMarginRegularization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMarginRegularization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getMarginType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getMarginType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMarginType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMarginType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getShift__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getShift();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getStepDecreasingPower__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getStepDecreasingPower();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStepDecreasingPower: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStepDecreasingPower: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getSvmsgdType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getSvmsgdType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSvmsgdType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSvmsgdType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getTermCriteria__0(SEXP ropecv_self_) {
  try {
    cv::TermCriteria _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getTermCriteria();
    return Rcpp::List::create(Rcpp::Named("type") = (int)_rv.type, Rcpp::Named("maxCount") = _rv.maxCount, Rcpp::Named("epsilon") = _rv.epsilon);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_getWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->getWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setInitialStepSize__0(SEXP ropecv_self_, double InitialStepSize) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setInitialStepSize((float)InitialStepSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitialStepSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitialStepSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setMarginRegularization__0(SEXP ropecv_self_, double marginRegularization) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setMarginRegularization((float)marginRegularization);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMarginRegularization: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMarginRegularization: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setMarginType__0(SEXP ropecv_self_, int marginType) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setMarginType(marginType);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMarginType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMarginType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setOptimalParameters__0(SEXP ropecv_self_, int svmsgdType, int marginType) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setOptimalParameters(svmsgdType, marginType);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOptimalParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOptimalParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setStepDecreasingPower__0(SEXP ropecv_self_, double stepDecreasingPower) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setStepDecreasingPower((float)stepDecreasingPower);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setStepDecreasingPower: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setStepDecreasingPower: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setSvmsgdType__0(SEXP ropecv_self_, int svmsgdType) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setSvmsgdType(svmsgdType);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSvmsgdType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSvmsgdType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_SVMSGD_SVMSGD_setTermCriteria__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::ml::SVMSGD>(ropecv_self_)->setTermCriteria(ropecv::as_termcriteria(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTermCriteria: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_calcError__0(SEXP ropecv_self_, SEXP data, bool test, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->calcError(ropecv::as_ptr<cv::ml::TrainData>(data), test, cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcError: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcError: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_getVarCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->getVarCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_isClassifier__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->isClassifier();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isClassifier: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isClassifier: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_isTrained__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->isTrained();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isTrained: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isTrained: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_predict__0(SEXP ropecv_self_, SEXP samples, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(samples);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    double _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->predict(_i0.ia(), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal((double)_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_train__0(SEXP ropecv_self_, SEXP trainData, int flags) {
  try {
    bool _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->train(ropecv::as_ptr<cv::ml::TrainData>(trainData), flags);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("train: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("train: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_StatModel_StatModel_train__1(SEXP ropecv_self_, SEXP samples, int layout, SEXP responses) {
  try {
    ropecv::InArg _i0(samples);
    ropecv::InArg _i1(responses);
    bool _rv = ropecv::obj_as<cv::ml::StatModel>(ropecv_self_)->train(_i0.ia(), layout, _i1.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("train: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("train: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getSubVector__0(SEXP vec, SEXP idx) {
  try {
    cv::Mat _m0 = Rf_isNull(vec) ? cv::Mat() : *ropecv::mat_ptr(vec);
    cv::Mat _m1 = Rf_isNull(idx) ? cv::Mat() : *ropecv::mat_ptr(idx);
    cv::Mat _rv = cv::ml::TrainData::getSubVector(_m0, _m1);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSubVector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSubVector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getSubMatrix__1(SEXP matrix, SEXP idx, int layout) {
  try {
    cv::Mat _m0 = Rf_isNull(matrix) ? cv::Mat() : *ropecv::mat_ptr(matrix);
    cv::Mat _m1 = Rf_isNull(idx) ? cv::Mat() : *ropecv::mat_ptr(idx);
    cv::Mat _rv = cv::ml::TrainData::getSubMatrix(_m0, _m1, layout);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSubMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSubMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_create__2(SEXP samples, int layout, SEXP responses, SEXP varIdx, SEXP sampleIdx, SEXP sampleWeights, SEXP varType) {
  try {
    ropecv::InArg _i0(samples);
    ropecv::InArg _i1(responses);
    ropecv::InArg _i2(varIdx);
    ropecv::InArg _i3(sampleIdx);
    ropecv::InArg _i4(sampleWeights);
    ropecv::InArg _i5(varType);
    cv::Ptr<cv::ml::TrainData> _rv = cv::ml::TrainData::create(_i0.ia(), layout, _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia());
    return ropecv::wrap_obj(_rv, "cvTrainData");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getCatCount__0(SEXP ropecv_self_, int vi) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getCatCount(vi);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCatCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCatCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getCatMap__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getCatMap();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCatMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCatMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getCatOfs__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getCatOfs();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCatOfs: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCatOfs: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getClassLabels__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getClassLabels();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getClassLabels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getClassLabels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getDefaultSubstValues__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getDefaultSubstValues();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultSubstValues: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultSubstValues: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getLayout__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getLayout();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayout: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayout: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getMissing__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getMissing();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMissing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMissing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNAllVars__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNAllVars();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNAllVars: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNAllVars: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNSamples__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNSamples();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNTestSamples__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNTestSamples();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNTestSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNTestSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNTrainSamples__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNTrainSamples();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNTrainSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNTrainSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNVars__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNVars();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNVars: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNVars: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNames__0(SEXP ropecv_self_, SEXP names) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(names)) _o0 = ropecv::as_vec_string(names);
    ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNames(_o0);
    return Rcpp::List::create(Rcpp::Named("names") = Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getNormCatResponses__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getNormCatResponses();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormCatResponses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormCatResponses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getResponseType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getResponseType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getResponseType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getResponseType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getResponses__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getResponses();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getResponses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getResponses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getSample__0(SEXP ropecv_self_, SEXP varIdx, int sidx) {
  try {
    ropecv::InArg _i0(varIdx);
    float _o0 = 0;
    ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getSample(_i0.ia(), sidx, &_o0);
    return Rf_ScalarReal((double)_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSample: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSample: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getSampleWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getSampleWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSampleWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSampleWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getSamples__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getSamples();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTestNormCatResponses__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTestNormCatResponses();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTestNormCatResponses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTestNormCatResponses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTestResponses__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTestResponses();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTestResponses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTestResponses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTestSampleIdx__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTestSampleIdx();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTestSampleIdx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTestSampleIdx: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTestSampleWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTestSampleWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTestSampleWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTestSampleWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTestSamples__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTestSamples();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTestSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTestSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTrainNormCatResponses__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTrainNormCatResponses();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainNormCatResponses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainNormCatResponses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTrainResponses__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTrainResponses();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainResponses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainResponses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTrainSampleIdx__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTrainSampleIdx();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainSampleIdx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainSampleIdx: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTrainSampleWeights__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTrainSampleWeights();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainSampleWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainSampleWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getTrainSamples__0(SEXP ropecv_self_, int layout, bool compressSamples, bool compressVars) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getTrainSamples(layout, compressSamples, compressVars);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getValues__0(SEXP ropecv_self_, int vi, SEXP sidx) {
  try {
    ropecv::InArg _i0(sidx);
    float _o0 = 0;
    ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getValues(vi, _i0.ia(), &_o0);
    return Rf_ScalarReal((double)_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getValues: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getValues: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getVarIdx__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getVarIdx();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarIdx: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarIdx: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getVarSymbolFlags__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getVarSymbolFlags();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarSymbolFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarSymbolFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_getVarType__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->getVarType();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVarType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVarType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_setTrainTestSplit__0(SEXP ropecv_self_, int count, bool shuffle) {
  try {
    ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->setTrainTestSplit(count, shuffle);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrainTestSplit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrainTestSplit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_setTrainTestSplitRatio__0(SEXP ropecv_self_, double ratio, bool shuffle) {
  try {
    ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->setTrainTestSplitRatio(ratio, shuffle);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrainTestSplitRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrainTestSplitRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ml_TrainData_TrainData_shuffleTrainTest__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ml::TrainData>(ropecv_self_)->shuffleTrainTest();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("shuffleTrainTest: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("shuffleTrainTest: %s", e.what());
  }
}
