// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/rlofflow.hpp
#include "ropecv.h"
#include <opencv2/optflow/rlofflow.hpp>

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowDenseRLOF(SEXP I0, SEXP I1, SEXP flow, SEXP rlofParam, double forwardBackwardThreshold, SEXP gridStep, int interp_type, int epicK, double epicSigma, double epicLambda, int ricSPSize, int ricSLICType, bool use_post_proc, double fgsLambda, double fgsSigma, bool use_variational_refinement) {
  try {
    ropecv::InArg _i0(I0);
    ropecv::InArg _i1(I1);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(flow) ? &_owned0 : ropecv::mat_ptr(flow);
    ::cv::optflow::calcOpticalFlowDenseRLOF(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), ropecv::as_ptr<cv::optflow::RLOFOpticalFlowParameter>(rlofParam), (float)forwardBackwardThreshold, ropecv::as_size(gridStep), (cv::optflow::InterpolationType)interp_type, epicK, (float)epicSigma, (float)epicLambda, ricSPSize, ricSLICType, use_post_proc, (float)fgsLambda, (float)fgsSigma, use_variational_refinement);
    return Rf_isNull(flow) ? ropecv::wrap_mat(std::move(_owned0)) : flow;
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowDenseRLOF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowDenseRLOF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calcOpticalFlowSparseRLOF(SEXP prevImg, SEXP nextImg, SEXP prevPts, SEXP nextPts, SEXP rlofParam, double forwardBackwardThreshold, SEXP status, SEXP err) {
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
    ::cv::optflow::calcOpticalFlowSparseRLOF(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), ropecv::as_ptr<cv::optflow::RLOFOpticalFlowParameter>(rlofParam), (float)forwardBackwardThreshold);
    return Rcpp::List::create(Rcpp::Named("nextPts") = Rf_isNull(nextPts) ? ropecv::wrap_mat(std::move(_owned0)) : nextPts,
                                Rcpp::Named("status") = Rf_isNull(status) ? ropecv::wrap_mat(std::move(_owned1)) : status,
                                Rcpp::Named("err") = Rf_isNull(err) ? ropecv::wrap_mat(std::move(_owned2)) : err);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calcOpticalFlowSparseRLOF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calcOpticalFlowSparseRLOF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_DenseRLOF() {
  try {
    cv::Ptr<cv::DenseOpticalFlow> _rv = ::cv::optflow::createOptFlow_DenseRLOF();
    return ropecv::wrap_obj(_rv, "cvDenseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_DenseRLOF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_DenseRLOF: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createOptFlow_SparseRLOF() {
  try {
    cv::Ptr<cv::SparseOpticalFlow> _rv = ::cv::optflow::createOptFlow_SparseRLOF();
    return ropecv::wrap_obj(_rv, "cvSparseOpticalFlow");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOptFlow_SparseRLOF: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOptFlow_SparseRLOF: %s", e.what());
  }
}
