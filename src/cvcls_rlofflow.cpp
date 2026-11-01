// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/optflow/rlofflow.hpp>

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_create__0(SEXP rlofParam, double forwardBackwardThreshold, SEXP gridStep, int interp_type, int epicK, double epicSigma, double epicLambda, int ricSPSize, int ricSLICType, bool use_post_proc, double fgsLambda, double fgsSigma, bool use_variational_refinement) {
  try {
    cv::Ptr<cv::optflow::DenseRLOFOpticalFlow> _rv = cv::optflow::DenseRLOFOpticalFlow::create(ropecv::as_ptr<cv::optflow::RLOFOpticalFlowParameter>(rlofParam), (float)forwardBackwardThreshold, ropecv::as_size(gridStep), (cv::optflow::InterpolationType)interp_type, epicK, (float)epicSigma, (float)epicLambda, ricSPSize, ricSLICType, use_post_proc, (float)fgsLambda, (float)fgsSigma, use_variational_refinement);
    return ropecv::wrap_obj(_rv, "cvDenseRLOFOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getEPICK__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getEPICK();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEPICK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEPICK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getEPICLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getEPICLambda();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEPICLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEPICLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getEPICSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getEPICSigma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEPICSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEPICSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getFgsLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getFgsLambda();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFgsLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFgsLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getFgsSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getFgsSigma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFgsSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFgsSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getForwardBackward__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getForwardBackward();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getForwardBackward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getForwardBackward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getGridStep__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getGridStep();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGridStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGridStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getInterpolation__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getInterpolation();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInterpolation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInterpolation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getRICSLICType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getRICSLICType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRICSLICType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRICSLICType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getRICSPSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getRICSPSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRICSPSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRICSPSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getRLOFOpticalFlowParameter__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::optflow::RLOFOpticalFlowParameter> _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getRLOFOpticalFlowParameter();
    return ropecv::wrap_obj(_rv, "cvRLOFOpticalFlowParameter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRLOFOpticalFlowParameter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRLOFOpticalFlowParameter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getUsePostProc__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getUsePostProc();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUsePostProc: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUsePostProc: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getUseVariationalRefinement__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->getUseVariationalRefinement();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseVariationalRefinement: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseVariationalRefinement: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setEPICK__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setEPICK(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEPICK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEPICK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setEPICLambda__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setEPICLambda((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEPICLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEPICLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setEPICSigma__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setEPICSigma((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEPICSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEPICSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setFgsLambda__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setFgsLambda((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFgsLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFgsLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setFgsSigma__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setFgsSigma((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFgsSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFgsSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setForwardBackward__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setForwardBackward((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setForwardBackward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setForwardBackward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setGridStep__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setGridStep(ropecv::as_size(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGridStep: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGridStep: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setInterpolation__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setInterpolation((cv::optflow::InterpolationType)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInterpolation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInterpolation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setRICSLICType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setRICSLICType(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRICSLICType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRICSLICType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setRICSPSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setRICSPSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRICSPSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRICSPSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setRLOFOpticalFlowParameter__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setRLOFOpticalFlowParameter(ropecv::as_ptr<cv::optflow::RLOFOpticalFlowParameter>(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRLOFOpticalFlowParameter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRLOFOpticalFlowParameter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setUsePostProc__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setUsePostProc(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUsePostProc: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUsePostProc: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setUseVariationalRefinement__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::DenseRLOFOpticalFlow>(ropecv_self_)->setUseVariationalRefinement(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseVariationalRefinement: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseVariationalRefinement: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_create__0() {
  try {
    cv::Ptr<cv::optflow::RLOFOpticalFlowParameter> _rv = cv::optflow::RLOFOpticalFlowParameter::create();
    return ropecv::wrap_obj(_rv, "cvRLOFOpticalFlowParameter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getCrossSegmentationThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getCrossSegmentationThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCrossSegmentationThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCrossSegmentationThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getGlobalMotionRansacThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getGlobalMotionRansacThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGlobalMotionRansacThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGlobalMotionRansacThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getLargeWinSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getLargeWinSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLargeWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLargeWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getMaxIteration__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getMaxIteration();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxIteration: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxIteration: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getMaxLevel__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getMaxLevel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getMinEigenValue__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getMinEigenValue();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinEigenValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinEigenValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getNormSigma0__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getNormSigma0();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormSigma0: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormSigma0: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getNormSigma1__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getNormSigma1();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormSigma1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormSigma1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getSmallWinSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getSmallWinSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSmallWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSmallWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getSolverType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getSolverType();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSolverType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSolverType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getSupportRegionType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getSupportRegionType();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSupportRegionType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSupportRegionType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getUseGlobalMotionPrior__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getUseGlobalMotionPrior();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseGlobalMotionPrior: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseGlobalMotionPrior: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getUseIlluminationModel__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getUseIlluminationModel();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseIlluminationModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseIlluminationModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getUseInitialFlow__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->getUseInitialFlow();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUseInitialFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUseInitialFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setCrossSegmentationThreshold__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setCrossSegmentationThreshold(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCrossSegmentationThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCrossSegmentationThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setGlobalMotionRansacThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setGlobalMotionRansacThreshold((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGlobalMotionRansacThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGlobalMotionRansacThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setLargeWinSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setLargeWinSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLargeWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLargeWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setMaxIteration__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setMaxIteration(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxIteration: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxIteration: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setMaxLevel__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setMaxLevel(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setMinEigenValue__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setMinEigenValue((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinEigenValue: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinEigenValue: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setNormSigma0__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setNormSigma0((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormSigma0: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormSigma0: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setNormSigma1__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setNormSigma1((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormSigma1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormSigma1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setSmallWinSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setSmallWinSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSmallWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSmallWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setSolverType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setSolverType((cv::optflow::SolverType)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSolverType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSolverType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setSupportRegionType__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setSupportRegionType((cv::optflow::SupportRegionType)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSupportRegionType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSupportRegionType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseGlobalMotionPrior__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setUseGlobalMotionPrior(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseGlobalMotionPrior: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseGlobalMotionPrior: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseIlluminationModel__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setUseIlluminationModel(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseIlluminationModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseIlluminationModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseInitialFlow__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setUseInitialFlow(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseInitialFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseInitialFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseMEstimator__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::optflow::RLOFOpticalFlowParameter>(ropecv_self_)->setUseMEstimator(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseMEstimator: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseMEstimator: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_create__0(SEXP rlofParam, double forwardBackwardThreshold) {
  try {
    cv::Ptr<cv::optflow::SparseRLOFOpticalFlow> _rv = cv::optflow::SparseRLOFOpticalFlow::create(ropecv::as_ptr<cv::optflow::RLOFOpticalFlowParameter>(rlofParam), (float)forwardBackwardThreshold);
    return ropecv::wrap_obj(_rv, "cvSparseRLOFOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_getForwardBackward__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::optflow::SparseRLOFOpticalFlow>(ropecv_self_)->getForwardBackward();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getForwardBackward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getForwardBackward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_getRLOFOpticalFlowParameter__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::optflow::RLOFOpticalFlowParameter> _rv = ropecv::obj_as<cv::optflow::SparseRLOFOpticalFlow>(ropecv_self_)->getRLOFOpticalFlowParameter();
    return ropecv::wrap_obj(_rv, "cvRLOFOpticalFlowParameter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRLOFOpticalFlowParameter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRLOFOpticalFlowParameter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_setForwardBackward__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::optflow::SparseRLOFOpticalFlow>(ropecv_self_)->setForwardBackward((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setForwardBackward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setForwardBackward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_setRLOFOpticalFlowParameter__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::obj_as<cv::optflow::SparseRLOFOpticalFlow>(ropecv_self_)->setRLOFOpticalFlowParameter(ropecv::as_ptr<cv::optflow::RLOFOpticalFlowParameter>(val));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRLOFOpticalFlowParameter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRLOFOpticalFlowParameter: %s", e.what());
  }
}
