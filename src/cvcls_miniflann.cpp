// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/flann/miniflann.hpp>

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_new__0() {
  try {
    cv::Ptr<cv::flann::Index> _rv(new cv::flann::Index());
    return ropecv::wrap_obj(_rv, "cvIndex");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvIndex: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvIndex: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_new__1(SEXP features, SEXP params, int distType) {
  try {
    ropecv::InArg _i0(features);
    cv::Ptr<cv::flann::IndexParams> _fp1 = ropecv::as_flann_index_params(params);
    cv::Ptr<cv::flann::Index> _rv(new cv::flann::Index(_i0.ia(), *_fp1, static_cast<cvflann::flann_distance_t>(distType)));
    return ropecv::wrap_obj(_rv, "cvIndex");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvIndex: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvIndex: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_build__0(SEXP ropecv_self_, SEXP features, SEXP params, int distType) {
  try {
    ropecv::InArg _i0(features);
    cv::Ptr<cv::flann::IndexParams> _fp1 = ropecv::as_flann_index_params(params);
    ropecv::obj_as<cv::flann::Index>(ropecv_self_)->build(_i0.ia(), *_fp1, static_cast<cvflann::flann_distance_t>(distType));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("build: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("build: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_getAlgorithm__0(SEXP ropecv_self_) {
  try {
    cvflann::flann_algorithm_t _rv = ropecv::obj_as<cv::flann::Index>(ropecv_self_)->getAlgorithm();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAlgorithm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAlgorithm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_getDistance__0(SEXP ropecv_self_) {
  try {
    cvflann::flann_distance_t _rv = ropecv::obj_as<cv::flann::Index>(ropecv_self_)->getDistance();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_knnSearch__0(SEXP ropecv_self_, SEXP query, int knn, SEXP params, SEXP indices, SEXP dists) {
  try {
    ropecv::InArg _i0(query);
    cv::Ptr<cv::flann::SearchParams> _fp1 = ropecv::as_flann_search_params(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(indices) ? &_owned0 : ropecv::mat_ptr(indices);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dists) ? &_owned1 : ropecv::mat_ptr(dists);
    ropecv::obj_as<cv::flann::Index>(ropecv_self_)->knnSearch(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), knn, *_fp1);
    return Rcpp::List::create(Rcpp::Named("indices") = Rf_isNull(indices) ? ropecv::wrap_mat(std::move(_owned0)) : indices,
                                Rcpp::Named("dists") = Rf_isNull(dists) ? ropecv::wrap_mat(std::move(_owned1)) : dists);
  } catch (const cv::Exception& e) {
    Rcpp::stop("knnSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("knnSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_load__0(SEXP ropecv_self_, SEXP features, std::string filename) {
  try {
    ropecv::InArg _i0(features);
    bool _rv = ropecv::obj_as<cv::flann::Index>(ropecv_self_)->load(_i0.ia(), filename);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_radiusSearch__0(SEXP ropecv_self_, SEXP query, double radius, int maxResults, SEXP params, SEXP indices, SEXP dists) {
  try {
    ropecv::InArg _i0(query);
    cv::Ptr<cv::flann::SearchParams> _fp1 = ropecv::as_flann_search_params(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(indices) ? &_owned0 : ropecv::mat_ptr(indices);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dists) ? &_owned1 : ropecv::mat_ptr(dists);
    int _rv = ropecv::obj_as<cv::flann::Index>(ropecv_self_)->radiusSearch(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), radius, maxResults, *_fp1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("indices") = Rf_isNull(indices) ? ropecv::wrap_mat(std::move(_owned0)) : indices,
                                Rcpp::Named("dists") = Rf_isNull(dists) ? ropecv::wrap_mat(std::move(_owned1)) : dists);
  } catch (const cv::Exception& e) {
    Rcpp::stop("radiusSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("radiusSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_release__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::flann::Index>(ropecv_self_)->release();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("release: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("release: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_flann_Index_Index_save__0(SEXP ropecv_self_, std::string filename) {
  try {
    ropecv::obj_as<cv::flann::Index>(ropecv_self_)->save(filename);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("save: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("save: %s", e.what());
  }
}
