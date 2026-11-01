// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/rgbd/large_kinfu.hpp>

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_create__0(SEXP params) {
  try {
    cv::Ptr<cv::large_kinfu::LargeKinfu> _rv = cv::large_kinfu::LargeKinfu::create(ropecv::as_ptr<cv::large_kinfu::Params>(params));
    return ropecv::wrap_obj(_rv, "cvLargeKinfu");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_getCloud__0(SEXP ropecv_self_, SEXP points, SEXP normals) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->getCloud(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCloud: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCloud: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_getNormals__0(SEXP ropecv_self_, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->getNormals(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_getPoints__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->getPoints(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_render__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->render(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("render: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("render: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_render__1(SEXP ropecv_self_, SEXP dst, SEXP cameraPose) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->render(cv::_OutputArray(*_p0), ropecv::as_matx<float, 4, 4>(cameraPose));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("render: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("render: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_reset__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->reset();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reset: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reset: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_LargeKinfu_LargeKinfu_update__0(SEXP ropecv_self_, SEXP depth) {
  try {
    ropecv::InArg _i0(depth);
    bool _rv = ropecv::obj_as<cv::large_kinfu::LargeKinfu>(ropecv_self_)->update(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_Params_Params_defaultParams__0() {
  try {
    cv::Ptr<cv::large_kinfu::Params> _rv = cv::large_kinfu::Params::defaultParams();
    return ropecv::wrap_obj(_rv, "cvLargeKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("defaultParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("defaultParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_Params_Params_coarseParams__1() {
  try {
    cv::Ptr<cv::large_kinfu::Params> _rv = cv::large_kinfu::Params::coarseParams();
    return ropecv::wrap_obj(_rv, "cvLargeKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("coarseParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("coarseParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_Params_Params_hashTSDFParams__2(bool isCoarse) {
  try {
    cv::Ptr<cv::large_kinfu::Params> _rv = cv::large_kinfu::Params::hashTSDFParams(isCoarse);
    return ropecv::wrap_obj(_rv, "cvLargeKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("hashTSDFParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("hashTSDFParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_VolumeParams_VolumeParams_defaultParams__0(int volumeType) {
  try {
    cv::Ptr<cv::large_kinfu::VolumeParams> _rv = cv::large_kinfu::VolumeParams::defaultParams((cv::VolumeType)volumeType);
    return ropecv::wrap_obj(_rv, "cvVolumeParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("defaultParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("defaultParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_large_kinfu_VolumeParams_VolumeParams_coarseParams__1(int volumeType) {
  try {
    cv::Ptr<cv::large_kinfu::VolumeParams> _rv = cv::large_kinfu::VolumeParams::coarseParams((cv::VolumeType)volumeType);
    return ropecv::wrap_obj(_rv, "cvVolumeParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("coarseParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("coarseParams: %s", e.what());
  }
}
