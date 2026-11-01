// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/xfeatures2d/nonfree.hpp>

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_create__0(double hessianThreshold, int nOctaves, int nOctaveLayers, bool extended, bool upright) {
  try {
    cv::Ptr<cv::xfeatures2d::SURF> _rv = cv::xfeatures2d::SURF::create(hessianThreshold, nOctaves, nOctaveLayers, extended, upright);
    return ropecv::wrap_obj(_rv, "cvSURF");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_getExtended__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->getExtended();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getExtended: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getExtended: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_getHessianThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->getHessianThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHessianThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHessianThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_getNOctaveLayers__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->getNOctaveLayers();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_getNOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->getNOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_getUpright__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->getUpright();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUpright: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUpright: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_setExtended__0(SEXP ropecv_self_, bool extended) {
  try {
    ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->setExtended(extended);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setExtended: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setExtended: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_setHessianThreshold__0(SEXP ropecv_self_, double hessianThreshold) {
  try {
    ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->setHessianThreshold(hessianThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHessianThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHessianThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_setNOctaveLayers__0(SEXP ropecv_self_, int nOctaveLayers) {
  try {
    ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->setNOctaveLayers(nOctaveLayers);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_setNOctaves__0(SEXP ropecv_self_, int nOctaves) {
  try {
    ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->setNOctaves(nOctaves);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_xfeatures2d_SURF_SURF_setUpright__0(SEXP ropecv_self_, bool upright) {
  try {
    ropecv::obj_as<cv::xfeatures2d::SURF>(ropecv_self_)->setUpright(upright);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUpright: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUpright: %s", e.what());
  }
}
