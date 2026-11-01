// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/segmentation.hpp
#include "ropecv.h"
#include <opencv2/ximgproc/segmentation.hpp>

// [[Rcpp::export]]
SEXP cv_createGraphSegmentation(double sigma, double k, int min_size) {
  try {
    cv::Ptr<cv::ximgproc::segmentation::GraphSegmentation> _rv = ::cv::ximgproc::segmentation::createGraphSegmentation(sigma, (float)k, min_size);
    return ropecv::wrap_obj(_rv, "cvGraphSegmentation");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createGraphSegmentation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createGraphSegmentation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentation() {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentation> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentation();
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentation");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyColor() {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyColor> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyColor();
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyColor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyFill() {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyFill> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyFill();
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyFill");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyFill: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyFill: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyMultiple__0() {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyMultiple();
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyMultiple");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyMultiple__1(SEXP s1) {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyMultiple(ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s1));
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyMultiple");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyMultiple__2(SEXP s1, SEXP s2) {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyMultiple(ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s1), ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s2));
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyMultiple");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyMultiple__3(SEXP s1, SEXP s2, SEXP s3) {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyMultiple(ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s1), ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s2), ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s3));
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyMultiple");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyMultiple__4(SEXP s1, SEXP s2, SEXP s3, SEXP s4) {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyMultiple(ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s1), ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s2), ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s3), ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s4));
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyMultiple");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyMultiple: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategySize() {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategySize> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategySize();
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategySize");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategySize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategySize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_createSelectiveSearchSegmentationStrategyTexture() {
  try {
    cv::Ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyTexture> _rv = ::cv::ximgproc::segmentation::createSelectiveSearchSegmentationStrategyTexture();
    return ropecv::wrap_obj(_rv, "cvSelectiveSearchSegmentationStrategyTexture");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyTexture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createSelectiveSearchSegmentationStrategyTexture: %s", e.what());
  }
}
