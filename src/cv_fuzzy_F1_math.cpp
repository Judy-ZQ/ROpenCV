// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/fuzzy_F1_math.hpp
#include "ropecv.h"
#include <opencv2/fuzzy/fuzzy_F1_math.hpp>

// [[Rcpp::export]]
SEXP cv_FT12D_components(SEXP matrix, SEXP kernel, SEXP dst) {
  try {
    ropecv::InArg _i0(matrix);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT12D_components(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT12D_components: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT12D_components: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT12D_createPolynomMatrixHorizontal(int radius, int chn, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT12D_createPolynomMatrixHorizontal(radius, cv::_OutputArray(*_p0), chn);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT12D_createPolynomMatrixHorizontal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT12D_createPolynomMatrixHorizontal: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT12D_createPolynomMatrixVertical(int radius, int chn, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT12D_createPolynomMatrixVertical(radius, cv::_OutputArray(*_p0), chn);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT12D_createPolynomMatrixVertical: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT12D_createPolynomMatrixVertical: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT12D_inverseFT(SEXP components, SEXP kernel, int width, int height, SEXP dst) {
  try {
    ropecv::InArg _i0(components);
    ropecv::InArg _i1(kernel);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT12D_inverseFT(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), width, height);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT12D_inverseFT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT12D_inverseFT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT12D_polynomial(SEXP matrix, SEXP kernel, SEXP mask, SEXP c00, SEXP c10, SEXP c01, SEXP components) {
  try {
    ropecv::InArg _i0(matrix);
    ropecv::InArg _i1(kernel);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(c00) ? &_owned0 : ropecv::mat_ptr(c00);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(c10) ? &_owned1 : ropecv::mat_ptr(c10);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(c01) ? &_owned2 : ropecv::mat_ptr(c01);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(components) ? &_owned3 : ropecv::mat_ptr(components);
    ::cv::ft::FT12D_polynomial(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), _i2.ia());
    return Rcpp::List::create(Rcpp::Named("c00") = Rf_isNull(c00) ? ropecv::wrap_mat(std::move(_owned0)) : c00,
                                Rcpp::Named("c10") = Rf_isNull(c10) ? ropecv::wrap_mat(std::move(_owned1)) : c10,
                                Rcpp::Named("c01") = Rf_isNull(c01) ? ropecv::wrap_mat(std::move(_owned2)) : c01,
                                Rcpp::Named("components") = Rf_isNull(components) ? ropecv::wrap_mat(std::move(_owned3)) : components);
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT12D_polynomial: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT12D_polynomial: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FT12D_process(SEXP matrix, SEXP kernel, SEXP mask, SEXP dst) {
  try {
    ropecv::InArg _i0(matrix);
    ropecv::InArg _i1(kernel);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ft::FT12D_process(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("FT12D_process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("FT12D_process: %s", e.what());
  }
}
