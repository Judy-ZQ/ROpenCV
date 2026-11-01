// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/erfilter.hpp
#include "ropecv.h"
#include <opencv2/text/erfilter.hpp>

// [[Rcpp::export]]
SEXP cv_computeNMChannels(SEXP src, int mode, SEXP channels) {
  try {
    ropecv::InArg _i0(src);
    std::vector<cv::Mat> _o0;
    ::cv::text::computeNMChannels(_i0.ia(), cv::_OutputArray(_o0), mode);
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeNMChannels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeNMChannels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createERFilterNM1__0(SEXP cb, int thresholdDelta, double minArea, double maxArea, double minProbability, bool nonMaxSuppression, double minProbabilityDiff) {
  try {
    cv::Ptr<cv::text::ERFilter> _rv = ::cv::text::createERFilterNM1(ropecv::as_ptr<cv::text::ERFilter::Callback>(cb), thresholdDelta, (float)minArea, (float)maxArea, (float)minProbability, nonMaxSuppression, (float)minProbabilityDiff);
    return ropecv::wrap_obj(_rv, "cvERFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createERFilterNM1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createERFilterNM1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createERFilterNM1__1(std::string filename, int thresholdDelta, double minArea, double maxArea, double minProbability, bool nonMaxSuppression, double minProbabilityDiff) {
  try {
    cv::Ptr<cv::text::ERFilter> _rv = ::cv::text::createERFilterNM1(filename, thresholdDelta, (float)minArea, (float)maxArea, (float)minProbability, nonMaxSuppression, (float)minProbabilityDiff);
    return ropecv::wrap_obj(_rv, "cvERFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createERFilterNM1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createERFilterNM1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createERFilterNM2__0(SEXP cb, double minProbability) {
  try {
    cv::Ptr<cv::text::ERFilter> _rv = ::cv::text::createERFilterNM2(ropecv::as_ptr<cv::text::ERFilter::Callback>(cb), (float)minProbability);
    return ropecv::wrap_obj(_rv, "cvERFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createERFilterNM2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createERFilterNM2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createERFilterNM2__1(std::string filename, double minProbability) {
  try {
    cv::Ptr<cv::text::ERFilter> _rv = ::cv::text::createERFilterNM2(filename, (float)minProbability);
    return ropecv::wrap_obj(_rv, "cvERFilter");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createERFilterNM2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createERFilterNM2: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_detectRegions__0(SEXP image, SEXP er_filter1, SEXP er_filter2) {
  try {
    ropecv::InArg _i0(image);
    std::vector<std::vector<cv::Point>> _o0;
    ::cv::text::detectRegions(_i0.ia(), ropecv::as_ptr<cv::text::ERFilter>(er_filter1), ropecv::as_ptr<cv::text::ERFilter>(er_filter2), _o0);
    return ropecv::wrap_points_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectRegions: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectRegions: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_detectRegions__1(SEXP image, SEXP er_filter1, SEXP er_filter2, int method, std::string filename, double minProbability) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Rect> _o0;
    ::cv::text::detectRegions(_i0.ia(), ropecv::as_ptr<cv::text::ERFilter>(er_filter1), ropecv::as_ptr<cv::text::ERFilter>(er_filter2), _o0, method, filename, (float)minProbability);
    return ropecv::wrap_rects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectRegions: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectRegions: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_erGrouping(SEXP image, SEXP channel, SEXP regions, int method, std::string filename, double minProbablity) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(channel);
    std::vector<std::vector<cv::Point>> _a2 = ropecv::as_points_list(regions);
    std::vector<cv::Rect> _o0;
    ::cv::text::erGrouping(_i0.ia(), _i1.ia(), _a2, _o0, method, filename, (float)minProbablity);
    return ropecv::wrap_rects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("erGrouping: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("erGrouping: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadClassifierNM1(std::string filename) {
  try {
    cv::Ptr<cv::text::ERFilter::Callback> _rv = ::cv::text::loadClassifierNM1(filename);
    return ropecv::wrap_obj(_rv, "cvERFilterCallback");
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadClassifierNM1: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadClassifierNM1: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadClassifierNM2(std::string filename) {
  try {
    cv::Ptr<cv::text::ERFilter::Callback> _rv = ::cv::text::loadClassifierNM2(filename);
    return ropecv::wrap_obj(_rv, "cvERFilterCallback");
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadClassifierNM2: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadClassifierNM2: %s", e.what());
  }
}
