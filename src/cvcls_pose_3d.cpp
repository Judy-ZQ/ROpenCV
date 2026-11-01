// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/surface_matching.hpp>
#include <opencv2/surface_matching/pose_3d.hpp>

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_new__0() {
  try {
    cv::Ptr<cv::ppf_match_3d::Pose3D> _rv(new cv::ppf_match_3d::Pose3D());
    return ropecv::wrap_obj(_rv, "cvPose3D");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvPose3D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvPose3D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_new__1(double Alpha, int ModelIndex, int NumVotes) {
  try {
    cv::Ptr<cv::ppf_match_3d::Pose3D> _rv(new cv::ppf_match_3d::Pose3D(Alpha, (size_t)ModelIndex, (size_t)NumVotes));
    return ropecv::wrap_obj(_rv, "cvPose3D");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvPose3D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvPose3D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_appendPose__0(SEXP ropecv_self_, SEXP IncrementalPose) {
  try {
    cv::Matx44d _o0;
    if (!Rf_isNull(IncrementalPose)) _o0 = ropecv::as_matx<double, 4, 4>(IncrementalPose);
    ropecv::obj_as<cv::ppf_match_3d::Pose3D>(ropecv_self_)->appendPose(_o0);
    return Rcpp::List::create(Rcpp::Named("IncrementalPose") = ropecv::wrap_matx<double, 4, 4>(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("appendPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("appendPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_printPose__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ppf_match_3d::Pose3D>(ropecv_self_)->printPose();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("printPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("printPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_updatePose__0(SEXP ropecv_self_, SEXP NewPose) {
  try {
    cv::Matx44d _o0;
    if (!Rf_isNull(NewPose)) _o0 = ropecv::as_matx<double, 4, 4>(NewPose);
    ropecv::obj_as<cv::ppf_match_3d::Pose3D>(ropecv_self_)->updatePose(_o0);
    return Rcpp::List::create(Rcpp::Named("NewPose") = ropecv::wrap_matx<double, 4, 4>(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("updatePose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("updatePose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_updatePose__1(SEXP ropecv_self_, SEXP NewR, SEXP NewT) {
  try {
    cv::Matx33d _o0;
    if (!Rf_isNull(NewR)) _o0 = ropecv::as_matx<double, 3, 3>(NewR);
    cv::Vec3d _o1;
    if (!Rf_isNull(NewT)) _o1 = ropecv::as_vec<double, 3>(NewT);
    ropecv::obj_as<cv::ppf_match_3d::Pose3D>(ropecv_self_)->updatePose(_o0, _o1);
    return Rcpp::List::create(Rcpp::Named("NewR") = ropecv::wrap_matx<double, 3, 3>(_o0),
                                Rcpp::Named("NewT") = ropecv::wrap_vec<double, 3>(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("updatePose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("updatePose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_Pose3D_Pose3D_updatePoseQuat__0(SEXP ropecv_self_, SEXP Q, SEXP NewT) {
  try {
    cv::Vec4d _o0;
    if (!Rf_isNull(Q)) _o0 = ropecv::as_vec<double, 4>(Q);
    cv::Vec3d _o1;
    if (!Rf_isNull(NewT)) _o1 = ropecv::as_vec<double, 3>(NewT);
    ropecv::obj_as<cv::ppf_match_3d::Pose3D>(ropecv_self_)->updatePoseQuat(_o0, _o1);
    return Rcpp::List::create(Rcpp::Named("Q") = ropecv::wrap_vec<double, 4>(_o0),
                                Rcpp::Named("NewT") = ropecv::wrap_vec<double, 3>(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("updatePoseQuat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("updatePoseQuat: %s", e.what());
  }
}
