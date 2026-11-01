// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/features2d.hpp>

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_create__0(int descriptor_type, int descriptor_size, int descriptor_channels, double threshold, int nOctaves, int nOctaveLayers, int diffusivity, int max_points) {
  try {
    cv::Ptr<cv::AKAZE> _rv = cv::AKAZE::create((cv::AKAZE::DescriptorType)descriptor_type, descriptor_size, descriptor_channels, (float)threshold, nOctaves, nOctaveLayers, (cv::KAZE::DiffusivityType)diffusivity, max_points);
    return ropecv::wrap_obj(_rv, "cvAKAZE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getDescriptorChannels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getDescriptorChannels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDescriptorChannels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDescriptorChannels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getDescriptorSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getDescriptorSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDescriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDescriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getDescriptorType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getDescriptorType();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDescriptorType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDescriptorType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getDiffusivity__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getDiffusivity();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDiffusivity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDiffusivity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getMaxPoints__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getMaxPoints();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getNOctaveLayers__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getNOctaveLayers();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getNOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getNOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_getThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::AKAZE>(ropecv_self_)->getThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setDescriptorChannels__0(SEXP ropecv_self_, int dch) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setDescriptorChannels(dch);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDescriptorChannels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDescriptorChannels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setDescriptorSize__0(SEXP ropecv_self_, int dsize) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setDescriptorSize(dsize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDescriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDescriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setDescriptorType__0(SEXP ropecv_self_, int dtype) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setDescriptorType((cv::AKAZE::DescriptorType)dtype);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDescriptorType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDescriptorType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setDiffusivity__0(SEXP ropecv_self_, int diff) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setDiffusivity((cv::KAZE::DiffusivityType)diff);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDiffusivity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDiffusivity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setMaxPoints__0(SEXP ropecv_self_, int max_points) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setMaxPoints(max_points);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setNOctaveLayers__0(SEXP ropecv_self_, int octaveLayers) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setNOctaveLayers(octaveLayers);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setNOctaves__0(SEXP ropecv_self_, int octaves) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setNOctaves(octaves);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AKAZE_AKAZE_setThreshold__0(SEXP ropecv_self_, double threshold) {
  try {
    ropecv::obj_as<cv::AKAZE>(ropecv_self_)->setThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AffineFeature_AffineFeature_create__0(SEXP backend, int maxTilt, int minTilt, double tiltStep, double rotateStepBase) {
  try {
    cv::Ptr<cv::AffineFeature> _rv = cv::AffineFeature::create(ropecv::as_ptr<cv::Feature2D>(backend), maxTilt, minTilt, (float)tiltStep, (float)rotateStepBase);
    return ropecv::wrap_obj(_rv, "cvAffineFeature");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AffineFeature_AffineFeature_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::AffineFeature>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AffineFeature_AffineFeature_getViewParams__0(SEXP ropecv_self_, SEXP tilts, SEXP rolls) {
  try {
    std::vector<float> _o0;
    if (!Rf_isNull(tilts)) _o0 = ropecv::as_flt_vector(tilts);
    std::vector<float> _o1;
    if (!Rf_isNull(rolls)) _o1 = ropecv::as_flt_vector(rolls);
    ropecv::obj_as<cv::AffineFeature>(ropecv_self_)->getViewParams(_o0, _o1);
    return Rcpp::List::create(Rcpp::Named("tilts") = Rcpp::wrap(_o0),
                                Rcpp::Named("rolls") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getViewParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getViewParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AffineFeature_AffineFeature_setViewParams__0(SEXP ropecv_self_, SEXP tilts, SEXP rolls) {
  try {
    std::vector<float> _a0 = ropecv::as_flt_vector(tilts);
    std::vector<float> _a1 = ropecv::as_flt_vector(rolls);
    ropecv::obj_as<cv::AffineFeature>(ropecv_self_)->setViewParams(_a0, _a1);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setViewParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setViewParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_create__0(int threshold, bool nonmaxSuppression, int type) {
  try {
    cv::Ptr<cv::AgastFeatureDetector> _rv = cv::AgastFeatureDetector::create(threshold, nonmaxSuppression, (cv::AgastFeatureDetector::DetectorType)type);
    return ropecv::wrap_obj(_rv, "cvAgastFeatureDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_getNonmaxSuppression__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->getNonmaxSuppression();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNonmaxSuppression: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNonmaxSuppression: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_getThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->getThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_getType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->getType();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_setNonmaxSuppression__0(SEXP ropecv_self_, bool f) {
  try {
    ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->setNonmaxSuppression(f);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNonmaxSuppression: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNonmaxSuppression: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_setThreshold__0(SEXP ropecv_self_, int threshold) {
  try {
    ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->setThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_AgastFeatureDetector_AgastFeatureDetector_setType__0(SEXP ropecv_self_, int type) {
  try {
    ropecv::obj_as<cv::AgastFeatureDetector>(ropecv_self_)->setType((cv::AgastFeatureDetector::DetectorType)type);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BFMatcher_BFMatcher_new__0(int normType, bool crossCheck) {
  try {
    cv::Ptr<cv::BFMatcher> _rv(new cv::BFMatcher(normType, crossCheck));
    return ropecv::wrap_obj(_rv, "cvBFMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBFMatcher: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBFMatcher: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BFMatcher_BFMatcher_create__0(int normType, bool crossCheck) {
  try {
    cv::Ptr<cv::BFMatcher> _rv = cv::BFMatcher::create(normType, crossCheck);
    return ropecv::wrap_obj(_rv, "cvBFMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_new__0(SEXP dextractor, SEXP dmatcher) {
  try {
    cv::Ptr<cv::BOWImgDescriptorExtractor> _rv(new cv::BOWImgDescriptorExtractor(ropecv::as_ptr<cv::Feature2D>(dextractor), ropecv::as_ptr<cv::DescriptorMatcher>(dmatcher)));
    return ropecv::wrap_obj(_rv, "cvBOWImgDescriptorExtractor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBOWImgDescriptorExtractor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBOWImgDescriptorExtractor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_descriptorSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BOWImgDescriptorExtractor>(ropecv_self_)->descriptorSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("descriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("descriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_descriptorType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BOWImgDescriptorExtractor>(ropecv_self_)->descriptorType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("descriptorType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("descriptorType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_getVocabulary__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::BOWImgDescriptorExtractor>(ropecv_self_)->getVocabulary();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVocabulary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVocabulary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_setVocabulary__0(SEXP ropecv_self_, SEXP vocabulary) {
  try {
    cv::Mat _m0 = Rf_isNull(vocabulary) ? cv::Mat() : *ropecv::mat_ptr(vocabulary);
    ropecv::obj_as<cv::BOWImgDescriptorExtractor>(ropecv_self_)->setVocabulary(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVocabulary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVocabulary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWKMeansTrainer_BOWKMeansTrainer_new__0(int clusterCount, SEXP termcrit, int attempts, int flags) {
  try {
    cv::Ptr<cv::BOWKMeansTrainer> _rv(new cv::BOWKMeansTrainer(clusterCount, ropecv::as_termcriteria(termcrit), attempts, flags));
    return ropecv::wrap_obj(_rv, "cvBOWKMeansTrainer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBOWKMeansTrainer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBOWKMeansTrainer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWKMeansTrainer_BOWKMeansTrainer_cluster__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::BOWKMeansTrainer>(ropecv_self_)->cluster();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWKMeansTrainer_BOWKMeansTrainer_cluster__1(SEXP ropecv_self_, SEXP descriptors) {
  try {
    cv::Mat _m0 = Rf_isNull(descriptors) ? cv::Mat() : *ropecv::mat_ptr(descriptors);
    cv::Mat _rv = ropecv::obj_as<cv::BOWKMeansTrainer>(ropecv_self_)->cluster(_m0);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWTrainer_BOWTrainer_add__0(SEXP ropecv_self_, SEXP descriptors) {
  try {
    cv::Mat _m0 = Rf_isNull(descriptors) ? cv::Mat() : *ropecv::mat_ptr(descriptors);
    ropecv::obj_as<cv::BOWTrainer>(ropecv_self_)->add(_m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("add: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("add: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWTrainer_BOWTrainer_clear__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::BOWTrainer>(ropecv_self_)->clear();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWTrainer_BOWTrainer_cluster__0(SEXP ropecv_self_) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::BOWTrainer>(ropecv_self_)->cluster();
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWTrainer_BOWTrainer_cluster__1(SEXP ropecv_self_, SEXP descriptors) {
  try {
    cv::Mat _m0 = Rf_isNull(descriptors) ? cv::Mat() : *ropecv::mat_ptr(descriptors);
    cv::Mat _rv = ropecv::obj_as<cv::BOWTrainer>(ropecv_self_)->cluster(_m0);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cluster: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWTrainer_BOWTrainer_descriptorsCount__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BOWTrainer>(ropecv_self_)->descriptorsCount();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("descriptorsCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("descriptorsCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BOWTrainer_BOWTrainer_getDescriptors__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Mat> _rv = ropecv::obj_as<cv::BOWTrainer>(ropecv_self_)->getDescriptors();
    return ropecv::wrap_mat_vector(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDescriptors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDescriptors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_create__0(int thresh, int octaves, double patternScale) {
  try {
    cv::Ptr<cv::BRISK> _rv = cv::BRISK::create(thresh, octaves, (float)patternScale);
    return ropecv::wrap_obj(_rv, "cvBRISK");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_create__1(SEXP radiusList, SEXP numberList, double dMax, double dMin, SEXP indexChange) {
  try {
    std::vector<float> _a0 = ropecv::as_flt_vector(radiusList);
    std::vector<int> _a1 = ropecv::as_int_vector(numberList);
    std::vector<int> _a2 = ropecv::as_int_vector(indexChange);
    cv::Ptr<cv::BRISK> _rv = cv::BRISK::create(_a0, _a1, (float)dMax, (float)dMin, _a2);
    return ropecv::wrap_obj(_rv, "cvBRISK");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_create__2(int thresh, int octaves, SEXP radiusList, SEXP numberList, double dMax, double dMin, SEXP indexChange) {
  try {
    std::vector<float> _a0 = ropecv::as_flt_vector(radiusList);
    std::vector<int> _a1 = ropecv::as_int_vector(numberList);
    std::vector<int> _a2 = ropecv::as_int_vector(indexChange);
    cv::Ptr<cv::BRISK> _rv = cv::BRISK::create(thresh, octaves, _a0, _a1, (float)dMax, (float)dMin, _a2);
    return ropecv::wrap_obj(_rv, "cvBRISK");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::BRISK>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_getOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BRISK>(ropecv_self_)->getOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_getPatternScale__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::BRISK>(ropecv_self_)->getPatternScale();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPatternScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPatternScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_getThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::BRISK>(ropecv_self_)->getThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_setOctaves__0(SEXP ropecv_self_, int octaves) {
  try {
    ropecv::obj_as<cv::BRISK>(ropecv_self_)->setOctaves(octaves);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_setPatternScale__0(SEXP ropecv_self_, double patternScale) {
  try {
    ropecv::obj_as<cv::BRISK>(ropecv_self_)->setPatternScale((float)patternScale);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPatternScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPatternScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_BRISK_BRISK_setThreshold__0(SEXP ropecv_self_, int threshold) {
  try {
    ropecv::obj_as<cv::BRISK>(ropecv_self_)->setThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_create__0(std::string descriptorMatcherType) {
  try {
    cv::Ptr<cv::DescriptorMatcher> _rv = cv::DescriptorMatcher::create(descriptorMatcherType);
    return ropecv::wrap_obj(_rv, "cvDescriptorMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_create__1(int matcherType) {
  try {
    cv::Ptr<cv::DescriptorMatcher> _rv = cv::DescriptorMatcher::create((cv::DescriptorMatcher::MatcherType)matcherType);
    return ropecv::wrap_obj(_rv, "cvDescriptorMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_add__0(SEXP ropecv_self_, SEXP descriptors) {
  try {
    ropecv::InArg _i0(descriptors);
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->add(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("add: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("add: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_clear__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->clear();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_clone__0(SEXP ropecv_self_, bool emptyTrainData) {
  try {
    cv::Ptr<cv::DescriptorMatcher> _rv = ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->clone(emptyTrainData);
    return ropecv::wrap_obj(_rv, "cvDescriptorMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("clone: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clone: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_getTrainDescriptors__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::Mat> _rv = ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->getTrainDescriptors();
    return ropecv::wrap_mat_vector(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTrainDescriptors: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTrainDescriptors: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_isMaskSupported__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->isMaskSupported();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isMaskSupported: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isMaskSupported: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_knnMatch__0(SEXP ropecv_self_, SEXP queryDescriptors, int k, SEXP masks, bool compactResult) {
  try {
    ropecv::InArg _i0(queryDescriptors);
    ropecv::InArg _i1(masks);
    std::vector<std::vector<cv::DMatch>> _o0;
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->knnMatch(_i0.ia(), _o0, k, _i1.ia(), compactResult);
    return ropecv::wrap_dmatches_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("knnMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("knnMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_knnMatch__1(SEXP ropecv_self_, SEXP queryDescriptors, SEXP trainDescriptors, int k, SEXP mask, bool compactResult) {
  try {
    ropecv::InArg _i0(queryDescriptors);
    ropecv::InArg _i1(trainDescriptors);
    ropecv::InArg _i2(mask);
    std::vector<std::vector<cv::DMatch>> _o0;
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->knnMatch(_i0.ia(), _i1.ia(), _o0, k, _i2.ia(), compactResult);
    return ropecv::wrap_dmatches_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("knnMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("knnMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_match__0(SEXP ropecv_self_, SEXP queryDescriptors, SEXP masks) {
  try {
    ropecv::InArg _i0(queryDescriptors);
    ropecv::InArg _i1(masks);
    std::vector<cv::DMatch> _o0;
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->match(_i0.ia(), _o0, _i1.ia());
    return ropecv::wrap_dmatches(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("match: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("match: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_match__1(SEXP ropecv_self_, SEXP queryDescriptors, SEXP trainDescriptors, SEXP mask) {
  try {
    ropecv::InArg _i0(queryDescriptors);
    ropecv::InArg _i1(trainDescriptors);
    ropecv::InArg _i2(mask);
    std::vector<cv::DMatch> _o0;
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->match(_i0.ia(), _i1.ia(), _o0, _i2.ia());
    return ropecv::wrap_dmatches(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("match: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("match: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__0(SEXP ropecv_self_, SEXP queryDescriptors, double maxDistance, SEXP masks, bool compactResult) {
  try {
    ropecv::InArg _i0(queryDescriptors);
    ropecv::InArg _i1(masks);
    std::vector<std::vector<cv::DMatch>> _o0;
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->radiusMatch(_i0.ia(), _o0, (float)maxDistance, _i1.ia(), compactResult);
    return ropecv::wrap_dmatches_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("radiusMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("radiusMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__1(SEXP ropecv_self_, SEXP queryDescriptors, SEXP trainDescriptors, double maxDistance, SEXP mask, bool compactResult) {
  try {
    ropecv::InArg _i0(queryDescriptors);
    ropecv::InArg _i1(trainDescriptors);
    ropecv::InArg _i2(mask);
    std::vector<std::vector<cv::DMatch>> _o0;
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->radiusMatch(_i0.ia(), _i1.ia(), _o0, (float)maxDistance, _i2.ia(), compactResult);
    return ropecv::wrap_dmatches_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("radiusMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("radiusMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_read__0(SEXP ropecv_self_, std::string fileName) {
  try {
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->read(fileName);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_read__1(SEXP ropecv_self_, SEXP arg0) {
  try {
    cv::FileNode _s0 = Rf_isNull(arg0) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(arg0);
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_train__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->train();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("train: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("train: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_write__0(SEXP ropecv_self_, std::string fileName) {
  try {
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->write(fileName);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_DescriptorMatcher_DescriptorMatcher_write__1(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    ropecv::obj_as<cv::DescriptorMatcher>(ropecv_self_)->write(_r0, name);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_create__0(int threshold, bool nonmaxSuppression, int type) {
  try {
    cv::Ptr<cv::FastFeatureDetector> _rv = cv::FastFeatureDetector::create(threshold, nonmaxSuppression, (cv::FastFeatureDetector::DetectorType)type);
    return ropecv::wrap_obj(_rv, "cvFastFeatureDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_getNonmaxSuppression__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->getNonmaxSuppression();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNonmaxSuppression: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNonmaxSuppression: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_getThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->getThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_getType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->getType();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_setNonmaxSuppression__0(SEXP ropecv_self_, bool f) {
  try {
    ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->setNonmaxSuppression(f);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNonmaxSuppression: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNonmaxSuppression: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_setThreshold__0(SEXP ropecv_self_, int threshold) {
  try {
    ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->setThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FastFeatureDetector_FastFeatureDetector_setType__0(SEXP ropecv_self_, int type) {
  try {
    ropecv::obj_as<cv::FastFeatureDetector>(ropecv_self_)->setType((cv::FastFeatureDetector::DetectorType)type);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_compute__0(SEXP ropecv_self_, SEXP image, SEXP descriptors) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::KeyPoint> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(descriptors) ? &_owned1 : ropecv::mat_ptr(descriptors);
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->compute(_i0.ia(), _o0, cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("keypoints") = ropecv::wrap_keypoints(_o0),
                                Rcpp::Named("descriptors") = Rf_isNull(descriptors) ? ropecv::wrap_mat(std::move(_owned1)) : descriptors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_compute__1(SEXP ropecv_self_, SEXP images, SEXP descriptors) {
  try {
    ropecv::InArg _i0(images);
    std::vector<std::vector<cv::KeyPoint>> _o0;
    std::vector<cv::Mat> _o1;
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->compute(_i0.ia(), _o0, cv::_OutputArray(_o1));
    return Rcpp::List::create(Rcpp::Named("keypoints") = ropecv::wrap_keypoints_list(_o0),
                                Rcpp::Named("descriptors") = ropecv::wrap_mat_vector(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_defaultNorm__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::Feature2D>(ropecv_self_)->defaultNorm();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("defaultNorm: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("defaultNorm: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_descriptorSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::Feature2D>(ropecv_self_)->descriptorSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("descriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("descriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_descriptorType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::Feature2D>(ropecv_self_)->descriptorType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("descriptorType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("descriptorType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_detect__0(SEXP ropecv_self_, SEXP image, SEXP mask) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    std::vector<cv::KeyPoint> _o0;
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->detect(_i0.ia(), _o0, _i1.ia());
    return ropecv::wrap_keypoints(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_detect__1(SEXP ropecv_self_, SEXP images, SEXP masks) {
  try {
    ropecv::InArg _i0(images);
    ropecv::InArg _i1(masks);
    std::vector<std::vector<cv::KeyPoint>> _o0;
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->detect(_i0.ia(), _o0, _i1.ia());
    return ropecv::wrap_keypoints_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_detectAndCompute__0(SEXP ropecv_self_, SEXP image, SEXP mask, bool useProvidedKeypoints, SEXP descriptors) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    std::vector<cv::KeyPoint> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(descriptors) ? &_owned1 : ropecv::mat_ptr(descriptors);
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->detectAndCompute(_i0.ia(), _i1.ia(), _o0, cv::_OutputArray(*_p1), useProvidedKeypoints);
    return Rcpp::List::create(Rcpp::Named("keypoints") = ropecv::wrap_keypoints(_o0),
                                Rcpp::Named("descriptors") = Rf_isNull(descriptors) ? ropecv::wrap_mat(std::move(_owned1)) : descriptors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectAndCompute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectAndCompute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::Feature2D>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::Feature2D>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_read__0(SEXP ropecv_self_, std::string fileName) {
  try {
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->read(fileName);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_read__1(SEXP ropecv_self_, SEXP arg0) {
  try {
    cv::FileNode _s0 = Rf_isNull(arg0) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(arg0);
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_write__0(SEXP ropecv_self_, std::string fileName) {
  try {
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->write(fileName);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Feature2D_Feature2D_write__1(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    ropecv::obj_as<cv::Feature2D>(ropecv_self_)->write(_r0, name);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FlannBasedMatcher_FlannBasedMatcher_new__0(SEXP indexParams, SEXP searchParams) {
  try {
    cv::Ptr<cv::FlannBasedMatcher> _rv(new cv::FlannBasedMatcher(ropecv::as_flann_index_params(indexParams), ropecv::as_flann_search_params(searchParams)));
    return ropecv::wrap_obj(_rv, "cvFlannBasedMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvFlannBasedMatcher: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvFlannBasedMatcher: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FlannBasedMatcher_FlannBasedMatcher_create__0() {
  try {
    cv::Ptr<cv::FlannBasedMatcher> _rv = cv::FlannBasedMatcher::create();
    return ropecv::wrap_obj(_rv, "cvFlannBasedMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_create__0(int maxCorners, double qualityLevel, double minDistance, int blockSize, bool useHarrisDetector, double k) {
  try {
    cv::Ptr<cv::GFTTDetector> _rv = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, useHarrisDetector, k);
    return ropecv::wrap_obj(_rv, "cvGFTTDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_create__1(int maxCorners, double qualityLevel, double minDistance, int blockSize, int gradiantSize, bool useHarrisDetector, double k) {
  try {
    cv::Ptr<cv::GFTTDetector> _rv = cv::GFTTDetector::create(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector, k);
    return ropecv::wrap_obj(_rv, "cvGFTTDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getBlockSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getBlockSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBlockSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBlockSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getGradientSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getGradientSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGradientSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGradientSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getHarrisDetector__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getHarrisDetector();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getHarrisDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getHarrisDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getK__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getK();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getMaxFeatures__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getMaxFeatures();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getMinDistance__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getMinDistance();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_getQualityLevel__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->getQualityLevel();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getQualityLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getQualityLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setBlockSize__0(SEXP ropecv_self_, int blockSize) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setBlockSize(blockSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBlockSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBlockSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setGradientSize__0(SEXP ropecv_self_, int gradientSize_) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setGradientSize(gradientSize_);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGradientSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGradientSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setHarrisDetector__0(SEXP ropecv_self_, bool val) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setHarrisDetector(val);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setHarrisDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setHarrisDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setK__0(SEXP ropecv_self_, double k) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setK(k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setMaxFeatures__0(SEXP ropecv_self_, int maxFeatures) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setMaxFeatures(maxFeatures);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setMinDistance__0(SEXP ropecv_self_, double minDistance) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setMinDistance(minDistance);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GFTTDetector_GFTTDetector_setQualityLevel__0(SEXP ropecv_self_, double qlevel) {
  try {
    ropecv::obj_as<cv::GFTTDetector>(ropecv_self_)->setQualityLevel(qlevel);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setQualityLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setQualityLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_create__0(bool extended, bool upright, double threshold, int nOctaves, int nOctaveLayers, int diffusivity) {
  try {
    cv::Ptr<cv::KAZE> _rv = cv::KAZE::create(extended, upright, (float)threshold, nOctaves, nOctaveLayers, (cv::KAZE::DiffusivityType)diffusivity);
    return ropecv::wrap_obj(_rv, "cvKAZE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getDiffusivity__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getDiffusivity();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDiffusivity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDiffusivity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getExtended__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getExtended();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getExtended: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getExtended: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getNOctaveLayers__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getNOctaveLayers();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getNOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getNOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_getUpright__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::KAZE>(ropecv_self_)->getUpright();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUpright: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUpright: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_setDiffusivity__0(SEXP ropecv_self_, int diff) {
  try {
    ropecv::obj_as<cv::KAZE>(ropecv_self_)->setDiffusivity((cv::KAZE::DiffusivityType)diff);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDiffusivity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDiffusivity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_setExtended__0(SEXP ropecv_self_, bool extended) {
  try {
    ropecv::obj_as<cv::KAZE>(ropecv_self_)->setExtended(extended);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setExtended: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setExtended: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_setNOctaveLayers__0(SEXP ropecv_self_, int octaveLayers) {
  try {
    ropecv::obj_as<cv::KAZE>(ropecv_self_)->setNOctaveLayers(octaveLayers);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_setNOctaves__0(SEXP ropecv_self_, int octaves) {
  try {
    ropecv::obj_as<cv::KAZE>(ropecv_self_)->setNOctaves(octaves);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_setThreshold__0(SEXP ropecv_self_, double threshold) {
  try {
    ropecv::obj_as<cv::KAZE>(ropecv_self_)->setThreshold(threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_KAZE_KAZE_setUpright__0(SEXP ropecv_self_, bool upright) {
  try {
    ropecv::obj_as<cv::KAZE>(ropecv_self_)->setUpright(upright);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUpright: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUpright: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_create__0(int delta, int min_area, int max_area, double max_variation, double min_diversity, int max_evolution, double area_threshold, double min_margin, int edge_blur_size) {
  try {
    cv::Ptr<cv::MSER> _rv = cv::MSER::create(delta, min_area, max_area, max_variation, min_diversity, max_evolution, area_threshold, min_margin, edge_blur_size);
    return ropecv::wrap_obj(_rv, "cvMSER");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_detectRegions__0(SEXP ropecv_self_, SEXP image) {
  try {
    ropecv::InArg _i0(image);
    std::vector<std::vector<cv::Point>> _o0;
    std::vector<cv::Rect> _o1;
    ropecv::obj_as<cv::MSER>(ropecv_self_)->detectRegions(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("msers") = ropecv::wrap_points_list(_o0),
                                Rcpp::Named("bboxes") = ropecv::wrap_rects(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectRegions: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectRegions: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getAreaThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getAreaThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAreaThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAreaThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getDelta__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getDelta();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDelta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDelta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getEdgeBlurSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getEdgeBlurSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeBlurSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeBlurSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getMaxArea__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getMaxArea();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getMaxEvolution__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getMaxEvolution();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxEvolution: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxEvolution: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getMaxVariation__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getMaxVariation();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxVariation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxVariation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getMinArea__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getMinArea();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getMinDiversity__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getMinDiversity();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinDiversity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinDiversity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getMinMargin__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getMinMargin();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMinMargin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMinMargin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_getPass2Only__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::MSER>(ropecv_self_)->getPass2Only();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPass2Only: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPass2Only: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setAreaThreshold__0(SEXP ropecv_self_, double areaThreshold) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setAreaThreshold(areaThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setAreaThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setAreaThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setDelta__0(SEXP ropecv_self_, int delta) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setDelta(delta);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDelta: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDelta: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setEdgeBlurSize__0(SEXP ropecv_self_, int edge_blur_size) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setEdgeBlurSize(edge_blur_size);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeBlurSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeBlurSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setMaxArea__0(SEXP ropecv_self_, int maxArea) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setMaxArea(maxArea);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setMaxEvolution__0(SEXP ropecv_self_, int maxEvolution) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setMaxEvolution(maxEvolution);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxEvolution: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxEvolution: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setMaxVariation__0(SEXP ropecv_self_, double maxVariation) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setMaxVariation(maxVariation);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxVariation: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxVariation: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setMinArea__0(SEXP ropecv_self_, int minArea) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setMinArea(minArea);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinArea: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinArea: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setMinDiversity__0(SEXP ropecv_self_, double minDiversity) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setMinDiversity(minDiversity);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinDiversity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinDiversity: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setMinMargin__0(SEXP ropecv_self_, double min_margin) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setMinMargin(min_margin);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMinMargin: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMinMargin: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_MSER_MSER_setPass2Only__0(SEXP ropecv_self_, bool f) {
  try {
    ropecv::obj_as<cv::MSER>(ropecv_self_)->setPass2Only(f);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPass2Only: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPass2Only: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_create__0(int nfeatures, double scaleFactor, int nlevels, int edgeThreshold, int firstLevel, int WTA_K, int scoreType, int patchSize, int fastThreshold) {
  try {
    cv::Ptr<cv::ORB> _rv = cv::ORB::create(nfeatures, (float)scaleFactor, nlevels, edgeThreshold, firstLevel, WTA_K, (cv::ORB::ScoreType)scoreType, patchSize, fastThreshold);
    return ropecv::wrap_obj(_rv, "cvORB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getEdgeThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getEdgeThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getFastThreshold__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getFastThreshold();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFastThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFastThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getFirstLevel__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getFirstLevel();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFirstLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFirstLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getMaxFeatures__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getMaxFeatures();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getNLevels__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getNLevels();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getPatchSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getPatchSize();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPatchSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPatchSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getScoreType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getScoreType();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScoreType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScoreType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_getWTA_K__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::ORB>(ropecv_self_)->getWTA_K();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWTA_K: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWTA_K: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setEdgeThreshold__0(SEXP ropecv_self_, int edgeThreshold) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setEdgeThreshold(edgeThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setFastThreshold__0(SEXP ropecv_self_, int fastThreshold) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setFastThreshold(fastThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFastThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFastThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setFirstLevel__0(SEXP ropecv_self_, int firstLevel) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setFirstLevel(firstLevel);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setFirstLevel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setFirstLevel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setMaxFeatures__0(SEXP ropecv_self_, int maxFeatures) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setMaxFeatures(maxFeatures);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setNLevels__0(SEXP ropecv_self_, int nlevels) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setNLevels(nlevels);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNLevels: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNLevels: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setPatchSize__0(SEXP ropecv_self_, int patchSize) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setPatchSize(patchSize);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPatchSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPatchSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setScaleFactor__0(SEXP ropecv_self_, double scaleFactor) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setScaleFactor(scaleFactor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setScoreType__0(SEXP ropecv_self_, int scoreType) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setScoreType((cv::ORB::ScoreType)scoreType);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScoreType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScoreType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_ORB_ORB_setWTA_K__0(SEXP ropecv_self_, int wta_k) {
  try {
    ropecv::obj_as<cv::ORB>(ropecv_self_)->setWTA_K(wta_k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWTA_K: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWTA_K: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_create__0(int nfeatures, int nOctaveLayers, double contrastThreshold, double edgeThreshold, double sigma, bool enable_precise_upscale) {
  try {
    cv::Ptr<cv::SIFT> _rv = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, enable_precise_upscale);
    return ropecv::wrap_obj(_rv, "cvSIFT");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_create__1(int nfeatures, int nOctaveLayers, double contrastThreshold, double edgeThreshold, double sigma, int descriptorType, bool enable_precise_upscale) {
  try {
    cv::Ptr<cv::SIFT> _rv = cv::SIFT::create(nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, descriptorType, enable_precise_upscale);
    return ropecv::wrap_obj(_rv, "cvSIFT");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_getContrastThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::SIFT>(ropecv_self_)->getContrastThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getContrastThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getContrastThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::SIFT>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_getEdgeThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::SIFT>(ropecv_self_)->getEdgeThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEdgeThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEdgeThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_getNFeatures__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::SIFT>(ropecv_self_)->getNFeatures();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_getNOctaveLayers__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::SIFT>(ropecv_self_)->getNOctaveLayers();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_getSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::SIFT>(ropecv_self_)->getSigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_setContrastThreshold__0(SEXP ropecv_self_, double contrastThreshold) {
  try {
    ropecv::obj_as<cv::SIFT>(ropecv_self_)->setContrastThreshold(contrastThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setContrastThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setContrastThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_setEdgeThreshold__0(SEXP ropecv_self_, double edgeThreshold) {
  try {
    ropecv::obj_as<cv::SIFT>(ropecv_self_)->setEdgeThreshold(edgeThreshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEdgeThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEdgeThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_setNFeatures__0(SEXP ropecv_self_, int maxFeatures) {
  try {
    ropecv::obj_as<cv::SIFT>(ropecv_self_)->setNFeatures(maxFeatures);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_setNOctaveLayers__0(SEXP ropecv_self_, int nOctaveLayers) {
  try {
    ropecv::obj_as<cv::SIFT>(ropecv_self_)->setNOctaveLayers(nOctaveLayers);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNOctaveLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SIFT_SIFT_setSigma__0(SEXP ropecv_self_, double sigma) {
  try {
    ropecv::obj_as<cv::SIFT>(ropecv_self_)->setSigma(sigma);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SimpleBlobDetector_SimpleBlobDetector_create__0(SEXP parameters) {
  try {
    cv::SimpleBlobDetector::Params _s0 = ropecv::as_SimpleBlobDetector_Params(parameters);
    cv::Ptr<cv::SimpleBlobDetector> _rv = cv::SimpleBlobDetector::create(_s0);
    return ropecv::wrap_obj(_rv, "cvSimpleBlobDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SimpleBlobDetector_SimpleBlobDetector_getBlobContours__0(SEXP ropecv_self_) {
  try {
    std::vector<std::vector<cv::Point>> _rv = ropecv::obj_as<cv::SimpleBlobDetector>(ropecv_self_)->getBlobContours();
    return ropecv::wrap_points_list(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBlobContours: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBlobContours: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SimpleBlobDetector_SimpleBlobDetector_getDefaultName__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::SimpleBlobDetector>(ropecv_self_)->getDefaultName();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultName: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SimpleBlobDetector_SimpleBlobDetector_getParams__0(SEXP ropecv_self_) {
  try {
    cv::SimpleBlobDetector::Params _rv = ropecv::obj_as<cv::SimpleBlobDetector>(ropecv_self_)->getParams();
    return ropecv::wrap_SimpleBlobDetector_Params(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SimpleBlobDetector_SimpleBlobDetector_setParams__0(SEXP ropecv_self_, SEXP params) {
  try {
    cv::SimpleBlobDetector::Params _s0 = ropecv::as_SimpleBlobDetector_Params(params);
    ropecv::obj_as<cv::SimpleBlobDetector>(ropecv_self_)->setParams(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_SimpleBlobDetector_Params_Params_new__0() {
  try {
    cv::Ptr<cv::SimpleBlobDetector::Params> _rv(new cv::SimpleBlobDetector::Params());
    return ropecv::wrap_obj(_rv, "cvSimpleBlobDetectorParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSimpleBlobDetectorParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSimpleBlobDetectorParams: %s", e.what());
  }
}
