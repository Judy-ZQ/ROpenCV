// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/volume_settings.hpp>

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_new__0(int volumeType) {
  try {
    cv::Ptr<cv::VolumeSettings> _rv(new cv::VolumeSettings((cv::VolumeType)volumeType));
    return ropecv::wrap_obj(_rv, "cvVolumeSettings");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVolumeSettings: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVolumeSettings: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getCameraIntegrateIntrinsics__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getCameraIntegrateIntrinsics(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCameraIntegrateIntrinsics: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCameraIntegrateIntrinsics: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getCameraRaycastIntrinsics__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getCameraRaycastIntrinsics(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCameraRaycastIntrinsics: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCameraRaycastIntrinsics: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getDepthFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getDepthFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDepthFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDepthFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getIntegrateHeight__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getIntegrateHeight();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIntegrateHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIntegrateHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getIntegrateWidth__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getIntegrateWidth();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIntegrateWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIntegrateWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getMaxDepth__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getMaxDepth();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getMaxWeight__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getMaxWeight();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getRaycastHeight__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getRaycastHeight();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRaycastHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRaycastHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getRaycastStepFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getRaycastStepFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRaycastStepFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRaycastStepFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getRaycastWidth__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getRaycastWidth();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRaycastWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRaycastWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getTsdfTruncateDistance__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getTsdfTruncateDistance();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTsdfTruncateDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTsdfTruncateDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getVolumePose__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getVolumePose(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVolumePose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVolumePose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getVolumeResolution__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getVolumeResolution(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVolumeResolution: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVolumeResolution: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getVolumeStrides__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getVolumeStrides(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVolumeStrides: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVolumeStrides: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_getVoxelSize__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->getVoxelSize();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVoxelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVoxelSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setCameraIntegrateIntrinsics__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setCameraIntegrateIntrinsics(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCameraIntegrateIntrinsics: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCameraIntegrateIntrinsics: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setCameraRaycastIntrinsics__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setCameraRaycastIntrinsics(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCameraRaycastIntrinsics: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCameraRaycastIntrinsics: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setDepthFactor__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setDepthFactor((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDepthFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDepthFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setIntegrateHeight__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setIntegrateHeight(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIntegrateHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIntegrateHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setIntegrateWidth__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setIntegrateWidth(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIntegrateWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIntegrateWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setMaxDepth__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setMaxDepth((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setMaxWeight__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setMaxWeight(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setRaycastHeight__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setRaycastHeight(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRaycastHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRaycastHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setRaycastStepFactor__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setRaycastStepFactor((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRaycastStepFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRaycastStepFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setRaycastWidth__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setRaycastWidth(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRaycastWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRaycastWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setTsdfTruncateDistance__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setTsdfTruncateDistance((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTsdfTruncateDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTsdfTruncateDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setVolumePose__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setVolumePose(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVolumePose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVolumePose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setVolumeResolution__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setVolumeResolution(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVolumeResolution: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVolumeResolution: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_VolumeSettings_VolumeSettings_setVoxelSize__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::VolumeSettings>(ropecv_self_)->setVoxelSize((float)val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVoxelSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVoxelSize: %s", e.what());
  }
}
