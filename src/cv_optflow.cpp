// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/optflow.hpp
#include "ropecv.h"
#include <opencv2/optflow.hpp>

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowSF__0(SEXP from, SEXP to, int layers, int averaging_block_size, int max_flow, SEXP dst) {
  try {
    ropecv::InArg _i0(from);
    ropecv::InArg _i1(to);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::optflow::calcOpticalFlowSF(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), layers, averaging_block_size, max_flow);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowSF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowSF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowSF__1(SEXP from, SEXP to, int layers, int averaging_block_size, int max_flow, double sigma_dist, double sigma_color, int postprocess_window, double sigma_dist_fix, double sigma_color_fix, double occ_thr, int upscale_averaging_radius, double upscale_sigma_dist, double upscale_sigma_color, double speed_up_thr, SEXP dst) {
  try {
    ropecv::InArg _i0(from);
    ropecv::InArg _i1(to);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::optflow::calcOpticalFlowSF(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), layers, averaging_block_size, max_flow, sigma_dist, sigma_color, postprocess_window, sigma_dist_fix, sigma_color_fix, occ_thr, upscale_averaging_radius, upscale_sigma_dist, upscale_sigma_color, speed_up_thr);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowSF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowSF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowSparseToDense(SEXP from, SEXP to, int grid_step, int k, double sigma, bool use_post_proc, double fgs_lambda, double fgs_sigma, SEXP dst) {
  try {
    ropecv::InArg _i0(from);
    ropecv::InArg _i1(to);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::optflow::calcOpticalFlowSparseToDense(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), grid_step, k, (float)sigma, use_post_proc, (float)fgs_lambda, (float)fgs_sigma);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowSparseToDense: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowSparseToDense: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_DeepFlow() {
  try {
    cv::Ptr<cv::DenseOpticalFlow> _rv = ::cv::optflow::createOptFlow_DeepFlow();
    return ropecv::wrap_obj(_rv, "cvDenseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_DeepFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_DeepFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_DualTVL1() {
  try {
    cv::Ptr<cv::optflow::DualTVL1OpticalFlow> _rv = ::cv::optflow::createOptFlow_DualTVL1();
    return ropecv::wrap_obj(_rv, "cvDualTVL1OpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_DualTVL1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_DualTVL1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_Farneback() {
  try {
    cv::Ptr<cv::DenseOpticalFlow> _rv = ::cv::optflow::createOptFlow_Farneback();
    return ropecv::wrap_obj(_rv, "cvDenseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_Farneback: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_Farneback: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_SimpleFlow() {
  try {
    cv::Ptr<cv::DenseOpticalFlow> _rv = ::cv::optflow::createOptFlow_SimpleFlow();
    return ropecv::wrap_obj(_rv, "cvDenseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_SimpleFlow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_SimpleFlow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_SparseToDense() {
  try {
    cv::Ptr<cv::DenseOpticalFlow> _rv = ::cv::optflow::createOptFlow_SparseToDense();
    return ropecv::wrap_obj(_rv, "cvDenseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_SparseToDense: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_SparseToDense: %s", e.what());
  }
}
