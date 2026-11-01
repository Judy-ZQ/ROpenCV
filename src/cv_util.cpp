// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/util.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/datasets/util.hpp>

// [[Rcpp::export]]
SEXP cv_createDirectory(std::string path) {
  try {
    ::cv::datasets::createDirectory(path);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createDirectory: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createDirectory: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_datasets_split(std::string s, SEXP elems, std::string delim) {
  try {
    std::vector<std::string> _o0;
    if (!Rf_isNull(elems)) _o0 = ropecv::as_vec_string(elems);
    ::cv::datasets::split(s, _o0, (delim.empty() ? 0 : (char)delim[0]));
    return Rcpp::List::create(Rcpp::Named("elems") = Rcpp::wrap(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("split: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("split: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDirList(std::string dirName, SEXP fileNames) {
  try {
    std::vector<std::string> _o0;
    if (!Rf_isNull(fileNames)) _o0 = ropecv::as_vec_string(fileNames);
    ::cv::datasets::getDirList(dirName, _o0);
    return Rcpp::List::create(Rcpp::Named("fileNames") = Rcpp::wrap(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDirList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDirList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_overlapRoi(SEXP tl1, SEXP tl2, SEXP sz1, SEXP sz2, SEXP roi) {
  try {
    cv::Rect _o0;
    if (!Rf_isNull(roi)) _o0 = ropecv::as_rect(roi);
    bool _rv = ::cv::detail::overlapRoi(ropecv::as_point(tl1), ropecv::as_point(tl2), ropecv::as_size(sz1), ropecv::as_size(sz2), _o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("roi") = ropecv::wrap_rect(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("overlapRoi: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("overlapRoi: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resultRoi(SEXP corners, SEXP sizes) {
  try {
    std::vector<cv::Point> _a0 = ropecv::as_points(corners);
    std::vector<cv::Size> _a1 = ropecv::as_sizes(sizes);
    cv::Rect _rv = ::cv::detail::resultRoi(_a0, _a1);
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("resultRoi: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resultRoi: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resultRoiIntersection(SEXP corners, SEXP sizes) {
  try {
    std::vector<cv::Point> _a0 = ropecv::as_points(corners);
    std::vector<cv::Size> _a1 = ropecv::as_sizes(sizes);
    cv::Rect _rv = ::cv::detail::resultRoiIntersection(_a0, _a1);
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("resultRoiIntersection: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resultRoiIntersection: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_resultTl(SEXP corners) {
  try {
    std::vector<cv::Point> _a0 = ropecv::as_points(corners);
    cv::Point _rv = ::cv::detail::resultTl(_a0);
    return ropecv::wrap_point(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("resultTl: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("resultTl: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_selectRandomSubset(int count, int size, SEXP subset) {
  try {
    std::vector<int> _o0;
    if (!Rf_isNull(subset)) _o0 = ropecv::as_int_vector(subset);
    ::cv::detail::selectRandomSubset(count, size, _o0);
    return Rcpp::List::create(Rcpp::Named("subset") = Rcpp::wrap(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("selectRandomSubset: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("selectRandomSubset: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stitchingLogLevel() {
  try {
    int _rv = ::cv::detail::stitchingLogLevel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stitchingLogLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stitchingLogLevel: %s", e.what());
  }
}
