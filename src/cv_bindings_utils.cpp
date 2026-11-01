// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/bindings_utils.hpp
#include "ropecv.h"
#include <opencv2/core.hpp>
#include <opencv2/core/bindings_utils.hpp>

// [[Rcpp::export]]
SEXP cv_dumpInputArray(SEXP argument) {
  try {
    ropecv::InArg _i0(argument);
    std::string _rv = ::cv::utils::dumpInputArray(_i0.ia());
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpInputArray: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpInputArray: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dumpInputArrayOfArrays(SEXP argument) {
  try {
    ropecv::InArg _i0(argument);
    std::string _rv = ::cv::utils::dumpInputArrayOfArrays(_i0.ia());
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpInputArrayOfArrays: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpInputArrayOfArrays: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dumpInputOutputArray(SEXP argument) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(argument) ? &_owned0 : ropecv::mat_ptr(argument);
    std::string _rv = ::cv::utils::dumpInputOutputArray(cv::_InputOutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("argument") = Rf_isNull(argument) ? ropecv::wrap_mat(std::move(_owned0)) : argument);
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpInputOutputArray: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpInputOutputArray: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dumpInputOutputArrayOfArrays(SEXP argument) {
  try {
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(argument)) _o0 = ropecv::as_mat_vector(argument);
    std::string _rv = ::cv::utils::dumpInputOutputArrayOfArrays(cv::_InputOutputArray(_o0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("argument") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpInputOutputArrayOfArrays: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpInputOutputArrayOfArrays: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dumpVectorOfDouble(SEXP vec) {
  try {
    std::vector<double> _a0 = ropecv::as_dbl_vector(vec);
    std::string _rv = ::cv::utils::dumpVectorOfDouble(_a0);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpVectorOfDouble: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpVectorOfDouble: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dumpVectorOfInt(SEXP vec) {
  try {
    std::vector<int> _a0 = ropecv::as_int_vector(vec);
    std::string _rv = ::cv::utils::dumpVectorOfInt(_a0);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpVectorOfInt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpVectorOfInt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dumpVectorOfRect(SEXP vec) {
  try {
    std::vector<cv::Rect> _a0 = ropecv::as_rects(vec);
    std::string _rv = ::cv::utils::dumpVectorOfRect(_a0);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpVectorOfRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpVectorOfRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getCacheDirectoryForDownloads() {
  try {
    std::string _rv = ::cv::utils::fs::getCacheDirectoryForDownloads();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCacheDirectoryForDownloads: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCacheDirectoryForDownloads: %s", e.what());
  }
}
