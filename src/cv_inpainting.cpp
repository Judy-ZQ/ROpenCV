// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/inpainting.hpp
#include "ropecv.h"
#include <opencv2/videostab/inpainting.hpp>
#include <opencv2/xphoto/inpainting.hpp>

// [[Rcpp::export]]
SEXP cv_calcFlowMask(SEXP flowX, SEXP flowY, SEXP errors, double maxError, SEXP mask0, SEXP mask1, SEXP flowMask) {
  try {
    cv::Mat _m0 = Rf_isNull(flowX) ? cv::Mat() : *ropecv::mat_ptr(flowX);
    cv::Mat _m1 = Rf_isNull(flowY) ? cv::Mat() : *ropecv::mat_ptr(flowY);
    cv::Mat _m2 = Rf_isNull(errors) ? cv::Mat() : *ropecv::mat_ptr(errors);
    cv::Mat _m3 = Rf_isNull(mask0) ? cv::Mat() : *ropecv::mat_ptr(mask0);
    cv::Mat _m4 = Rf_isNull(mask1) ? cv::Mat() : *ropecv::mat_ptr(mask1);
    cv::Mat _o0;
    if (!Rf_isNull(flowMask)) _o0 = *ropecv::mat_ptr(flowMask);
    ::cv::videostab::calcFlowMask(_m0, _m1, _m2, (float)maxError, _m3, _m4, _o0);
    return Rcpp::List::create(Rcpp::Named("flowMask") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcFlowMask: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcFlowMask: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_completeFrameAccordingToFlow(SEXP flowMask, SEXP flowX, SEXP flowY, SEXP frame1, SEXP mask1, double distThresh, SEXP frame0, SEXP mask0) {
  try {
    cv::Mat _m0 = Rf_isNull(flowMask) ? cv::Mat() : *ropecv::mat_ptr(flowMask);
    cv::Mat _m1 = Rf_isNull(flowX) ? cv::Mat() : *ropecv::mat_ptr(flowX);
    cv::Mat _m2 = Rf_isNull(flowY) ? cv::Mat() : *ropecv::mat_ptr(flowY);
    cv::Mat _m3 = Rf_isNull(frame1) ? cv::Mat() : *ropecv::mat_ptr(frame1);
    cv::Mat _m4 = Rf_isNull(mask1) ? cv::Mat() : *ropecv::mat_ptr(mask1);
    cv::Mat _o0;
    if (!Rf_isNull(frame0)) _o0 = *ropecv::mat_ptr(frame0);
    cv::Mat _o1;
    if (!Rf_isNull(mask0)) _o1 = *ropecv::mat_ptr(mask0);
    ::cv::videostab::completeFrameAccordingToFlow(_m0, _m1, _m2, _m3, _m4, (float)distThresh, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("frame0") = ropecv::wrap_mat(_o0),
                                Rcpp::Named("mask0") = ropecv::wrap_mat(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("completeFrameAccordingToFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("completeFrameAccordingToFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xphoto_inpaint(SEXP src, SEXP mask, SEXP dst, int algorithmType) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Mat _m1 = Rf_isNull(mask) ? cv::Mat() : *ropecv::mat_ptr(mask);
    cv::Mat _o0;
    if (!Rf_isNull(dst)) _o0 = *ropecv::mat_ptr(dst);
    ::cv::xphoto::inpaint(_m0, _m1, _o0, algorithmType);
    return Rcpp::List::create(Rcpp::Named("dst") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("inpaint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("inpaint: %s", e.what());
  }
}
