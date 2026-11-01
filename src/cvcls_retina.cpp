// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/bioinspired/retina.hpp>

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_create__0(SEXP inputSize) {
  try {
    cv::Ptr<cv::bioinspired::Retina> _rv = cv::bioinspired::Retina::create(ropecv::as_size(inputSize));
    return ropecv::wrap_obj(_rv, "cvRetina");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_create__1(SEXP inputSize, bool colorMode, int colorSamplingMethod, bool useRetinaLogSampling, double reductionFactor, double samplingStrength) {
  try {
    cv::Ptr<cv::bioinspired::Retina> _rv = cv::bioinspired::Retina::create(ropecv::as_size(inputSize), colorMode, colorSamplingMethod, useRetinaLogSampling, (float)reductionFactor, (float)samplingStrength);
    return ropecv::wrap_obj(_rv, "cvRetina");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_activateContoursProcessing__0(SEXP ropecv_self_, bool activate) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->activateContoursProcessing(activate);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("activateContoursProcessing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("activateContoursProcessing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_activateMovingContoursProcessing__0(SEXP ropecv_self_, bool activate) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->activateMovingContoursProcessing(activate);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("activateMovingContoursProcessing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("activateMovingContoursProcessing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_applyFastToneMapping__0(SEXP ropecv_self_, SEXP inputImage, SEXP dst) {
  try {
    ropecv::InArg _i0(inputImage);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->applyFastToneMapping(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyFastToneMapping: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyFastToneMapping: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_clearBuffers__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->clearBuffers();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearBuffers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearBuffers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getInputSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getInputSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInputSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInputSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getMagno__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getMagno(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMagno: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMagno: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getMagnoRAW__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getMagnoRAW();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMagnoRAW: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMagnoRAW: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getMagnoRAW__1(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getMagnoRAW(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMagnoRAW: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMagnoRAW: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getOutputSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getOutputSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOutputSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOutputSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getParvo__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getParvo(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getParvo: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getParvo: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getParvoRAW__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getParvoRAW();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getParvoRAW: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getParvoRAW: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_getParvoRAW__1(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->getParvoRAW(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getParvoRAW: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getParvoRAW: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_printSetup__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->printSetup();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("printSetup: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("printSetup: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_run__0(SEXP ropecv_self_, SEXP inputImage) {
  try {
    ropecv::InArg _i0(inputImage);
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->run(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_setColorSaturation__0(SEXP ropecv_self_, bool saturateColors, double colorSaturationValue) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->setColorSaturation(saturateColors, (float)colorSaturationValue);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setColorSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setColorSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_setup__0(SEXP ropecv_self_, std::string retinaParameterFile, bool applyDefaultSetupOnFailure) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->setup(retinaParameterFile, applyDefaultSetupOnFailure);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setup: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setup: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_setupIPLMagnoChannel__0(SEXP ropecv_self_, bool normaliseOutput, double parasolCells_beta, double parasolCells_tau, double parasolCells_k, double amacrinCellsTemporalCutFrequency, double V0CompressionParameter, double localAdaptintegration_tau, double localAdaptintegration_k) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->setupIPLMagnoChannel(normaliseOutput, (float)parasolCells_beta, (float)parasolCells_tau, (float)parasolCells_k, (float)amacrinCellsTemporalCutFrequency, (float)V0CompressionParameter, (float)localAdaptintegration_tau, (float)localAdaptintegration_k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setupIPLMagnoChannel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setupIPLMagnoChannel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_setupOPLandIPLParvoChannel__0(SEXP ropecv_self_, bool colorMode, bool normaliseOutput, double photoreceptorsLocalAdaptationSensitivity, double photoreceptorsTemporalConstant, double photoreceptorsSpatialConstant, double horizontalCellsGain, double HcellsTemporalConstant, double HcellsSpatialConstant, double ganglionCellsSensitivity) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->setupOPLandIPLParvoChannel(colorMode, normaliseOutput, (float)photoreceptorsLocalAdaptationSensitivity, (float)photoreceptorsTemporalConstant, (float)photoreceptorsSpatialConstant, (float)horizontalCellsGain, (float)HcellsTemporalConstant, (float)HcellsSpatialConstant, (float)ganglionCellsSensitivity);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setupOPLandIPLParvoChannel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setupOPLandIPLParvoChannel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_Retina_Retina_write__0(SEXP ropecv_self_, std::string fs) {
  try {
    ropecv::obj_as<cv::bioinspired::Retina>(ropecv_self_)->write(fs);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}
