// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/disparity_filter.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/disparity_filter.hpp>

// [[Rcpp::export]]
SEXP cv_computeBadPixelPercent(SEXP GT, SEXP src, SEXP ROI, int thresh) {
  try {
    ropecv::InArg _i0(GT);
    ropecv::InArg _i1(src);
    double _rv = ::cv::ximgproc::computeBadPixelPercent(_i0.ia(), _i1.ia(), ropecv::as_rect(ROI), thresh);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeBadPixelPercent: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeBadPixelPercent: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeMSE(SEXP GT, SEXP src, SEXP ROI) {
  try {
    ropecv::InArg _i0(GT);
    ropecv::InArg _i1(src);
    double _rv = ::cv::ximgproc::computeMSE(_i0.ia(), _i1.ia(), ropecv::as_rect(ROI));
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeMSE: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeMSE: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createDisparityWLSFilter(SEXP matcher_left) {
  try {
    cv::Ptr<cv::ximgproc::DisparityWLSFilter> _rv = ::cv::ximgproc::createDisparityWLSFilter(ropecv::as_ptr<cv::StereoMatcher>(matcher_left));
    return ropecv::wrap_obj(_rv, "cvDisparityWLSFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createDisparityWLSFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createDisparityWLSFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createDisparityWLSFilterGeneric(bool use_confidence) {
  try {
    cv::Ptr<cv::ximgproc::DisparityWLSFilter> _rv = ::cv::ximgproc::createDisparityWLSFilterGeneric(use_confidence);
    return ropecv::wrap_obj(_rv, "cvDisparityWLSFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createDisparityWLSFilterGeneric: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createDisparityWLSFilterGeneric: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createRightMatcher(SEXP matcher_left) {
  try {
    cv::Ptr<cv::StereoMatcher> _rv = ::cv::ximgproc::createRightMatcher(ropecv::as_ptr<cv::StereoMatcher>(matcher_left));
    return ropecv::wrap_obj(_rv, "cvStereoMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createRightMatcher: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createRightMatcher: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDisparityVis(SEXP src, double scale, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::getDisparityVis(_i0.ia(), cv::_OutputArray(*_p0), scale);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDisparityVis: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDisparityVis: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readGT(std::string src_path, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ::cv::ximgproc::readGT(src_path, cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("readGT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readGT: %s", e.what());
  }
}
