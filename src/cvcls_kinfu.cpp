// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/rgbd/kinfu.hpp>

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_create__0(SEXP params) {
  try {
    cv::Ptr<cv::kinfu::KinFu> _rv = cv::kinfu::KinFu::create(ropecv::as_ptr<cv::kinfu::Params>(params));
    return ropecv::wrap_obj(_rv, "cvKinFu");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_getCloud__0(SEXP ropecv_self_, SEXP points, SEXP normals) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->getCloud(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCloud: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCloud: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_getNormals__0(SEXP ropecv_self_, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->getNormals(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNormals: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_getPoints__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->getPoints(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_render__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->render(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("render: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("render: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_render__1(SEXP ropecv_self_, SEXP dst, SEXP cameraPose) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->render(cv::_OutputArray(*_p0), ropecv::as_matx<float, 4, 4>(cameraPose));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("render: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("render: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_reset__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->reset();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reset: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reset: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_KinFu_KinFu_update__0(SEXP ropecv_self_, SEXP depth) {
  try {
    ropecv::InArg _i0(depth);
    bool _rv = ropecv::obj_as<cv::kinfu::KinFu>(ropecv_self_)->update(_i0.ia());
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_new__0() {
  try {
    cv::Ptr<cv::kinfu::Params> _rv(new cv::kinfu::Params());
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKinfuParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKinfuParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_new__1(SEXP volumeInitialPose) {
  try {
    cv::Ptr<cv::kinfu::Params> _rv(new cv::kinfu::Params(ropecv::as_matx<float, 4, 4>(volumeInitialPose)));
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKinfuParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKinfuParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_new__2(SEXP volumeInitialPoseRot, SEXP volumeInitialPoseTransl) {
  try {
    cv::Ptr<cv::kinfu::Params> _rv(new cv::kinfu::Params(ropecv::as_matx<float, 3, 3>(volumeInitialPoseRot), ropecv::as_vec<float, 3>(volumeInitialPoseTransl)));
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKinfuParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKinfuParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_defaultParams__0() {
  try {
    cv::Ptr<cv::kinfu::Params> _rv = cv::kinfu::Params::defaultParams();
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("defaultParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("defaultParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_coarseParams__1() {
  try {
    cv::Ptr<cv::kinfu::Params> _rv = cv::kinfu::Params::coarseParams();
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("coarseParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("coarseParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_hashTSDFParams__2(bool isCoarse) {
  try {
    cv::Ptr<cv::kinfu::Params> _rv = cv::kinfu::Params::hashTSDFParams(isCoarse);
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("hashTSDFParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("hashTSDFParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_coloredTSDFParams__3(bool isCoarse) {
  try {
    cv::Ptr<cv::kinfu::Params> _rv = cv::kinfu::Params::coloredTSDFParams(isCoarse);
    return ropecv::wrap_obj(_rv, "cvKinfuParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("coloredTSDFParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("coloredTSDFParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_setInitialVolumePose__0(SEXP ropecv_self_, SEXP homogen_tf) {
  try {
    ropecv::obj_as<cv::kinfu::Params>(ropecv_self_)->setInitialVolumePose(ropecv::as_matx<float, 4, 4>(homogen_tf));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitialVolumePose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitialVolumePose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_kinfu_Params_Params_setInitialVolumePose__1(SEXP ropecv_self_, SEXP R, SEXP t) {
  try {
    ropecv::obj_as<cv::kinfu::Params>(ropecv_self_)->setInitialVolumePose(ropecv::as_matx<float, 3, 3>(R), ropecv::as_vec<float, 3>(t));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInitialVolumePose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInitialVolumePose: %s", e.what());
  }
}
