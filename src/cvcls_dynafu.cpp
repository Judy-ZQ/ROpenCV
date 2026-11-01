// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/rgbd/dynafu.hpp>

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_create__0(SEXP params) {
  try {
    cv::Ptr<cv::dynafu::DynaFu> _rv = cv::dynafu::DynaFu::create(ropecv::as_ptr<cv::kinfu::Params>(params));
    return ropecv::wrap_obj(_rv, "cvDynaFu");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_getCloud__0(SEXP ropecv_self_, SEXP points, SEXP normals) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    ropecv::obj_as<cv::dynafu::DynaFu>(ropecv_self_)->getCloud(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCloud: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCloud: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_getNormals__0(SEXP ropecv_self_, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::dynafu::DynaFu>(ropecv_self_)->getNormals(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_getPoints__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::dynafu::DynaFu>(ropecv_self_)->getPoints(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_render__0(SEXP ropecv_self_, SEXP dst, SEXP cameraPose) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::dynafu::DynaFu>(ropecv_self_)->render(cv::_OutputArray(*_p0), ropecv::as_matx<float, 4, 4>(cameraPose));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("render: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("render: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_reset__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::dynafu::DynaFu>(ropecv_self_)->reset();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reset: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reset: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dynafu_DynaFu_DynaFu_update__0(SEXP ropecv_self_, SEXP depth) {
  try {
    ropecv::InArg _i0(depth);
    bool _rv = ropecv::obj_as<cv::dynafu::DynaFu>(ropecv_self_)->update(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}
