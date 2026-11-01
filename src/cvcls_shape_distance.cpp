// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/shape/shape_distance.hpp>

// [[Rcpp::export]]
SEXP cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_getDistanceFlag__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::HausdorffDistanceExtractor>(ropecv_self_)->getDistanceFlag();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDistanceFlag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDistanceFlag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_getRankProportion__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::HausdorffDistanceExtractor>(ropecv_self_)->getRankProportion();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRankProportion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRankProportion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_setDistanceFlag__0(SEXP ropecv_self_, int distanceFlag) {
  try {
    ropecv::obj_as<cv::HausdorffDistanceExtractor>(ropecv_self_)->setDistanceFlag(distanceFlag);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDistanceFlag: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDistanceFlag: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_setRankProportion__0(SEXP ropecv_self_, double rankProportion) {
  try {
    ropecv::obj_as<cv::HausdorffDistanceExtractor>(ropecv_self_)->setRankProportion((float)rankProportion);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRankProportion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRankProportion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getAngularBins__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getAngularBins();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAngularBins: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAngularBins: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getBendingEnergyWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getBendingEnergyWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBendingEnergyWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBendingEnergyWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getCostExtractor__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::HistogramCostExtractor> _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getCostExtractor();
    return ropecv::wrap_obj(_rv, "cvHistogramCostExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCostExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCostExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getImageAppearanceWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getImageAppearanceWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImageAppearanceWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImageAppearanceWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getImages__0(SEXP ropecv_self_, SEXP image1, SEXP image2) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image1) ? &_owned0 : ropecv::mat_ptr(image1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(image2) ? &_owned1 : ropecv::mat_ptr(image2);
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getImages(cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("image1") = Rf_isNull(image1) ? ropecv::wrap_mat(std::move(_owned0)) : image1,
                                Rcpp::Named("image2") = Rf_isNull(image2) ? ropecv::wrap_mat(std::move(_owned1)) : image2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getImages: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getImages: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getInnerRadius__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getInnerRadius();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInnerRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInnerRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getIterations__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getIterations();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getOuterRadius__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getOuterRadius();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOuterRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOuterRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getRadialBins__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getRadialBins();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRadialBins: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRadialBins: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getRotationInvariant__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getRotationInvariant();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRotationInvariant: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRotationInvariant: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getShapeContextWeight__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getShapeContextWeight();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getShapeContextWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getShapeContextWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getStdDev__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getStdDev();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStdDev: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStdDev: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getTransformAlgorithm__0(SEXP ropecv_self_) {
  try {
    cv::Ptr<cv::ShapeTransformer> _rv = ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->getTransformAlgorithm();
    return ropecv::wrap_obj(_rv, "cvShapeTransformer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTransformAlgorithm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTransformAlgorithm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setAngularBins__0(SEXP ropecv_self_, int nAngularBins) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setAngularBins(nAngularBins);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAngularBins: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAngularBins: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setBendingEnergyWeight__0(SEXP ropecv_self_, double bendingEnergyWeight) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setBendingEnergyWeight((float)bendingEnergyWeight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBendingEnergyWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBendingEnergyWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setCostExtractor__0(SEXP ropecv_self_, SEXP comparer) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setCostExtractor(ropecv::as_ptr<cv::HistogramCostExtractor>(comparer));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCostExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCostExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setImageAppearanceWeight__0(SEXP ropecv_self_, double imageAppearanceWeight) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setImageAppearanceWeight((float)imageAppearanceWeight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImageAppearanceWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImageAppearanceWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setImages__0(SEXP ropecv_self_, SEXP image1, SEXP image2) {
  try {
    ropecv::InArg _i0(image1);
    ropecv::InArg _i1(image2);
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setImages(_i0.ia(), _i1.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImages: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImages: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setInnerRadius__0(SEXP ropecv_self_, double innerRadius) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setInnerRadius((float)innerRadius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInnerRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInnerRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setIterations__0(SEXP ropecv_self_, int iterations) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setIterations(iterations);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setIterations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setIterations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setOuterRadius__0(SEXP ropecv_self_, double outerRadius) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setOuterRadius((float)outerRadius);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOuterRadius: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOuterRadius: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setRadialBins__0(SEXP ropecv_self_, int nRadialBins) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setRadialBins(nRadialBins);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRadialBins: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRadialBins: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setRotationInvariant__0(SEXP ropecv_self_, bool rotationInvariant) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setRotationInvariant(rotationInvariant);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRotationInvariant: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRotationInvariant: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setShapeContextWeight__0(SEXP ropecv_self_, double shapeContextWeight) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setShapeContextWeight((float)shapeContextWeight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setShapeContextWeight: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setShapeContextWeight: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setStdDev__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setStdDev((float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setStdDev: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setStdDev: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setTransformAlgorithm__0(SEXP ropecv_self_, SEXP transformer) {
  try {
    ropecv::obj_as<cv::ShapeContextDistanceExtractor>(ropecv_self_)->setTransformAlgorithm(ropecv::as_ptr<cv::ShapeTransformer>(transformer));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTransformAlgorithm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTransformAlgorithm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ShapeDistanceExtractor_ShapeDistanceExtractor_computeDistance__0(SEXP ropecv_self_, SEXP contour1, SEXP contour2) {
  try {
    ropecv::InArg _i0(contour1);
    ropecv::InArg _i1(contour2);
    double _rv = ropecv::obj_as<cv::ShapeDistanceExtractor>(ropecv_self_)->computeDistance(_i0.ia(), _i1.ia());
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeDistance: %s", e.what());
  }
}
