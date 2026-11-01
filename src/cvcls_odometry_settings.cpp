// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/odometry_settings.hpp>

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_new__0() {
  try {
    cv::Ptr<cv::OdometrySettings> _rv(new cv::OdometrySettings());
    return ropecv::wrap_obj(_rv, "cvOdometrySettings");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvOdometrySettings: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvOdometrySettings: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getAngleThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getAngleThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAngleThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAngleThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getCameraMatrix__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getCameraMatrix(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCameraMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCameraMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getIterCounts__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getIterCounts(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIterCounts: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIterCounts: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMaxDepth__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMaxDepth();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMaxDepthDiff__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMaxDepthDiff();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxDepthDiff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxDepthDiff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMaxPointsPart__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMaxPointsPart();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxPointsPart: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxPointsPart: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMaxRotation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMaxRotation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxRotation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxRotation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMaxTranslation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMaxTranslation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxTranslation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxTranslation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMinDepth__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMinDepth();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMinGradientMagnitude__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMinGradientMagnitude();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinGradientMagnitude: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinGradientMagnitude: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getMinGradientMagnitudes__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getMinGradientMagnitudes(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinGradientMagnitudes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinGradientMagnitudes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getNormalDiffThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getNormalDiffThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormalDiffThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormalDiffThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getNormalMethod__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getNormalMethod();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormalMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormalMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getNormalWinSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getNormalWinSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormalWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormalWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getSobelScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getSobelScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSobelScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSobelScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_getSobelSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->getSobelSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSobelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSobelSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setAngleThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setAngleThreshold((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAngleThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAngleThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setCameraMatrix__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setCameraMatrix(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCameraMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCameraMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setIterCounts__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setIterCounts(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIterCounts: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIterCounts: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMaxDepth__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMaxDepth((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMaxDepthDiff__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMaxDepthDiff((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxDepthDiff: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxDepthDiff: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMaxPointsPart__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMaxPointsPart((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxPointsPart: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxPointsPart: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMaxRotation__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMaxRotation((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxRotation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxRotation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMaxTranslation__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMaxTranslation((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxTranslation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxTranslation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMinDepth__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMinDepth((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMinGradientMagnitude__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMinGradientMagnitude((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinGradientMagnitude: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinGradientMagnitude: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setMinGradientMagnitudes__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setMinGradientMagnitudes(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinGradientMagnitudes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinGradientMagnitudes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setNormalDiffThreshold__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setNormalDiffThreshold((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormalDiffThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormalDiffThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setNormalMethod__0(SEXP ropecv_self_, int nm) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setNormalMethod((cv::RgbdNormals::RgbdNormalsMethod)nm);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormalMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormalMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setNormalWinSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setNormalWinSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNormalWinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNormalWinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setSobelScale__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setSobelScale(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSobelScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSobelScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_OdometrySettings_OdometrySettings_setSobelSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::OdometrySettings>(ropecv_self_)->setSobelSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSobelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSobelSize: %s", e.what());
  }
}
