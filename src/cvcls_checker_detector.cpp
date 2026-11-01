// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/mcc/checker_detector.hpp>

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDetector_CCheckerDetector_create__0() {
  try {
    cv::Ptr<cv::mcc::CCheckerDetector> _rv = cv::mcc::CCheckerDetector::create();
    return ropecv::wrap_obj(_rv, "cvCCheckerDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDetector_CCheckerDetector_getBestColorChecker__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::mcc::CChecker> _rv = ropecv::obj_as<cv::mcc::CCheckerDetector>(ropecv_self_)->getBestColorChecker();
    return ropecv::wrap_obj(_rv, "cvCChecker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBestColorChecker: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBestColorChecker: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDetector_CCheckerDetector_getListColorChecker__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Ptr<cv::mcc::CChecker> > _rv = ropecv::obj_as<cv::mcc::CCheckerDetector>(ropecv_self_)->getListColorChecker();
    return ropecv::wrap_obj_vector<cv::mcc::CChecker>(_rv, "cvCChecker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getListColorChecker: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getListColorChecker: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDetector_CCheckerDetector_process__0(SEXP ropecv_self_, SEXP image, int chartType, int nc, bool useNet, SEXP params) {
  try {
    ropecv::InArg _i0(image);
    bool _rv = ropecv::obj_as<cv::mcc::CCheckerDetector>(ropecv_self_)->process(_i0.ia(), (cv::mcc::TYPECHART)chartType, nc, useNet, ropecv::as_ptr<cv::mcc::DetectorParameters>(params));
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_CCheckerDetector_CCheckerDetector_setNet__0(SEXP ropecv_self_, SEXP net) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(net) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(net);
    bool _rv = ropecv::obj_as<cv::mcc::CCheckerDetector>(ropecv_self_)->setNet(_s0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_mcc_DetectorParameters_DetectorParameters_create__0() {
  try {
    cv::Ptr<cv::mcc::DetectorParameters> _rv = cv::mcc::DetectorParameters::create();
    return ropecv::wrap_obj(_rv, "cvMccDetectorParameters");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}
