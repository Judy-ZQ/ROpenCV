// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/imgproc.hpp>
#include <opencv2/imgproc/segmentation.hpp>
#include <opencv2/ximgproc/segmentation.hpp>

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_new__0() {
  try {
    cv::Ptr<cv::segmentation::IntelligentScissorsMB> _rv(new cv::segmentation::IntelligentScissorsMB());
    return ropecv::wrap_obj(_rv, "cvIntelligentScissorsMB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvIntelligentScissorsMB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvIntelligentScissorsMB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_applyImage__0(SEXP ropecv_self_, SEXP image) {
  try {
    ropecv::InArg _i0(image);
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->applyImage(_i0.ia());
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_applyImageFeatures__0(SEXP ropecv_self_, SEXP non_edge, SEXP gradient_direction, SEXP gradient_magnitude, SEXP image) {
  try {
    ropecv::InArg _i0(non_edge);
    ropecv::InArg _i1(gradient_direction);
    ropecv::InArg _i2(gradient_magnitude);
    ropecv::InArg _i3(image);
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->applyImageFeatures(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia());
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyImageFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyImageFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_buildMap__0(SEXP ropecv_self_, SEXP sourcePt) {
  try {
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->buildMap(ropecv::as_point(sourcePt));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("buildMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("buildMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_getContour__0(SEXP ropecv_self_, SEXP targetPt, bool backward, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->getContour(ropecv::as_point(targetPt), cv::_OutputArray(*_p0), backward);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getContour: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getContour: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setEdgeFeatureCannyParameters__0(SEXP ropecv_self_, double threshold1, double threshold2, int apertureSize, bool L2gradient) {
  try {
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->setEdgeFeatureCannyParameters(threshold1, threshold2, apertureSize, L2gradient);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeFeatureCannyParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeFeatureCannyParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setEdgeFeatureZeroCrossingParameters__0(SEXP ropecv_self_, double gradient_magnitude_min_value) {
  try {
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->setEdgeFeatureZeroCrossingParameters((float)gradient_magnitude_min_value);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeFeatureZeroCrossingParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeFeatureZeroCrossingParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setGradientMagnitudeMaxLimit__0(SEXP ropecv_self_, double gradient_magnitude_threshold_max) {
  try {
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->setGradientMagnitudeMaxLimit((float)gradient_magnitude_threshold_max);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGradientMagnitudeMaxLimit: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGradientMagnitudeMaxLimit: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setWeights__0(SEXP ropecv_self_, double weight_non_edge, double weight_gradient_direction, double weight_gradient_magnitude) {
  try {
    ropecv::obj_as<cv::segmentation::IntelligentScissorsMB>(ropecv_self_)->setWeights((float)weight_non_edge, (float)weight_gradient_direction, (float)weight_gradient_magnitude);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWeights: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWeights: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_getK__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->getK();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_getMinSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->getMinSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_getSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->getSigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_processImage__0(SEXP ropecv_self_, SEXP src, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->processImage(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("processImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("processImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_setK__0(SEXP ropecv_self_, double k) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->setK((float)k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_setMinSize__0(SEXP ropecv_self_, int min_size) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->setMinSize(min_size);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_setSigma__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::GraphSegmentation>(ropecv_self_)->setSigma(sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_addGraphSegmentation__0(SEXP ropecv_self_, SEXP g) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->addGraphSegmentation(ropecv::as_ptr<cv::ximgproc::segmentation::GraphSegmentation>(g));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addGraphSegmentation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addGraphSegmentation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_addImage__0(SEXP ropecv_self_, SEXP img) {
  try {
    ropecv::InArg _i0(img);
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->addImage(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_addStrategy__0(SEXP ropecv_self_, SEXP s) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->addStrategy(ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(s));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addStrategy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addStrategy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_clearGraphSegmentations__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->clearGraphSegmentations();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearGraphSegmentations: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearGraphSegmentations: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_clearImages__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->clearImages();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearImages: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearImages: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_clearStrategies__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->clearStrategies();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearStrategies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearStrategies: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_process__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Rect> _o0;
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->process(_o0);
    return ropecv::wrap_rects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_setBaseImage__0(SEXP ropecv_self_, SEXP img) {
  try {
    ropecv::InArg _i0(img);
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->setBaseImage(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBaseImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBaseImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_switchToSelectiveSearchFast__0(SEXP ropecv_self_, int base_k, int inc_k, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->switchToSelectiveSearchFast(base_k, inc_k, (float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("switchToSelectiveSearchFast: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("switchToSelectiveSearchFast: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_switchToSelectiveSearchQuality__0(SEXP ropecv_self_, int base_k, int inc_k, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->switchToSelectiveSearchQuality(base_k, inc_k, (float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("switchToSelectiveSearchQuality: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("switchToSelectiveSearchQuality: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_switchToSingleStrategy__0(SEXP ropecv_self_, int k, double sigma) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentation>(ropecv_self_)->switchToSingleStrategy(k, (float)sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("switchToSingleStrategy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("switchToSingleStrategy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_get__0(SEXP ropecv_self_, int r1, int r2) {
  try {
    double _rv = ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(ropecv_self_)->get(r1, r2);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("get: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("get: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_merge__0(SEXP ropecv_self_, int r1, int r2) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(ropecv_self_)->merge(r1, r2);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("merge: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("merge: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_setImage__0(SEXP ropecv_self_, SEXP img, SEXP regions, SEXP sizes, int image_id) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(regions);
    ropecv::InArg _i2(sizes);
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(ropecv_self_)->setImage(_i0.ia(), _i1.ia(), _i2.ia(), image_id);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_SelectiveSearchSegmentationStrategyMultiple_addStrategy__0(SEXP ropecv_self_, SEXP g, double weight) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple>(ropecv_self_)->addStrategy(ropecv::as_ptr<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy>(g), (float)weight);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("addStrategy: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addStrategy: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_SelectiveSearchSegmentationStrategyMultiple_clearStrategies__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple>(ropecv_self_)->clearStrategies();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearStrategies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearStrategies: %s", e.what());
  }
}
