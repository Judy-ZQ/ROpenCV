// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/stitching/warpers.hpp>

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_new__0() {
  try {
    cv::Ptr<cv::PyRotationWarper> _rv(new cv::PyRotationWarper());
    return ropecv::wrap_obj(_rv, "cvPyRotationWarper");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvPyRotationWarper: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvPyRotationWarper: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_new__1(std::string type, double scale) {
  try {
    cv::Ptr<cv::PyRotationWarper> _rv(new cv::PyRotationWarper(type, (float)scale));
    return ropecv::wrap_obj(_rv, "cvPyRotationWarper");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvPyRotationWarper: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvPyRotationWarper: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_buildMaps__0(SEXP ropecv_self_, SEXP src_size, SEXP K, SEXP R, SEXP xmap, SEXP ymap) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(R);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(xmap) ? &_owned0 : ropecv::mat_ptr(xmap);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(ymap) ? &_owned1 : ropecv::mat_ptr(ymap);
    cv::Rect _rv = ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->buildMaps(ropecv::as_size(src_size), _i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_rect(_rv),
                                Rcpp::Named("xmap") = Rf_isNull(xmap) ? ropecv::wrap_mat(std::move(_owned0)) : xmap,
                                Rcpp::Named("ymap") = Rf_isNull(ymap) ? ropecv::wrap_mat(std::move(_owned1)) : ymap);
  } catch (const cv::Exception& e) {
    Rcpp::stop("buildMaps: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("buildMaps: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_getScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->getScale();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_setScale__0(SEXP ropecv_self_, double float_) {
  try {
    ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->setScale((float)float_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_warp__0(SEXP ropecv_self_, SEXP src, SEXP K, SEXP R, int interp_mode, int border_mode, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(R);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Point _rv = ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->warp(_i0.ia(), _i1.ia(), _i2.ia(), interp_mode, border_mode, cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_point(_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("warp: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warp: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_warpBackward__0(SEXP ropecv_self_, SEXP src, SEXP K, SEXP R, int interp_mode, int border_mode, SEXP dst_size, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(R);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->warpBackward(_i0.ia(), _i1.ia(), _i2.ia(), interp_mode, border_mode, ropecv::as_size(dst_size), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpBackward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpBackward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_warpPoint__0(SEXP ropecv_self_, SEXP pt, SEXP K, SEXP R) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(R);
    cv::Point2f _rv = ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->warpPoint(ropecv::as_point2f(pt), _i0.ia(), _i1.ia());
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_warpPointBackward__0(SEXP ropecv_self_, SEXP pt, SEXP K, SEXP R) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(R);
    cv::Point2f _rv = ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->warpPointBackward(ropecv::as_point2f(pt), _i0.ia(), _i1.ia());
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpPointBackward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpPointBackward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_PyRotationWarper_PyRotationWarper_warpRoi__0(SEXP ropecv_self_, SEXP src_size, SEXP K, SEXP R) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(R);
    cv::Rect _rv = ropecv::obj_as<cv::PyRotationWarper>(ropecv_self_)->warpRoi(ropecv::as_size(src_size), _i0.ia(), _i1.ia());
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("warpRoi: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("warpRoi: %s", e.what());
  }
}
