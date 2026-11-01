// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/rgbd/linemod.hpp>

// [[Rcpp::export]]
SEXP cv_linemod_ColorGradient_ColorGradient_create__0(double weak_threshold, int num_features, double strong_threshold) {
  try {
    cv::Ptr<cv::linemod::ColorGradient> _rv = cv::linemod::ColorGradient::create((float)weak_threshold, (size_t)num_features, (float)strong_threshold);
    return ropecv::wrap_obj(_rv, "cvColorGradient");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_DepthNormal_DepthNormal_create__0(int distance_threshold, int difference_threshold, int num_features, int extract_threshold) {
  try {
    cv::Ptr<cv::linemod::DepthNormal> _rv = cv::linemod::DepthNormal::create(distance_threshold, difference_threshold, (size_t)num_features, extract_threshold);
    return ropecv::wrap_obj(_rv, "cvDepthNormal");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_new__0() {
  try {
    cv::Ptr<cv::linemod::Detector> _rv(new cv::linemod::Detector());
    return ropecv::wrap_obj(_rv, "cvDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_new__1(SEXP modalities, SEXP T_pyramid) {
  try {
    std::vector<cv::Ptr<cv::linemod::Modality> > _a0 = ropecv::as_obj_vector<cv::linemod::Modality>(modalities);
    std::vector<int> _a1 = ropecv::as_int_vector(T_pyramid);
    cv::Ptr<cv::linemod::Detector> _rv(new cv::linemod::Detector(_a0, _a1));
    return ropecv::wrap_obj(_rv, "cvDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_addSyntheticTemplate__0(SEXP ropecv_self_, SEXP templates, std::string class_id) {
  try {
    std::vector<cv::linemod::Template> _a0 = ropecv::as_vec_linemod_Template(templates);
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->addSyntheticTemplate(_a0, class_id);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("addSyntheticTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addSyntheticTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_addTemplate__0(SEXP ropecv_self_, SEXP sources, std::string class_id, SEXP object_mask) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(sources);
    cv::Mat _m1 = Rf_isNull(object_mask) ? cv::Mat() : *ropecv::mat_ptr(object_mask);
    cv::Rect _o0;
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->addTemplate(_a0, class_id, _m1, &_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("bounding_box") = ropecv::wrap_rect(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("addTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_classIds__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::String> _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->classIds();
    return Rcpp::wrap(std::vector<std::string>(_rv.begin(), _rv.end()));
  } catch (const cv::Exception& e) {
    Rcpp::stop("classIds: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("classIds: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_getModalities__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Ptr<cv::linemod::Modality> > _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->getModalities();
    return ropecv::wrap_obj_vector<cv::linemod::Modality>(_rv, "cvModality");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getModalities: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getModalities: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_getT__0(SEXP ropecv_self_, int pyramid_level) {
  try {
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->getT(pyramid_level);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_getTemplates__0(SEXP ropecv_self_, std::string class_id, int template_id) {
  try {
    std::vector<cv::linemod::Template> _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->getTemplates(class_id, template_id);
    return ropecv::wrap_vec_linemod_Template(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTemplates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTemplates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_match__0(SEXP ropecv_self_, SEXP sources, double threshold, SEXP class_ids, SEXP masks, SEXP quantized_images) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(sources);
    std::vector<cv::String> _a1 = ropecv::as_vec_string(class_ids);
    std::vector<cv::Mat> _a2 = ropecv::as_mat_vector(masks);
    std::vector<cv::linemod::Match> _o0;
    std::vector<cv::Mat> _o1;
    ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->match(_a0, (float)threshold, _o0, _a1, cv::_OutputArray(_o1), _a2);
    return Rcpp::List::create(Rcpp::Named("matches") = ropecv::wrap_vec_linemod_Match(_o0),
                                Rcpp::Named("quantized_images") = ropecv::wrap_mat_vector(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("match: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("match: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_numClasses__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->numClasses();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("numClasses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("numClasses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_numTemplates__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->numTemplates();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("numTemplates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("numTemplates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_numTemplates__1(SEXP ropecv_self_, std::string class_id) {
  try {
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->numTemplates(class_id);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("numTemplates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("numTemplates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_pyramidLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->pyramidLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("pyramidLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pyramidLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_read__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_readClasses__0(SEXP ropecv_self_, SEXP class_ids, std::string format) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(class_ids);
    ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->readClasses(_a0, format);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("readClasses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readClasses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Detector_Detector_writeClasses__0(SEXP ropecv_self_, std::string format) {
  try {
    ropecv::obj_as<cv::linemod::Detector>(ropecv_self_)->writeClasses(format);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeClasses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeClasses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Feature_Feature_new__0() {
  try {
    cv::Ptr<cv::linemod::Feature> _rv(new cv::linemod::Feature());
    return ropecv::wrap_obj(_rv, "cvFeature");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFeature: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFeature: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Feature_Feature_new__1(int x, int y, int label) {
  try {
    cv::Ptr<cv::linemod::Feature> _rv(new cv::linemod::Feature(x, y, label));
    return ropecv::wrap_obj(_rv, "cvFeature");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFeature: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFeature: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Match_Match_new__0() {
  try {
    cv::Ptr<cv::linemod::Match> _rv(new cv::linemod::Match());
    return ropecv::wrap_obj(_rv, "cvMatch");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Match_Match_new__1(int x, int y, double similarity, std::string class_id, int template_id) {
  try {
    cv::Ptr<cv::linemod::Match> _rv(new cv::linemod::Match(x, y, (float)similarity, class_id, template_id));
    return ropecv::wrap_obj(_rv, "cvMatch");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Modality_Modality_create__0(std::string modality_type) {
  try {
    cv::Ptr<cv::linemod::Modality> _rv = cv::linemod::Modality::create(modality_type);
    return ropecv::wrap_obj(_rv, "cvModality");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Modality_Modality_create__1(SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    cv::Ptr<cv::linemod::Modality> _rv = cv::linemod::Modality::create(_s0);
    return ropecv::wrap_obj(_rv, "cvModality");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Modality_Modality_name__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::linemod::Modality>(ropecv_self_)->name();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("name: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("name: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Modality_Modality_process__0(SEXP ropecv_self_, SEXP src, SEXP mask) {
  try {
    cv::Mat _m0 = Rf_isNull(src) ? cv::Mat() : *ropecv::mat_ptr(src);
    cv::Mat _m1 = Rf_isNull(mask) ? cv::Mat() : *ropecv::mat_ptr(mask);
    cv::Ptr<cv::linemod::QuantizedPyramid> _rv = ropecv::obj_as<cv::linemod::Modality>(ropecv_self_)->process(_m0, _m1);
    return ropecv::wrap_obj(_rv, "cvQuantizedPyramid");
  } catch (const cv::Exception& e) {
    Rcpp::stop("process: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("process: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_Modality_Modality_read__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    ropecv::obj_as<cv::linemod::Modality>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_QuantizedPyramid_QuantizedPyramid_extractTemplate__0(SEXP ropecv_self_) {
  try {
    cv::linemod::Template _o0;
    bool _rv = ropecv::obj_as<cv::linemod::QuantizedPyramid>(ropecv_self_)->extractTemplate(_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("templ") = ropecv::wrap_linemod_Template(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("extractTemplate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("extractTemplate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_QuantizedPyramid_QuantizedPyramid_pyrDown__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::linemod::QuantizedPyramid>(ropecv_self_)->pyrDown();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("pyrDown: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("pyrDown: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_linemod_QuantizedPyramid_QuantizedPyramid_quantize__0(SEXP ropecv_self_) {
  try {
    cv::Mat _o0;
    ropecv::obj_as<cv::linemod::QuantizedPyramid>(ropecv_self_)->quantize(_o0);
    return ropecv::wrap_mat(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("quantize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("quantize: %s", e.what());
  }
}
