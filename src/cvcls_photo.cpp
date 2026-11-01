// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/photo.hpp>

// [[Rcpp::export]]
SEXP cv_AlignExposures_AlignExposures_process__0(SEXP ropecv_self_, SEXP src, SEXP dst, SEXP times, SEXP response) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    ropecv::InArg _i2(response);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(dst)) _o0 = ropecv::as_mat_vector(dst);
    ropecv::obj_as<cv::AlignExposures>(ropecv_self_)->process(_i0.ia(), _o0, _i1.ia(), _i2.ia());
    return Rcpp::List::create(Rcpp::Named("dst") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_calculateShift__0(SEXP ropecv_self_, SEXP img0, SEXP img1) {
  try {
    ropecv::InArg _i0(img0);
    ropecv::InArg _i1(img1);
    cv::Point _rv = ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->calculateShift(_i0.ia(), _i1.ia());
    return ropecv::wrap_point(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calculateShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calculateShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_computeBitmaps__0(SEXP ropecv_self_, SEXP img, SEXP tb, SEXP eb) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(tb) ? &_owned0 : ropecv::mat_ptr(tb);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(eb) ? &_owned1 : ropecv::mat_ptr(eb);
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->computeBitmaps(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("tb") = Rf_isNull(tb) ? ropecv::wrap_mat(std::move(_owned0)) : tb,
                                Rcpp::Named("eb") = Rf_isNull(eb) ? ropecv::wrap_mat(std::move(_owned1)) : eb);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeBitmaps: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeBitmaps: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_getCut__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->getCut();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCut: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCut: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_getExcludeRange__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->getExcludeRange();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getExcludeRange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getExcludeRange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_getMaxBits__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->getMaxBits();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxBits: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxBits: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_process__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(dst)) _o0 = ropecv::as_mat_vector(dst);
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->process(_i0.ia(), _o0);
    return Rcpp::List::create(Rcpp::Named("dst") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_process__1(SEXP ropecv_self_, SEXP src, SEXP dst, SEXP times, SEXP response) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    ropecv::InArg _i2(response);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(dst)) _o0 = ropecv::as_mat_vector(dst);
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->process(_i0.ia(), _o0, _i1.ia(), _i2.ia());
    return Rcpp::List::create(Rcpp::Named("dst") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_setCut__0(SEXP ropecv_self_, bool value) {
  try {
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->setCut(value);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCut: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCut: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_setExcludeRange__0(SEXP ropecv_self_, int exclude_range) {
  try {
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->setExcludeRange(exclude_range);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setExcludeRange: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setExcludeRange: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_setMaxBits__0(SEXP ropecv_self_, int max_bits) {
  try {
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->setMaxBits(max_bits);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxBits: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxBits: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AlignMTB_AlignMTB_shiftMat__0(SEXP ropecv_self_, SEXP src, SEXP shift, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::AlignMTB>(ropecv_self_)->shiftMat(_i0.ia(), cv::_OutputArray(*_p0), ropecv::as_point(shift));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("shiftMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("shiftMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateCRF_CalibrateCRF_process__0(SEXP ropecv_self_, SEXP src, SEXP times, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::CalibrateCRF>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateDebevec_CalibrateDebevec_getLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::CalibrateDebevec>(ropecv_self_)->getLambda();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateDebevec_CalibrateDebevec_getRandom__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::CalibrateDebevec>(ropecv_self_)->getRandom();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRandom: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRandom: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateDebevec_CalibrateDebevec_getSamples__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::CalibrateDebevec>(ropecv_self_)->getSamples();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateDebevec_CalibrateDebevec_setLambda__0(SEXP ropecv_self_, double lambda) {
  try {
    ropecv::obj_as<cv::CalibrateDebevec>(ropecv_self_)->setLambda((float)lambda);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateDebevec_CalibrateDebevec_setRandom__0(SEXP ropecv_self_, bool random) {
  try {
    ropecv::obj_as<cv::CalibrateDebevec>(ropecv_self_)->setRandom(random);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRandom: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRandom: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateDebevec_CalibrateDebevec_setSamples__0(SEXP ropecv_self_, int samples) {
  try {
    ropecv::obj_as<cv::CalibrateDebevec>(ropecv_self_)->setSamples(samples);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSamples: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSamples: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateRobertson_CalibrateRobertson_getMaxIter__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::CalibrateRobertson>(ropecv_self_)->getMaxIter();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxIter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxIter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateRobertson_CalibrateRobertson_getRadiance__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::CalibrateRobertson>(ropecv_self_)->getRadiance();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRadiance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRadiance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateRobertson_CalibrateRobertson_getThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::CalibrateRobertson>(ropecv_self_)->getThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateRobertson_CalibrateRobertson_setMaxIter__0(SEXP ropecv_self_, int max_iter) {
  try {
    ropecv::obj_as<cv::CalibrateRobertson>(ropecv_self_)->setMaxIter(max_iter);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxIter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxIter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CalibrateRobertson_CalibrateRobertson_setThreshold__0(SEXP ropecv_self_, double threshold) {
  try {
    ropecv::obj_as<cv::CalibrateRobertson>(ropecv_self_)->setThreshold((float)threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeDebevec_MergeDebevec_process__0(SEXP ropecv_self_, SEXP src, SEXP times, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeDebevec>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeDebevec_MergeDebevec_process__1(SEXP ropecv_self_, SEXP src, SEXP times, SEXP response, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    ropecv::InArg _i2(response);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeDebevec>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeExposures_MergeExposures_process__0(SEXP ropecv_self_, SEXP src, SEXP times, SEXP response, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    ropecv::InArg _i2(response);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeExposures>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_getContrastWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->getContrastWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getContrastWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getContrastWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_getExposureWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->getExposureWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getExposureWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getExposureWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_getSaturationWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->getSaturationWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSaturationWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSaturationWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_process__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_process__1(SEXP ropecv_self_, SEXP src, SEXP times, SEXP response, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    ropecv::InArg _i2(response);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_setContrastWeight__0(SEXP ropecv_self_, double contrast_weiht) {
  try {
    ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->setContrastWeight((float)contrast_weiht);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setContrastWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setContrastWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_setExposureWeight__0(SEXP ropecv_self_, double exposure_weight) {
  try {
    ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->setExposureWeight((float)exposure_weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setExposureWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setExposureWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeMertens_MergeMertens_setSaturationWeight__0(SEXP ropecv_self_, double saturation_weight) {
  try {
    ropecv::obj_as<cv::MergeMertens>(ropecv_self_)->setSaturationWeight((float)saturation_weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturationWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturationWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeRobertson_MergeRobertson_process__0(SEXP ropecv_self_, SEXP src, SEXP times, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeRobertson>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MergeRobertson_MergeRobertson_process__1(SEXP ropecv_self_, SEXP src, SEXP times, SEXP response, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(times);
    ropecv::InArg _i2(response);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::MergeRobertson>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Tonemap_Tonemap_getGamma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::Tonemap>(ropecv_self_)->getGamma();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Tonemap_Tonemap_process__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::Tonemap>(ropecv_self_)->process(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Tonemap_Tonemap_setGamma__0(SEXP ropecv_self_, double gamma) {
  try {
    ropecv::obj_as<cv::Tonemap>(ropecv_self_)->setGamma((float)gamma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGamma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapDrago_TonemapDrago_getBias__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapDrago>(ropecv_self_)->getBias();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBias: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBias: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapDrago_TonemapDrago_getSaturation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapDrago>(ropecv_self_)->getSaturation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapDrago_TonemapDrago_setBias__0(SEXP ropecv_self_, double bias) {
  try {
    ropecv::obj_as<cv::TonemapDrago>(ropecv_self_)->setBias((float)bias);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBias: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBias: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapDrago_TonemapDrago_setSaturation__0(SEXP ropecv_self_, double saturation) {
  try {
    ropecv::obj_as<cv::TonemapDrago>(ropecv_self_)->setSaturation((float)saturation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapMantiuk_TonemapMantiuk_getSaturation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapMantiuk>(ropecv_self_)->getSaturation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapMantiuk_TonemapMantiuk_getScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapMantiuk>(ropecv_self_)->getScale();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapMantiuk_TonemapMantiuk_setSaturation__0(SEXP ropecv_self_, double saturation) {
  try {
    ropecv::obj_as<cv::TonemapMantiuk>(ropecv_self_)->setSaturation((float)saturation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSaturation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSaturation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapMantiuk_TonemapMantiuk_setScale__0(SEXP ropecv_self_, double scale) {
  try {
    ropecv::obj_as<cv::TonemapMantiuk>(ropecv_self_)->setScale((float)scale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapReinhard_TonemapReinhard_getColorAdaptation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapReinhard>(ropecv_self_)->getColorAdaptation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getColorAdaptation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getColorAdaptation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapReinhard_TonemapReinhard_getIntensity__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapReinhard>(ropecv_self_)->getIntensity();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIntensity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIntensity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapReinhard_TonemapReinhard_getLightAdaptation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::TonemapReinhard>(ropecv_self_)->getLightAdaptation();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLightAdaptation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLightAdaptation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapReinhard_TonemapReinhard_setColorAdaptation__0(SEXP ropecv_self_, double color_adapt) {
  try {
    ropecv::obj_as<cv::TonemapReinhard>(ropecv_self_)->setColorAdaptation((float)color_adapt);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setColorAdaptation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setColorAdaptation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapReinhard_TonemapReinhard_setIntensity__0(SEXP ropecv_self_, double intensity) {
  try {
    ropecv::obj_as<cv::TonemapReinhard>(ropecv_self_)->setIntensity((float)intensity);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIntensity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIntensity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TonemapReinhard_TonemapReinhard_setLightAdaptation__0(SEXP ropecv_self_, double light_adapt) {
  try {
    ropecv::obj_as<cv::TonemapReinhard>(ropecv_self_)->setLightAdaptation((float)light_adapt);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLightAdaptation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLightAdaptation: %s", e.what());
  }
}
