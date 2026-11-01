// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/ximgproc/disparity_filter.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityFilter_DisparityFilter_filter__0(SEXP ropecv_self_, SEXP disparity_map_left, SEXP left_view, SEXP disparity_map_right, SEXP ROI, SEXP right_view, SEXP dst) {
  try {
    ropecv::InArg _i0(disparity_map_left);
    ropecv::InArg _i1(left_view);
    ropecv::InArg _i2(disparity_map_right);
    ropecv::InArg _i3(right_view);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::DisparityFilter>(ropecv_self_)->filter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _i2.ia(), ropecv::as_rect(ROI), _i3.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getConfidenceMap__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->getConfidenceMap();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getConfidenceMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getConfidenceMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getDepthDiscontinuityRadius__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->getDepthDiscontinuityRadius();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDepthDiscontinuityRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDepthDiscontinuityRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLRCthresh__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->getLRCthresh();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLRCthresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLRCthresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLambda__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->getLambda();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getROI__0(SEXP ropecv_self_) {
  try {
    cv::Rect _rv = ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->getROI();
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getROI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getROI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getSigmaColor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->getSigmaColor();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigmaColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigmaColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setDepthDiscontinuityRadius__0(SEXP ropecv_self_, int disc_radius) {
  try {
    ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->setDepthDiscontinuityRadius(disc_radius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDepthDiscontinuityRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDepthDiscontinuityRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLRCthresh__0(SEXP ropecv_self_, int LRC_thresh) {
  try {
    ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->setLRCthresh(LRC_thresh);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLRCthresh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLRCthresh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLambda__0(SEXP ropecv_self_, double lambda) {
  try {
    ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->setLambda(lambda);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLambda: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setSigmaColor__0(SEXP ropecv_self_, double sigma_color) {
  try {
    ropecv::obj_as<cv::ximgproc::DisparityWLSFilter>(ropecv_self_)->setSigmaColor(sigma_color);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigmaColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigmaColor: %s", e.what());
  }
}
