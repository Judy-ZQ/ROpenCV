// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/saliency/saliencySpecializedClasses.hpp>

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_create__0() {
  try {
    cv::Ptr<cv::saliency::MotionSaliencyBinWangApr2014> _rv = cv::saliency::MotionSaliencyBinWangApr2014::create();
    return ropecv::wrap_obj(_rv, "cvMotionSaliencyBinWangApr2014");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_computeSaliency__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->computeSaliency(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_getImageHeight__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->getImageHeight();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImageHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImageHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_getImageWidth__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->getImageWidth();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImageWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImageWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_init__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->init();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("init: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("init: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_setImageHeight__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->setImageHeight(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImageHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImageHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_setImageWidth__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->setImageWidth(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImageWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImageWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_MotionSaliencyBinWangApr2014_MotionSaliencyBinWangApr2014_setImagesize__0(SEXP ropecv_self_, int W, int H) {
  try {
    ropecv::obj_as<cv::saliency::MotionSaliencyBinWangApr2014>(ropecv_self_)->setImagesize(W, H);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImagesize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImagesize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_create__0() {
  try {
    cv::Ptr<cv::saliency::ObjectnessBING> _rv = cv::saliency::ObjectnessBING::create();
    return ropecv::wrap_obj(_rv, "cvObjectnessBING");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_computeSaliency__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->computeSaliency(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_getBase__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->getBase();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBase: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBase: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_getNSS__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->getNSS();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNSS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNSS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_getW__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->getW();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getW: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getW: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_getobjectnessValues__0(SEXP ropecv_self_) {
  try {
    std::vector<float> _rv = ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->getobjectnessValues();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getobjectnessValues: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getobjectnessValues: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_read__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->read();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_setBBResDir__0(SEXP ropecv_self_, std::string resultsDir) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->setBBResDir(resultsDir);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBBResDir: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBBResDir: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_setBase__0(SEXP ropecv_self_, double val) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->setBase(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBase: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBase: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_setNSS__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->setNSS(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNSS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNSS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_setTrainingPath__0(SEXP ropecv_self_, std::string trainingPath) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->setTrainingPath(trainingPath);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTrainingPath: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTrainingPath: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_setW__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->setW(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setW: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setW: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_ObjectnessBING_ObjectnessBING_write__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::saliency::ObjectnessBING>(ropecv_self_)->write();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencyFineGrained_StaticSaliencyFineGrained_create__0() {
  try {
    cv::Ptr<cv::saliency::StaticSaliencyFineGrained> _rv = cv::saliency::StaticSaliencyFineGrained::create();
    return ropecv::wrap_obj(_rv, "cvStaticSaliencyFineGrained");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencyFineGrained_StaticSaliencyFineGrained_computeSaliency__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::saliency::StaticSaliencyFineGrained>(ropecv_self_)->computeSaliency(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_create__0() {
  try {
    cv::Ptr<cv::saliency::StaticSaliencySpectralResidual> _rv = cv::saliency::StaticSaliencySpectralResidual::create();
    return ropecv::wrap_obj(_rv, "cvStaticSaliencySpectralResidual");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_computeSaliency__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::saliency::StaticSaliencySpectralResidual>(ropecv_self_)->computeSaliency(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeSaliency: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_getImageHeight__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::saliency::StaticSaliencySpectralResidual>(ropecv_self_)->getImageHeight();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImageHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImageHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_getImageWidth__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::saliency::StaticSaliencySpectralResidual>(ropecv_self_)->getImageWidth();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImageWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImageWidth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_read__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    ropecv::obj_as<cv::saliency::StaticSaliencySpectralResidual>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_setImageHeight__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::saliency::StaticSaliencySpectralResidual>(ropecv_self_)->setImageHeight(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImageHeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImageHeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saliency_StaticSaliencySpectralResidual_StaticSaliencySpectralResidual_setImageWidth__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::saliency::StaticSaliencySpectralResidual>(ropecv_self_)->setImageWidth(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImageWidth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImageWidth: %s", e.what());
  }
}
