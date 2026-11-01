// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/edge_filter.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/edge_filter.hpp>

// [[Rcpp::export]]
SEXP cv_amFilter(SEXP joint, SEXP src, double sigma_s, double sigma_r, bool adjust_outliers, SEXP dst) {
  try {
    ropecv::InArg _i0(joint);
    ropecv::InArg _i1(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::amFilter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), sigma_s, sigma_r, adjust_outliers);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("amFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("amFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bilateralTextureFilter(SEXP src, int fr, int numIter, double sigmaAlpha, double sigmaAvg, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::bilateralTextureFilter(_i0.ia(), cv::_OutputArray(*_p0), fr, numIter, sigmaAlpha, sigmaAvg);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bilateralTextureFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bilateralTextureFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createAMFilter(double sigma_s, double sigma_r, bool adjust_outliers) {
  try {
    cv::Ptr<cv::ximgproc::AdaptiveManifoldFilter> _rv = ::cv::ximgproc::createAMFilter(sigma_s, sigma_r, adjust_outliers);
    return ropecv::wrap_obj(_rv, "cvAdaptiveManifoldFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createAMFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createAMFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createDTFilter(SEXP guide, double sigmaSpatial, double sigmaColor, int mode, int numIters) {
  try {
    ropecv::InArg _i0(guide);
    cv::Ptr<cv::ximgproc::DTFilter> _rv = ::cv::ximgproc::createDTFilter(_i0.ia(), sigmaSpatial, sigmaColor, mode, numIters);
    return ropecv::wrap_obj(_rv, "cvDTFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createDTFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createDTFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createFastBilateralSolverFilter(SEXP guide, double sigma_spatial, double sigma_luma, double sigma_chroma, double lambda, int num_iter, double max_tol) {
  try {
    ropecv::InArg _i0(guide);
    cv::Ptr<cv::ximgproc::FastBilateralSolverFilter> _rv = ::cv::ximgproc::createFastBilateralSolverFilter(_i0.ia(), sigma_spatial, sigma_luma, sigma_chroma, lambda, num_iter, max_tol);
    return ropecv::wrap_obj(_rv, "cvFastBilateralSolverFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFastBilateralSolverFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFastBilateralSolverFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createFastGlobalSmootherFilter(SEXP guide, double lambda, double sigma_color, double lambda_attenuation, int num_iter) {
  try {
    ropecv::InArg _i0(guide);
    cv::Ptr<cv::ximgproc::FastGlobalSmootherFilter> _rv = ::cv::ximgproc::createFastGlobalSmootherFilter(_i0.ia(), lambda, sigma_color, lambda_attenuation, num_iter);
    return ropecv::wrap_obj(_rv, "cvFastGlobalSmootherFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createFastGlobalSmootherFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createFastGlobalSmootherFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createGuidedFilter(SEXP guide, int radius, double eps, double scale) {
  try {
    ropecv::InArg _i0(guide);
    cv::Ptr<cv::ximgproc::GuidedFilter> _rv = ::cv::ximgproc::createGuidedFilter(_i0.ia(), radius, eps, scale);
    return ropecv::wrap_obj(_rv, "cvGuidedFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createGuidedFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createGuidedFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dtFilter(SEXP guide, SEXP src, double sigmaSpatial, double sigmaColor, int mode, int numIters, SEXP dst) {
  try {
    ropecv::InArg _i0(guide);
    ropecv::InArg _i1(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::dtFilter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), sigmaSpatial, sigmaColor, mode, numIters);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dtFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dtFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastBilateralSolverFilter(SEXP guide, SEXP src, SEXP confidence, double sigma_spatial, double sigma_luma, double sigma_chroma, double lambda, int num_iter, double max_tol, SEXP dst) {
  try {
    ropecv::InArg _i0(guide);
    ropecv::InArg _i1(src);
    ropecv::InArg _i2(confidence);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::fastBilateralSolverFilter(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0), sigma_spatial, sigma_luma, sigma_chroma, lambda, num_iter, max_tol);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastBilateralSolverFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastBilateralSolverFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fastGlobalSmootherFilter(SEXP guide, SEXP src, double lambda, double sigma_color, double lambda_attenuation, int num_iter, SEXP dst) {
  try {
    ropecv::InArg _i0(guide);
    ropecv::InArg _i1(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::fastGlobalSmootherFilter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), lambda, sigma_color, lambda_attenuation, num_iter);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fastGlobalSmootherFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fastGlobalSmootherFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_guidedFilter(SEXP guide, SEXP src, int radius, double eps, int dDepth, double scale, SEXP dst) {
  try {
    ropecv::InArg _i0(guide);
    ropecv::InArg _i1(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::guidedFilter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), radius, eps, dDepth, scale);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("guidedFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("guidedFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_jointBilateralFilter(SEXP joint, SEXP src, int d, double sigmaColor, double sigmaSpace, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(joint);
    ropecv::InArg _i1(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::jointBilateralFilter(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), d, sigmaColor, sigmaSpace, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("jointBilateralFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("jointBilateralFilter: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_l0Smooth(SEXP src, double lambda, double kappa, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::l0Smooth(_i0.ia(), cv::_OutputArray(*_p0), lambda, kappa);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("l0Smooth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("l0Smooth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rollingGuidanceFilter(SEXP src, int d, double sigmaColor, double sigmaSpace, int numOfIter, int borderType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::ximgproc::rollingGuidanceFilter(_i0.ia(), cv::_OutputArray(*_p0), d, sigmaColor, sigmaSpace, numOfIter, borderType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("rollingGuidanceFilter: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rollingGuidanceFilter: %s", e.what());
  }
}
