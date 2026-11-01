// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/depth.hpp
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/depth.hpp>

// [[Rcpp::export]]
SEXP cv_depthTo3d(SEXP depth, SEXP K, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(depth);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::depthTo3d(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("depthTo3d: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("depthTo3d: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_depthTo3dSparse(SEXP depth, SEXP in_K, SEXP in_points, SEXP dst) {
  try {
    ropecv::InArg _i0(depth);
    ropecv::InArg _i1(in_K);
    ropecv::InArg _i2(in_points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::depthTo3dSparse(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("depthTo3dSparse: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("depthTo3dSparse: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findPlanes(SEXP points3d, SEXP normals, int block_size, int min_size, double threshold, double sensor_error_a, double sensor_error_b, double sensor_error_c, int method, SEXP mask, SEXP plane_coefficients) {
  try {
    ropecv::InArg _i0(points3d);
    ropecv::InArg _i1(normals);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mask) ? &_owned0 : ropecv::mat_ptr(mask);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(plane_coefficients) ? &_owned1 : ropecv::mat_ptr(plane_coefficients);
    ::cv::findPlanes(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), block_size, min_size, threshold, sensor_error_a, sensor_error_b, sensor_error_c, (cv::RgbdPlaneMethod)method);
    return Rcpp::List::create(Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned0)) : mask,
                                Rcpp::Named("plane_coefficients") = Rf_isNull(plane_coefficients) ? ropecv::wrap_mat(std::move(_owned1)) : plane_coefficients);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findPlanes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findPlanes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_registerDepth(SEXP unregisteredCameraMatrix, SEXP registeredCameraMatrix, SEXP registeredDistCoeffs, SEXP Rt, SEXP unregisteredDepth, SEXP outputImagePlaneSize, bool depthDilation, SEXP dst) {
  try {
    ropecv::InArg _i0(unregisteredCameraMatrix);
    ropecv::InArg _i1(registeredCameraMatrix);
    ropecv::InArg _i2(registeredDistCoeffs);
    ropecv::InArg _i3(Rt);
    ropecv::InArg _i4(unregisteredDepth);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::registerDepth(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), ropecv::as_size(outputImagePlaneSize), cv::_OutputArray(*_p0), depthDilation);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("registerDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("registerDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rescaleDepth(SEXP in_, int type, double depth_factor, SEXP dst) {
  try {
    ropecv::InArg _i0(in_);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::rescaleDepth(_i0.ia(), type, cv::_OutputArray(*_p0), depth_factor);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("rescaleDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rescaleDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_warpFrame(SEXP depth, SEXP image, SEXP mask, SEXP Rt, SEXP cameraMatrix, SEXP warpedDepth, SEXP warpedImage, SEXP warpedMask) {
  try {
    ropecv::InArg _i0(depth);
    ropecv::InArg _i1(image);
    ropecv::InArg _i2(mask);
    ropecv::InArg _i3(Rt);
    ropecv::InArg _i4(cameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(warpedDepth) ? &_owned0 : ropecv::mat_ptr(warpedDepth);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(warpedImage) ? &_owned1 : ropecv::mat_ptr(warpedImage);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(warpedMask) ? &_owned2 : ropecv::mat_ptr(warpedMask);
    ::cv::warpFrame(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("warpedDepth") = Rf_isNull(warpedDepth) ? ropecv::wrap_mat(std::move(_owned0)) : warpedDepth,
                                Rcpp::Named("warpedImage") = Rf_isNull(warpedImage) ? ropecv::wrap_mat(std::move(_owned1)) : warpedImage,
                                Rcpp::Named("warpedMask") = Rf_isNull(warpedMask) ? ropecv::wrap_mat(std::move(_owned2)) : warpedMask);
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpFrame: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpFrame: %s", e.what());
  }
}
