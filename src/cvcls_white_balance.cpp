// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/xphoto/white_balance.hpp>

// [[Rcpp::export]]
SEXP cv_xphoto_GrayworldWB_GrayworldWB_getSaturationThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::GrayworldWB>(ropecv_self_)->getSaturationThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSaturationThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSaturationThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_GrayworldWB_GrayworldWB_setSaturationThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::GrayworldWB>(ropecv_self_)->setSaturationThreshold((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturationThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturationThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_extractSimpleFeatures__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->extractSimpleFeatures(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("extractSimpleFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("extractSimpleFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_getHistBinNum__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->getHistBinNum();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHistBinNum: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHistBinNum: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_getRangeMaxVal__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->getRangeMaxVal();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRangeMaxVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRangeMaxVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_getSaturationThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->getSaturationThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSaturationThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSaturationThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_setHistBinNum__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->setHistBinNum(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHistBinNum: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHistBinNum: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_setRangeMaxVal__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->setRangeMaxVal(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRangeMaxVal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRangeMaxVal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_LearningBasedWB_LearningBasedWB_setSaturationThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::LearningBasedWB>(ropecv_self_)->setSaturationThreshold((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturationThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturationThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_getInputMax__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->getInputMax();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInputMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInputMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_getInputMin__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->getInputMin();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInputMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInputMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_getOutputMax__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->getOutputMax();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOutputMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOutputMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_getOutputMin__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->getOutputMin();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOutputMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOutputMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_getP__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->getP();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_setInputMax__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->setInputMax((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_setInputMin__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->setInputMin((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_setOutputMax__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->setOutputMax((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOutputMax: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOutputMax: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_setOutputMin__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->setOutputMin((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOutputMin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOutputMin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_SimpleWB_SimpleWB_setP__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::xphoto::SimpleWB>(ropecv_self_)->setP((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_WhiteBalancer_WhiteBalancer_balanceWhite__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::xphoto::WhiteBalancer>(ropecv_self_)->balanceWhite(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("balanceWhite: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("balanceWhite: %s", e.what());
  }
}
