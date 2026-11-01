// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/structured_edge_detection.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_RFFeatureGetter_RFFeatureGetter_getFeatures__0(SEXP ropecv_self_, SEXP src, SEXP features, int gnrmRad, int gsmthRad, int shrink, int outNum, int gradNum) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Mat _o0;
    if (!Rf_isNull(features)) _o0 = *ropecv::mat_ptr(features);
    ropecv::obj_as<cv::ximgproc::RFFeatureGetter>(ropecv_self_)->getFeatures(_m0, _o0, gnrmRad, gsmthRad, shrink, outNum, gradNum);
    return Rcpp::List::create(Rcpp::Named("features") = ropecv::wrap_mat(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_computeOrientation__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::StructuredEdgeDetection>(ropecv_self_)->computeOrientation(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeOrientation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeOrientation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_detectEdges__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::StructuredEdgeDetection>(ropecv_self_)->detectEdges(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectEdges: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectEdges: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_edgesNms__0(SEXP ropecv_self_, SEXP edge_image, SEXP orientation_image, int r, int s, double m, bool isParallel, SEXP dst) {
  try {
    ropecv::InArg _i0(edge_image);
    ropecv::InArg _i1(orientation_image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::StructuredEdgeDetection>(ropecv_self_)->edgesNms(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), r, s, (float)m, isParallel);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("edgesNms: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("edgesNms: %s", e.what());
  }
}
