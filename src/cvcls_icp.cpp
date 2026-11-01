// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/surface_matching.hpp>
#include <opencv2/surface_matching/icp.hpp>

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_ICP_ICP_new__0() {
  try {
    cv::Ptr<cv::ppf_match_3d::ICP> _rv(new cv::ppf_match_3d::ICP());
    return ropecv::wrap_obj(_rv, "cvICP");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvICP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvICP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_ICP_ICP_new__1(int iterations, double tolerence, double rejectionScale, int numLevels, int sampleType, int numMaxCorr) {
  try {
    cv::Ptr<cv::ppf_match_3d::ICP> _rv(new cv::ppf_match_3d::ICP(iterations, (float)tolerence, (float)rejectionScale, numLevels, sampleType, numMaxCorr));
    return ropecv::wrap_obj(_rv, "cvICP");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvICP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvICP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_ICP_ICP_registerModelToScene__0(SEXP ropecv_self_, SEXP srcPC, SEXP dstPC, SEXP poses) {
  try {
    cv::Mat _m0 = Rf_isNull(srcPC) ? cv::Mat() : *ropecv::mat_ptr(srcPC);
    cv::Mat _m1 = Rf_isNull(dstPC) ? cv::Mat() : *ropecv::mat_ptr(dstPC);
    std::vector<cv::Ptr<cv::ppf_match_3d::Pose3D> > _o0;
    if (!Rf_isNull(poses)) _o0 = ropecv::as_obj_vector<cv::ppf_match_3d::Pose3D>(poses);
    int _rv = ropecv::obj_as<cv::ppf_match_3d::ICP>(ropecv_self_)->registerModelToScene(_m0, _m1, _o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("poses") = ropecv::wrap_obj_vector<cv::ppf_match_3d::Pose3D>(_o0, "cvPose3D"));
  } catch (const cv::Exception& e) {
    Rcpp::stop("registerModelToScene: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("registerModelToScene: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ppf_match_3d_ICP_ICP_registerModelToScene__1(SEXP ropecv_self_, SEXP srcPC, SEXP dstPC) {
  try {
    cv::Mat _m0 = Rf_isNull(srcPC) ? cv::Mat() : *ropecv::mat_ptr(srcPC);
    cv::Mat _m1 = Rf_isNull(dstPC) ? cv::Mat() : *ropecv::mat_ptr(dstPC);
    double _o0 = 0;
    cv::Matx44d _o1;
    int _rv = ropecv::obj_as<cv::ppf_match_3d::ICP>(ropecv_self_)->registerModelToScene(_m0, _m1, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("residual") = Rf_ScalarReal(_o0),
                                Rcpp::Named("pose") = ropecv::wrap_matx<double, 4, 4>(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("registerModelToScene: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("registerModelToScene: %s", e.what());
  }
}
