// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/fuzzy_F0_math.hpp
#include "ropecv.h"
#include <opencv2/fuzzy/fuzzy_F0_math.hpp>

// [[Rcpp::export]]
SEXP cv_FT02D_FL_process(SEXP matrix, int radius, SEXP dst) {
  try {
    ropecv::InArg _i0(matrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT02D_FL_process(_i0.ia(), radius, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT02D_FL_process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT02D_FL_process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT02D_FL_process_float(SEXP matrix, int radius, SEXP dst) {
  try {
    ropecv::InArg _i0(matrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT02D_FL_process_float(_i0.ia(), radius, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT02D_FL_process_float: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT02D_FL_process_float: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT02D_components(SEXP matrix, SEXP kernel, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(matrix);
    ropecv::InArg _i1(kernel);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT02D_components(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT02D_components: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT02D_components: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT02D_inverseFT(SEXP components, SEXP kernel, int width, int height, SEXP dst) {
  try {
    ropecv::InArg _i0(components);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT02D_inverseFT(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), width, height);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT02D_inverseFT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT02D_inverseFT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT02D_iteration(SEXP matrix, SEXP kernel, SEXP mask, bool firstStop, SEXP output, SEXP maskOutput) {
  try {
    ropecv::InArg _i0(matrix);
    ropecv::InArg _i1(kernel);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(output) ? &_owned0 : ropecv::mat_ptr(output);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(maskOutput) ? &_owned1 : ropecv::mat_ptr(maskOutput);
    int _rv = ::cv::ft::FT02D_iteration(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia(), cv::_OutputArray(*_p1), firstStop);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("output") = Rf_isNull(output) ? ropecv::wrap_mat(std::move(_owned0)) : output,
                                Rcpp::Named("maskOutput") = Rf_isNull(maskOutput) ? ropecv::wrap_mat(std::move(_owned1)) : maskOutput);
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT02D_iteration: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT02D_iteration: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT02D_process(SEXP matrix, SEXP kernel, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(matrix);
    ropecv::InArg _i1(kernel);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT02D_process(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT02D_process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT02D_process: %s", e.what());
  }
}
