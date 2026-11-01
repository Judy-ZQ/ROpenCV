// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/optim.hpp
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/optim.hpp>

// [[Rcpp::export]]
SEXP cv_solveLP__0(SEXP Func, SEXP Constr, SEXP dst) {
  try {
    ropecv::InArg _i0(Func);
    ropecv::InArg _i1(Constr);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::solveLP(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("solveLP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solveLP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solveLP__1(SEXP Func, SEXP Constr, double constr_eps, SEXP dst) {
  try {
    ropecv::InArg _i0(Func);
    ropecv::InArg _i1(Constr);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::solveLP(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), constr_eps);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("solveLP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solveLP: %s", e.what());
  }
}
