// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/optflow.hpp>

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_create__0(double tau, double lambda, double theta, int nscales, int warps, double epsilon, int innnerIterations, int outerIterations, double scaleStep, double gamma, int medianFiltering, bool useInitialFlow) {
  try {
    cv::Ptr<cv::optflow::DualTVL1OpticalFlow> _rv = cv::optflow::DualTVL1OpticalFlow::create(tau, lambda, theta, nscales, warps, epsilon, innnerIterations, outerIterations, scaleStep, gamma, medianFiltering, useInitialFlow);
    return ropecv::wrap_obj(_rv, "cvDualTVL1OpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getEpsilon__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getEpsilon();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getGamma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getGamma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getInnerIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getInnerIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInnerIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInnerIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getLambda();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getMedianFiltering__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getMedianFiltering();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMedianFiltering: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMedianFiltering: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getOuterIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getOuterIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOuterIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOuterIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getScaleStep__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getScaleStep();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getScalesNumber__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getScalesNumber();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScalesNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScalesNumber: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getTau__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getTau();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTau: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTau: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getTheta__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getTheta();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTheta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTheta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getUseInitialFlow__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getUseInitialFlow();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseInitialFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseInitialFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getWarpingsNumber__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->getWarpingsNumber();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWarpingsNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWarpingsNumber: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setEpsilon__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setEpsilon(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEpsilon: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEpsilon: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setGamma__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setGamma(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setInnerIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setInnerIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInnerIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInnerIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setLambda__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setLambda(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setMedianFiltering__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setMedianFiltering(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMedianFiltering: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMedianFiltering: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setOuterIterations__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setOuterIterations(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOuterIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOuterIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setScaleStep__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setScaleStep(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setScalesNumber__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setScalesNumber(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScalesNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScalesNumber: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setTau__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setTau(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTau: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTau: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setTheta__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setTheta(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTheta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTheta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setUseInitialFlow__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setUseInitialFlow(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseInitialFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseInitialFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setWarpingsNumber__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DualTVL1OpticalFlow>(ropecv_self_)->setWarpingsNumber(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWarpingsNumber: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWarpingsNumber: %s", e.what());
  }
}
