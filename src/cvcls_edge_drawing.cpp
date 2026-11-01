// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/ximgproc/edge_drawing.hpp>

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_detectEdges__0(SEXP ropecv_self_, SEXP src) {
  try {
    ropecv::InArg _i0(src);
    ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->detectEdges(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectEdges: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectEdges: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_detectEllipses__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->detectEllipses(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectEllipses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectEllipses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_detectLines__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->detectLines(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectLines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectLines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_getEdgeImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->getEdgeImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_getGradientImage__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->getGradientImage(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGradientImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGradientImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_getSegmentIndicesOfLines__0(SEXP ropecv_self_) {
  try {
    std::vector<int> _rv = ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->getSegmentIndicesOfLines();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSegmentIndicesOfLines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSegmentIndicesOfLines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_getSegments__0(SEXP ropecv_self_) {
  try {
    std::vector<std::vector<cv::Point>> _rv = ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->getSegments();
    return ropecv::wrap_points_list(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSegments: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSegments: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_EdgeDrawing_setParams__0(SEXP ropecv_self_, SEXP parameters) {
  try {
    cv::ximgproc::EdgeDrawing::Params _s0 = ropecv::as_ximgproc_EdgeDrawing_Params(parameters);
    ropecv::obj_as<cv::ximgproc::EdgeDrawing>(ropecv_self_)->setParams(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_EdgeDrawing_Params_Params_new__0() {
  try {
    cv::Ptr<cv::ximgproc::EdgeDrawing::Params> _rv(new cv::ximgproc::EdgeDrawing::Params());
    return ropecv::wrap_obj(_rv, "cvEdgeDrawingParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvEdgeDrawingParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvEdgeDrawingParams: %s", e.what());
  }
}
