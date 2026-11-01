// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/tracking.hpp
#include "ropecv.h"
#include <opencv2/tracking.hpp>

// [[Rcpp::export]]
SEXP cv_CamShift(SEXP probImage, SEXP window, SEXP criteria) {
  try {
    ropecv::InArg _i0(probImage);
    cv::Rect _o0;
    if (!Rf_isNull(window)) _o0 = ropecv::as_rect(window);
    cv::RotatedRect _rv = ::cv::CamShift(_i0.ia(), _o0, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_rotatedrect(_rv),
                                Rcpp::Named("window") = ropecv::wrap_rect(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("CamShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("CamShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_buildOpticalFlowPyramid(SEXP img, SEXP winSize, int maxLevel, bool withDerivatives, int pyrBorder, int derivBorder, bool tryReuseInputImage, SEXP pyramid) {
  try {
    ropecv::InArg _i0(img);
    std::vector<cv::Mat> _o0;
    int _rv = ::cv::buildOpticalFlowPyramid(_i0.ia(), cv::_OutputArray(_o0), ropecv::as_size(winSize), maxLevel, withDerivatives, pyrBorder, derivBorder, tryReuseInputImage);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("pyramid") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("buildOpticalFlowPyramid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("buildOpticalFlowPyramid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowFarneback(SEXP prev, SEXP next_, SEXP flow, double pyr_scale, int levels, int winsize, int iterations, int poly_n, double poly_sigma, int flags) {
  try {
    ropecv::InArg _i0(prev);
    ropecv::InArg _i1(next_);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(flow) ? &_owned0 : ropecv::mat_ptr(flow);
    ::cv::calcOpticalFlowFarneback(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), pyr_scale, levels, winsize, iterations, poly_n, poly_sigma, flags);
    return Rf_isNull(flow) ? ropecv::wrap_mat(std::move(_owned0)) : flow;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowFarneback: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowFarneback: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowPyrLK(SEXP prevImg, SEXP nextImg, SEXP prevPts, SEXP nextPts, SEXP winSize, int maxLevel, SEXP criteria, int flags, double minEigThreshold, SEXP status, SEXP err) {
  try {
    ropecv::InArg _i0(prevImg);
    ropecv::InArg _i1(nextImg);
    ropecv::InArg _i2(prevPts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(nextPts) ? &_owned0 : ropecv::mat_ptr(nextPts);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(status) ? &_owned1 : ropecv::mat_ptr(status);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(err) ? &_owned2 : ropecv::mat_ptr(err);
    ::cv::calcOpticalFlowPyrLK(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), ropecv::as_size(winSize), maxLevel, ropecv::as_termcriteria(criteria), flags, minEigThreshold);
    return Rcpp::List::create(Rcpp::Named("nextPts") = Rf_isNull(nextPts) ? ropecv::wrap_mat(std::move(_owned0)) : nextPts,
                                Rcpp::Named("status") = Rf_isNull(status) ? ropecv::wrap_mat(std::move(_owned1)) : status,
                                Rcpp::Named("err") = Rf_isNull(err) ? ropecv::wrap_mat(std::move(_owned2)) : err);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowPyrLK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowPyrLK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeECC(SEXP templateImage, SEXP inputImage, SEXP inputMask) {
  try {
    ropecv::InArg _i0(templateImage);
    ropecv::InArg _i1(inputImage);
    ropecv::InArg _i2(inputMask);
    double _rv = ::cv::computeECC(_i0.ia(), _i1.ia(), _i2.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeECC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeECC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateRigidTransform(SEXP src, SEXP dst, bool fullAffine) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    cv::Mat _rv = ::cv::estimateRigidTransform(_i0.ia(), _i1.ia(), fullAffine);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateRigidTransform: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateRigidTransform: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findTransformECC__0(SEXP templateImage, SEXP inputImage, SEXP warpMatrix, int motionType, SEXP criteria, SEXP inputMask) {
  try {
    ropecv::InArg _i0(templateImage);
    ropecv::InArg _i1(inputImage);
    ropecv::InArg _i2(inputMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(warpMatrix) ? &_owned0 : ropecv::mat_ptr(warpMatrix);
    double _rv = ::cv::findTransformECC(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), motionType, ropecv::as_termcriteria(criteria), _i2.ia());
    SEXP _out = Rf_isNull(warpMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : warpMatrix;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findTransformECC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findTransformECC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findTransformECC__1(SEXP templateImage, SEXP inputImage, SEXP warpMatrix, int motionType, SEXP criteria, SEXP inputMask, int gaussFiltSize) {
  try {
    ropecv::InArg _i0(templateImage);
    ropecv::InArg _i1(inputImage);
    ropecv::InArg _i2(inputMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(warpMatrix) ? &_owned0 : ropecv::mat_ptr(warpMatrix);
    double _rv = ::cv::findTransformECC(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), motionType, ropecv::as_termcriteria(criteria), _i2.ia(), gaussFiltSize);
    SEXP _out = Rf_isNull(warpMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : warpMatrix;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarReal(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findTransformECC: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findTransformECC: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_meanShift(SEXP probImage, SEXP window, SEXP criteria) {
  try {
    ropecv::InArg _i0(probImage);
    cv::Rect _o0;
    if (!Rf_isNull(window)) _o0 = ropecv::as_rect(window);
    int _rv = ::cv::meanShift(_i0.ia(), _o0, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("window") = ropecv::wrap_rect(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("meanShift: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("meanShift: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readOpticalFlow(std::string path) {
  try {
    cv::Mat _rv = ::cv::readOpticalFlow(path);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("readOpticalFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readOpticalFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_writeOpticalFlow(std::string path, SEXP flow) {
  try {
    ropecv::InArg _i0(flow);
    bool _rv = ::cv::writeOpticalFlow(path, _i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeOpticalFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeOpticalFlow: %s", e.what());
  }
}
