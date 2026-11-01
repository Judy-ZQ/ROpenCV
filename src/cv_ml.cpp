// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/ml.hpp
#include "ropecv.h"
#include <opencv2/ml/ml.hpp>

// [[Rcpp::export]]
SEXP cv_createConcentricSpheresTestSet(int nsamples, int nfeatures, int nclasses, SEXP samples, SEXP responses) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(samples) ? &_owned0 : ropecv::mat_ptr(samples);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(responses) ? &_owned1 : ropecv::mat_ptr(responses);
    ::cv::ml::createConcentricSpheresTestSet(nsamples, nfeatures, nclasses, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("samples") = Rf_isNull(samples) ? ropecv::wrap_mat(std::move(_owned0)) : samples,
                                Rcpp::Named("responses") = Rf_isNull(responses) ? ropecv::wrap_mat(std::move(_owned1)) : responses);
  } catch (const cv::Exception& e) {
    Rcpp::stop("createConcentricSpheresTestSet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createConcentricSpheresTestSet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_randMVNormal(SEXP mean, SEXP cov, int nsamples, SEXP dst) {
  try {
    ropecv::InArg _i0(mean);
    ropecv::InArg _i1(cov);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ml::randMVNormal(_i0.ia(), _i1.ia(), nsamples, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("randMVNormal: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("randMVNormal: %s", e.what());
  }
}
