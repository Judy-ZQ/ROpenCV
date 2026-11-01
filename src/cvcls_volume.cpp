// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/3d.hpp>
#include <opencv2/3d/volume.hpp>

// [[Rcpp::export]]
SEXP cv_Volume_Volume_new__0(int vtype, SEXP settings) {
  try {
    cv::VolumeSettings _s0 = Rf_isNull(settings) ? cv::VolumeSettings() : *ropecv::obj_as<cv::VolumeSettings>(settings);
    cv::Ptr<cv::Volume> _rv(new cv::Volume((cv::VolumeType)vtype, _s0));
    return ropecv::wrap_obj(_rv, "cvVolume");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvVolume: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvVolume: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_fetchNormals__0(SEXP ropecv_self_, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::Volume>(ropecv_self_)->fetchNormals(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("fetchNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fetchNormals: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_fetchPointsNormals__0(SEXP ropecv_self_, SEXP points, SEXP normals) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    ropecv::obj_as<cv::Volume>(ropecv_self_)->fetchPointsNormals(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fetchPointsNormals: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fetchPointsNormals: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_fetchPointsNormalsColors__0(SEXP ropecv_self_, SEXP points, SEXP normals, SEXP colors) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(colors) ? &_owned2 : ropecv::mat_ptr(colors);
    ropecv::obj_as<cv::Volume>(ropecv_self_)->fetchPointsNormalsColors(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals,
                                Rcpp::Named("colors") = Rf_isNull(colors) ? ropecv::wrap_mat(std::move(_owned2)) : colors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("fetchPointsNormalsColors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("fetchPointsNormalsColors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_getBoundingBox__0(SEXP ropecv_self_, SEXP dst, int precision) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::Volume>(ropecv_self_)->getBoundingBox(cv::_OutputArray(*_p0), precision);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBoundingBox: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBoundingBox: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_getEnableGrowth__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::Volume>(ropecv_self_)->getEnableGrowth();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEnableGrowth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEnableGrowth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_getTotalVolumeUnits__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::Volume>(ropecv_self_)->getTotalVolumeUnits();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTotalVolumeUnits: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTotalVolumeUnits: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_getVisibleBlocks__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::Volume>(ropecv_self_)->getVisibleBlocks();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVisibleBlocks: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVisibleBlocks: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_raycast__0(SEXP ropecv_self_, SEXP cameraPose, SEXP points, SEXP normals) {
  try {
    ropecv::InArg _i0(cameraPose);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    ropecv::obj_as<cv::Volume>(ropecv_self_)->raycast(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals);
  } catch (const cv::Exception& e) {
    Rcpp::stop("raycast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("raycast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_reset__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::Volume>(ropecv_self_)->reset();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reset: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reset: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Volume_Volume_setEnableGrowth__0(SEXP ropecv_self_, bool v) {
  try {
    ropecv::obj_as<cv::Volume>(ropecv_self_)->setEnableGrowth(v);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEnableGrowth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEnableGrowth: %s", e.what());
  }
}
