// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/stitching.hpp>

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_create__0(int mode) {
  try {
    cv::Ptr<cv::Stitcher> _rv = cv::Stitcher::create((cv::Stitcher::Mode)mode);
    return ropecv::wrap_obj(_rv, "cvStitcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_composePanorama__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->composePanorama(cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger((int)_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("composePanorama: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("composePanorama: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_composePanorama__1(SEXP ropecv_self_, SEXP images, SEXP dst) {
  try {
    ropecv::InArg _i0(images);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->composePanorama(_i0.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger((int)_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("composePanorama: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("composePanorama: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_compositingResol__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->compositingResol();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compositingResol: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compositingResol: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_estimateTransform__0(SEXP ropecv_self_, SEXP images, SEXP masks) {
  try {
    ropecv::InArg _i0(images);
    ropecv::InArg _i1(masks);
    int _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->estimateTransform(_i0.ia(), _i1.ia());
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_interpolationFlags__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->interpolationFlags();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("interpolationFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("interpolationFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_panoConfidenceThresh__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->panoConfidenceThresh();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("panoConfidenceThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("panoConfidenceThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_registrationResol__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->registrationResol();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("registrationResol: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("registrationResol: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_seamEstimationResol__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->seamEstimationResol();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("seamEstimationResol: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("seamEstimationResol: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_setCompositingResol__0(SEXP ropecv_self_, double resol_mpx) {
  try {
    ropecv::obj_as<cv::Stitcher>(ropecv_self_)->setCompositingResol(resol_mpx);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCompositingResol: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCompositingResol: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_setInterpolationFlags__0(SEXP ropecv_self_, int interp_flags) {
  try {
    ropecv::obj_as<cv::Stitcher>(ropecv_self_)->setInterpolationFlags((cv::InterpolationFlags)interp_flags);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInterpolationFlags: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInterpolationFlags: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_setPanoConfidenceThresh__0(SEXP ropecv_self_, double conf_thresh) {
  try {
    ropecv::obj_as<cv::Stitcher>(ropecv_self_)->setPanoConfidenceThresh(conf_thresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPanoConfidenceThresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPanoConfidenceThresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_setRegistrationResol__0(SEXP ropecv_self_, double resol_mpx) {
  try {
    ropecv::obj_as<cv::Stitcher>(ropecv_self_)->setRegistrationResol(resol_mpx);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRegistrationResol: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRegistrationResol: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_setSeamEstimationResol__0(SEXP ropecv_self_, double resol_mpx) {
  try {
    ropecv::obj_as<cv::Stitcher>(ropecv_self_)->setSeamEstimationResol(resol_mpx);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSeamEstimationResol: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSeamEstimationResol: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_setWaveCorrection__0(SEXP ropecv_self_, bool flag) {
  try {
    ropecv::obj_as<cv::Stitcher>(ropecv_self_)->setWaveCorrection(flag);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWaveCorrection: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWaveCorrection: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_stitch__0(SEXP ropecv_self_, SEXP images, SEXP dst) {
  try {
    ropecv::InArg _i0(images);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->stitch(_i0.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger((int)_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stitch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stitch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_stitch__1(SEXP ropecv_self_, SEXP images, SEXP masks, SEXP dst) {
  try {
    ropecv::InArg _i0(images);
    ropecv::InArg _i1(masks);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->stitch(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger((int)_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stitch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stitch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_waveCorrection__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->waveCorrection();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("waveCorrection: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("waveCorrection: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Stitcher_Stitcher_workScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::Stitcher>(ropecv_self_)->workScale();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("workScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("workScale: %s", e.what());
  }
}
