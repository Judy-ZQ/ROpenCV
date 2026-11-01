// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/surface_matching.hpp>
#include <opencv2/surface_matching/ppf_match_3d.hpp>

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__0() {
  try {
    cv::Ptr<cv::ppf_match_3d::PPF3DDetector> _rv(new cv::ppf_match_3d::PPF3DDetector());
    return ropecv::wrap_obj(_rv, "cvPPF3DDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvPPF3DDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvPPF3DDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_new__1(double relativeSamplingStep, double relativeDistanceStep, double numAngles) {
  try {
    cv::Ptr<cv::ppf_match_3d::PPF3DDetector> _rv(new cv::ppf_match_3d::PPF3DDetector(relativeSamplingStep, relativeDistanceStep, numAngles));
    return ropecv::wrap_obj(_rv, "cvPPF3DDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvPPF3DDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvPPF3DDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_match__0(SEXP ropecv_self_, SEXP scene, double relativeSceneSampleStep, double relativeSceneDistance) {
  try {
    cv::Mat _m0 = Rf_isNull(scene) ? cv::Mat() : *ropecv::mat_ptr(scene);
    std::vector<cv::Ptr<cv::ppf_match_3d::Pose3D> > _o0;
    ropecv::obj_as<cv::ppf_match_3d::PPF3DDetector>(ropecv_self_)->match(_m0, _o0, relativeSceneSampleStep, relativeSceneDistance);
    return ropecv::wrap_obj_vector<cv::ppf_match_3d::Pose3D>(_o0, "cvPose3D");
  } catch (const cv::Exception& e) {
    Rcpp::stop("match: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("match: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_PPF3DDetector_PPF3DDetector_trainModel__0(SEXP ropecv_self_, SEXP Model) {
  try {
    cv::Mat _m0 = Rf_isNull(Model) ? cv::Mat() : *ropecv::mat_ptr(Model);
    ropecv::obj_as<cv::ppf_match_3d::PPF3DDetector>(ropecv_self_)->trainModel(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("trainModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("trainModel: %s", e.what());
  }
}
