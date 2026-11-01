// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/3d.hpp>

// [[Rcpp::export]]
SEXP cv_Octree_Octree_createWithDepth__0(int maxDepth, SEXP pointCloud, SEXP colors) {
  try {
    ropecv::InArg _i0(pointCloud);
    ropecv::InArg _i1(colors);
    cv::Ptr<cv::Octree> _rv = cv::Octree::createWithDepth(maxDepth, _i0.ia(), _i1.ia());
    return ropecv::wrap_obj(_rv, "cvOctree");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createWithDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createWithDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_createWithResolution__1(double resolution, SEXP pointCloud, SEXP colors) {
  try {
    ropecv::InArg _i0(pointCloud);
    ropecv::InArg _i1(colors);
    cv::Ptr<cv::Octree> _rv = cv::Octree::createWithResolution(resolution, _i0.ia(), _i1.ia());
    return ropecv::wrap_obj(_rv, "cvOctree");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createWithResolution: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createWithResolution: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_createWithDepth__2(int maxDepth, double size, SEXP origin, bool withColors) {
  try {
    cv::Ptr<cv::Octree> _rv = cv::Octree::createWithDepth(maxDepth, size, ropecv::as_point3f(origin), withColors);
    return ropecv::wrap_obj(_rv, "cvOctree");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createWithDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createWithDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_createWithResolution__3(double resolution, double size, SEXP origin, bool withColors) {
  try {
    cv::Ptr<cv::Octree> _rv = cv::Octree::createWithResolution(resolution, size, ropecv::as_point3f(origin), withColors);
    return ropecv::wrap_obj(_rv, "cvOctree");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createWithResolution: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createWithResolution: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_KNNSearch__0(SEXP ropecv_self_, SEXP query, int K, SEXP points, SEXP squareDists) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(squareDists) ? &_owned1 : ropecv::mat_ptr(squareDists);
    ropecv::obj_as<cv::Octree>(ropecv_self_)->KNNSearch(ropecv::as_point3f(query), K, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("squareDists") = Rf_isNull(squareDists) ? ropecv::wrap_mat(std::move(_owned1)) : squareDists);
  } catch (const cv::Exception& e) {
    Rcpp::stop("KNNSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("KNNSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_KNNSearch__1(SEXP ropecv_self_, SEXP query, int K, SEXP points, SEXP colors, SEXP squareDists) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(colors) ? &_owned1 : ropecv::mat_ptr(colors);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(squareDists) ? &_owned2 : ropecv::mat_ptr(squareDists);
    ropecv::obj_as<cv::Octree>(ropecv_self_)->KNNSearch(ropecv::as_point3f(query), K, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("colors") = Rf_isNull(colors) ? ropecv::wrap_mat(std::move(_owned1)) : colors,
                                Rcpp::Named("squareDists") = Rf_isNull(squareDists) ? ropecv::wrap_mat(std::move(_owned2)) : squareDists);
  } catch (const cv::Exception& e) {
    Rcpp::stop("KNNSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("KNNSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_clear__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::Octree>(ropecv_self_)->clear();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_deletePoint__0(SEXP ropecv_self_, SEXP point) {
  try {
    bool _rv = ropecv::obj_as<cv::Octree>(ropecv_self_)->deletePoint(ropecv::as_point3f(point));
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("deletePoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("deletePoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::Octree>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_getPointCloudByOctree__0(SEXP ropecv_self_, SEXP restoredPointCloud, SEXP restoredColor) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(restoredPointCloud) ? &_owned0 : ropecv::mat_ptr(restoredPointCloud);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(restoredColor) ? &_owned1 : ropecv::mat_ptr(restoredColor);
    ropecv::obj_as<cv::Octree>(ropecv_self_)->getPointCloudByOctree(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("restoredPointCloud") = Rf_isNull(restoredPointCloud) ? ropecv::wrap_mat(std::move(_owned0)) : restoredPointCloud,
                                Rcpp::Named("restoredColor") = Rf_isNull(restoredColor) ? ropecv::wrap_mat(std::move(_owned1)) : restoredColor);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPointCloudByOctree: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPointCloudByOctree: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_insertPoint__0(SEXP ropecv_self_, SEXP point, SEXP color) {
  try {
    bool _rv = ropecv::obj_as<cv::Octree>(ropecv_self_)->insertPoint(ropecv::as_point3f(point), ropecv::as_point3f(color));
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("insertPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("insertPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_isPointInBound__0(SEXP ropecv_self_, SEXP point) {
  try {
    bool _rv = ropecv::obj_as<cv::Octree>(ropecv_self_)->isPointInBound(ropecv::as_point3f(point));
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isPointInBound: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isPointInBound: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_radiusNNSearch__0(SEXP ropecv_self_, SEXP query, double radius, SEXP points, SEXP squareDists) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(squareDists) ? &_owned1 : ropecv::mat_ptr(squareDists);
    int _rv = ropecv::obj_as<cv::Octree>(ropecv_self_)->radiusNNSearch(ropecv::as_point3f(query), (float)radius, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("squareDists") = Rf_isNull(squareDists) ? ropecv::wrap_mat(std::move(_owned1)) : squareDists);
  } catch (const cv::Exception& e) {
    Rcpp::stop("radiusNNSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("radiusNNSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Octree_Octree_radiusNNSearch__1(SEXP ropecv_self_, SEXP query, double radius, SEXP points, SEXP colors, SEXP squareDists) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(colors) ? &_owned1 : ropecv::mat_ptr(colors);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(squareDists) ? &_owned2 : ropecv::mat_ptr(squareDists);
    int _rv = ropecv::obj_as<cv::Octree>(ropecv_self_)->radiusNNSearch(ropecv::as_point3f(query), (float)radius, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("colors") = Rf_isNull(colors) ? ropecv::wrap_mat(std::move(_owned1)) : colors,
                                Rcpp::Named("squareDists") = Rf_isNull(squareDists) ? ropecv::wrap_mat(std::move(_owned2)) : squareDists);
  } catch (const cv::Exception& e) {
    Rcpp::stop("radiusNNSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("radiusNNSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setCullingMode__0(SEXP ropecv_self_, int cm) {
  try {
    ropecv::obj_as<cv::TriangleRasterizeSettings>(ropecv_self_)->setCullingMode((cv::TriangleCullingMode)cm);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCullingMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCullingMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setGlCompatibleMode__0(SEXP ropecv_self_, int gm) {
  try {
    ropecv::obj_as<cv::TriangleRasterizeSettings>(ropecv_self_)->setGlCompatibleMode((cv::TriangleGlCompatibleMode)gm);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGlCompatibleMode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGlCompatibleMode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setShadingType__0(SEXP ropecv_self_, int st) {
  try {
    ropecv::obj_as<cv::TriangleRasterizeSettings>(ropecv_self_)->setShadingType((cv::TriangleShadingType)st);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShadingType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShadingType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_UsacParams_UsacParams_new__0() {
  try {
    cv::Ptr<cv::UsacParams> _rv(new cv::UsacParams());
    return ropecv::wrap_obj(_rv, "cvUsacParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvUsacParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvUsacParams: %s", e.what());
  }
}
