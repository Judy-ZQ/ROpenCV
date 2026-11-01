// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/ptcloud.hpp
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/ptcloud.hpp>

// [[Rcpp::export]]
SEXP cv_farthestPointSampling__0(SEXP input_pts, int sampled_pts_size, double dist_lower_limit, SEXP sampled_point_flags) {
  try {
    ropecv::InArg _i0(input_pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(sampled_point_flags) ? &_owned0 : ropecv::mat_ptr(sampled_point_flags);
    cv::RNG _o1;
    int _rv = ::cv::farthestPointSampling(cv::_OutputArray(*_p0), _i0.ia(), sampled_pts_size, (float)dist_lower_limit, &_o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("sampled_point_flags") = Rf_isNull(sampled_point_flags) ? ropecv::wrap_mat(std::move(_owned0)) : sampled_point_flags,
                                Rcpp::Named("rng") = R_NilValue);
  } catch (const cv::Exception& e) {
    Rcpp::stop("farthestPointSampling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("farthestPointSampling: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_farthestPointSampling__1(SEXP input_pts, double sampled_scale, double dist_lower_limit, SEXP sampled_point_flags) {
  try {
    ropecv::InArg _i0(input_pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(sampled_point_flags) ? &_owned0 : ropecv::mat_ptr(sampled_point_flags);
    cv::RNG _o1;
    int _rv = ::cv::farthestPointSampling(cv::_OutputArray(*_p0), _i0.ia(), (float)sampled_scale, (float)dist_lower_limit, &_o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("sampled_point_flags") = Rf_isNull(sampled_point_flags) ? ropecv::wrap_mat(std::move(_owned0)) : sampled_point_flags,
                                Rcpp::Named("rng") = R_NilValue);
  } catch (const cv::Exception& e) {
    Rcpp::stop("farthestPointSampling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("farthestPointSampling: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_randomSampling__0(SEXP input_pts, int sampled_pts_size, SEXP sampled_pts) {
  try {
    ropecv::InArg _i0(input_pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(sampled_pts) ? &_owned0 : ropecv::mat_ptr(sampled_pts);
    cv::RNG _o1;
    ::cv::randomSampling(cv::_OutputArray(*_p0), _i0.ia(), sampled_pts_size, &_o1);
    return Rcpp::List::create(Rcpp::Named("sampled_pts") = Rf_isNull(sampled_pts) ? ropecv::wrap_mat(std::move(_owned0)) : sampled_pts,
                                Rcpp::Named("rng") = R_NilValue);
  } catch (const cv::Exception& e) {
    Rcpp::stop("randomSampling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("randomSampling: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_randomSampling__1(SEXP input_pts, double sampled_scale, SEXP sampled_pts) {
  try {
    ropecv::InArg _i0(input_pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(sampled_pts) ? &_owned0 : ropecv::mat_ptr(sampled_pts);
    cv::RNG _o1;
    ::cv::randomSampling(cv::_OutputArray(*_p0), _i0.ia(), (float)sampled_scale, &_o1);
    return Rcpp::List::create(Rcpp::Named("sampled_pts") = Rf_isNull(sampled_pts) ? ropecv::wrap_mat(std::move(_owned0)) : sampled_pts,
                                Rcpp::Named("rng") = R_NilValue);
  } catch (const cv::Exception& e) {
    Rcpp::stop("randomSampling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("randomSampling: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_voxelGridSampling(SEXP dst, SEXP input_pts, double length, double width, double height) {
  try {
    ropecv::InArg _i0(input_pts);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::voxelGridSampling(cv::_OutputArray(*_p0), _i0.ia(), (float)length, (float)width, (float)height);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("voxelGridSampling: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("voxelGridSampling: %s", e.what());
  }
}
