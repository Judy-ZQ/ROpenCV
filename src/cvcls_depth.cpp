// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/depth.hpp>

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_create__0(int rows, int cols, int depth, SEXP K, int window_size, double diff_threshold, int method) {
  try {
    ropecv::InArg _i0(K);
    cv::Ptr<cv::RgbdNormals> _rv = cv::RgbdNormals::create(rows, cols, depth, _i0.ia(), window_size, (float)diff_threshold, (cv::RgbdNormals::RgbdNormalsMethod)method);
    return ropecv::wrap_obj(_rv, "cvRgbdNormals");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_apply__0(SEXP ropecv_self_, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->apply(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("apply: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("apply: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_cache__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->cache();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("cache: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cache: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_getCols__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->getCols();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCols: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCols: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_getDepth__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->getDepth();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_getK__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->getK(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_getMethod__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->getMethod();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMethod: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMethod: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_getRows__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->getRows();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_getWindowSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->getWindowSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWindowSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWindowSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_setCols__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->setCols(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCols: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCols: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_setK__0(SEXP ropecv_self_, SEXP val) {
  try {
    ropecv::InArg _i0(val);
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->setK(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_setRows__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->setRows(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRows: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRows: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_RgbdNormals_RgbdNormals_setWindowSize__0(SEXP ropecv_self_, int val) {
  try {
    ropecv::obj_as<cv::RgbdNormals>(ropecv_self_)->setWindowSize(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWindowSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWindowSize: %s", e.what());
  }
}
