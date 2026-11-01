// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/odometry.hpp>

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_new__0() {
  try {
    cv::Ptr<cv::Odometry> _rv(new cv::Odometry());
    return ropecv::wrap_obj(_rv, "cvOdometry");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvOdometry: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvOdometry: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_new__1(int otype) {
  try {
    cv::Ptr<cv::Odometry> _rv(new cv::Odometry((cv::OdometryType)otype));
    return ropecv::wrap_obj(_rv, "cvOdometry");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvOdometry: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvOdometry: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_new__2(int otype, SEXP settings, int algtype) {
  try {
    cv::OdometrySettings _s0 = Rf_isNull(settings) ? cv::OdometrySettings() : *ropecv::obj_as<cv::OdometrySettings>(settings);
    cv::Ptr<cv::Odometry> _rv(new cv::Odometry((cv::OdometryType)otype, _s0, (cv::OdometryAlgoType)algtype));
    return ropecv::wrap_obj(_rv, "cvOdometry");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvOdometry: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvOdometry: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_compute__0(SEXP ropecv_self_, SEXP srcFrame, SEXP dstFrame, SEXP dst) {
  try {
    cv::OdometryFrame _s0 = Rf_isNull(srcFrame) ? cv::OdometryFrame() : *ropecv::obj_as<cv::OdometryFrame>(srcFrame);
    cv::OdometryFrame _s1 = Rf_isNull(dstFrame) ? cv::OdometryFrame() : *ropecv::obj_as<cv::OdometryFrame>(dstFrame);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::Odometry>(ropecv_self_)->compute(_s0, _s1, cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_compute__1(SEXP ropecv_self_, SEXP srcDepth, SEXP dstDepth, SEXP dst) {
  try {
    ropecv::InArg _i0(srcDepth);
    ropecv::InArg _i1(dstDepth);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::Odometry>(ropecv_self_)->compute(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_compute__2(SEXP ropecv_self_, SEXP srcDepth, SEXP srcRGB, SEXP dstDepth, SEXP dstRGB, SEXP dst) {
  try {
    ropecv::InArg _i0(srcDepth);
    ropecv::InArg _i1(srcRGB);
    ropecv::InArg _i2(dstDepth);
    ropecv::InArg _i3(dstRGB);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::Odometry>(ropecv_self_)->compute(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_getNormalsComputer__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::RgbdNormals> _rv = ropecv::obj_as<cv::Odometry>(ropecv_self_)->getNormalsComputer();
    return ropecv::wrap_obj(_rv, "cvRgbdNormals");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormalsComputer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormalsComputer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_prepareFrame__0(SEXP ropecv_self_, SEXP frame) {
  try {
    cv::OdometryFrame& _r0 = *ropecv::obj_as<cv::OdometryFrame>(frame);
    ropecv::obj_as<cv::Odometry>(ropecv_self_)->prepareFrame(_r0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("prepareFrame: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("prepareFrame: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Odometry_Odometry_prepareFrames__0(SEXP ropecv_self_, SEXP srcFrame, SEXP dstFrame) {
  try {
    cv::OdometryFrame& _r0 = *ropecv::obj_as<cv::OdometryFrame>(srcFrame);
    cv::OdometryFrame& _r1 = *ropecv::obj_as<cv::OdometryFrame>(dstFrame);
    ropecv::obj_as<cv::Odometry>(ropecv_self_)->prepareFrames(_r0, _r1);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("prepareFrames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("prepareFrames: %s", e.what());
  }
}
