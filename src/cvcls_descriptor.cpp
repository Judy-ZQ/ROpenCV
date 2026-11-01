// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/line_descriptor/descriptor.hpp>

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_createBinaryDescriptor__0() {
  try {
    cv::Ptr<cv::line_descriptor::BinaryDescriptor> _rv = cv::line_descriptor::BinaryDescriptor::createBinaryDescriptor();
    return ropecv::wrap_obj(_rv, "cvBinaryDescriptor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createBinaryDescriptor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createBinaryDescriptor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_compute__0(SEXP ropecv_self_, SEXP image, bool returnFloatDescr) {
  try {
    cv::Mat _m0 = Rf_isNull(image) ? cv::Mat() : *ropecv::mat_ptr(image);
    std::vector<cv::line_descriptor::KeyLine> _o0;
    cv::Mat _o1;
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->compute(_m0, _o0, _o1, returnFloatDescr);
    return Rcpp::List::create(Rcpp::Named("keylines") = ropecv::wrap_vec_line_descriptor_KeyLine(_o0),
                                Rcpp::Named("descriptors") = ropecv::wrap_mat(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_detect__0(SEXP ropecv_self_, SEXP image, SEXP mask) {
  try {
    cv::Mat _m0 = Rf_isNull(image) ? cv::Mat() : *ropecv::mat_ptr(image);
    cv::Mat _m1 = Rf_isNull(mask) ? cv::Mat() : *ropecv::mat_ptr(mask);
    std::vector<cv::line_descriptor::KeyLine> _o0;
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->detect(_m0, _o0, _m1);
    return ropecv::wrap_vec_line_descriptor_KeyLine(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getNumOfOctaves__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->getNumOfOctaves();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNumOfOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNumOfOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getReductionRatio__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->getReductionRatio();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getReductionRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getReductionRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_getWidthOfBand__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->getWidthOfBand();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWidthOfBand: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWidthOfBand: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setNumOfOctaves__0(SEXP ropecv_self_, int octaves) {
  try {
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->setNumOfOctaves(octaves);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNumOfOctaves: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNumOfOctaves: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setReductionRatio__0(SEXP ropecv_self_, int rRatio) {
  try {
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->setReductionRatio(rRatio);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setReductionRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setReductionRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptor_BinaryDescriptor_setWidthOfBand__0(SEXP ropecv_self_, int width) {
  try {
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptor>(ropecv_self_)->setWidthOfBand(width);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWidthOfBand: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWidthOfBand: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_new__0() {
  try {
    cv::Ptr<cv::line_descriptor::BinaryDescriptorMatcher> _rv(new cv::line_descriptor::BinaryDescriptorMatcher());
    return ropecv::wrap_obj(_rv, "cvBinaryDescriptorMatcher");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBinaryDescriptorMatcher: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBinaryDescriptorMatcher: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_knnMatch__0(SEXP ropecv_self_, SEXP queryDescriptors, SEXP trainDescriptors, int k, SEXP mask, bool compactResult) {
  try {
    cv::Mat _m0 = Rf_isNull(queryDescriptors) ? cv::Mat() : *ropecv::mat_ptr(queryDescriptors);
    cv::Mat _m1 = Rf_isNull(trainDescriptors) ? cv::Mat() : *ropecv::mat_ptr(trainDescriptors);
    cv::Mat _m2 = Rf_isNull(mask) ? cv::Mat() : *ropecv::mat_ptr(mask);
    std::vector<std::vector<cv::DMatch>> _o0;
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptorMatcher>(ropecv_self_)->knnMatch(_m0, _m1, _o0, k, _m2, compactResult);
    return ropecv::wrap_dmatches_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("knnMatch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("knnMatch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_BinaryDescriptorMatcher_BinaryDescriptorMatcher_match__0(SEXP ropecv_self_, SEXP queryDescriptors, SEXP trainDescriptors, SEXP mask) {
  try {
    cv::Mat _m0 = Rf_isNull(queryDescriptors) ? cv::Mat() : *ropecv::mat_ptr(queryDescriptors);
    cv::Mat _m1 = Rf_isNull(trainDescriptors) ? cv::Mat() : *ropecv::mat_ptr(trainDescriptors);
    cv::Mat _m2 = Rf_isNull(mask) ? cv::Mat() : *ropecv::mat_ptr(mask);
    std::vector<cv::DMatch> _o0;
    ropecv::obj_as<cv::line_descriptor::BinaryDescriptorMatcher>(ropecv_self_)->match(_m0, _m1, _o0, _m2);
    return ropecv::wrap_dmatches(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("match: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("match: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_KeyLine_KeyLine_new__0() {
  try {
    cv::Ptr<cv::line_descriptor::KeyLine> _rv(new cv::line_descriptor::KeyLine());
    return ropecv::wrap_obj(_rv, "cvKeyLine");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKeyLine: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKeyLine: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_KeyLine_KeyLine_getEndPoint__0(SEXP ropecv_self_) {
  try {
    cv::Point2f _rv = ropecv::obj_as<cv::line_descriptor::KeyLine>(ropecv_self_)->getEndPoint();
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEndPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEndPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_KeyLine_KeyLine_getEndPointInOctave__0(SEXP ropecv_self_) {
  try {
    cv::Point2f _rv = ropecv::obj_as<cv::line_descriptor::KeyLine>(ropecv_self_)->getEndPointInOctave();
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEndPointInOctave: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEndPointInOctave: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_KeyLine_KeyLine_getStartPoint__0(SEXP ropecv_self_) {
  try {
    cv::Point2f _rv = ropecv::obj_as<cv::line_descriptor::KeyLine>(ropecv_self_)->getStartPoint();
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStartPoint: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStartPoint: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_KeyLine_KeyLine_getStartPointInOctave__0(SEXP ropecv_self_) {
  try {
    cv::Point2f _rv = ropecv::obj_as<cv::line_descriptor::KeyLine>(ropecv_self_)->getStartPointInOctave();
    return ropecv::wrap_point2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getStartPointInOctave: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getStartPointInOctave: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_LSDDetector_LSDDetector_new__0() {
  try {
    cv::Ptr<cv::line_descriptor::LSDDetector> _rv(new cv::line_descriptor::LSDDetector());
    return ropecv::wrap_obj(_rv, "cvLSDDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvLSDDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvLSDDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_LSDDetector_LSDDetector_createLSDDetector__0() {
  try {
    cv::Ptr<cv::line_descriptor::LSDDetector> _rv = cv::line_descriptor::LSDDetector::createLSDDetector();
    return ropecv::wrap_obj(_rv, "cvLSDDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("createLSDDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createLSDDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_LSDDetector_LSDDetector_detect__0(SEXP ropecv_self_, SEXP image, int scale, int numOctaves, SEXP mask) {
  try {
    cv::Mat _m0 = Rf_isNull(image) ? cv::Mat() : *ropecv::mat_ptr(image);
    cv::Mat _m1 = Rf_isNull(mask) ? cv::Mat() : *ropecv::mat_ptr(mask);
    std::vector<cv::line_descriptor::KeyLine> _o0;
    ropecv::obj_as<cv::line_descriptor::LSDDetector>(ropecv_self_)->detect(_m0, _o0, scale, numOctaves, _m1);
    return ropecv::wrap_vec_line_descriptor_KeyLine(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_LSDDetector_LSDDetector_detect__1(SEXP ropecv_self_, SEXP images, SEXP keylines, int scale, int numOctaves, SEXP masks) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(images);
    std::vector<cv::Mat> _a1 = ropecv::as_mat_vector(masks);
    std::vector<std::vector<cv::line_descriptor::KeyLine> > _o0;
    if (!Rf_isNull(keylines)) _o0 = ropecv::as_vec_line_descriptor_KeyLine_list(keylines);
    if (_o0.size() != _a0.size()) _o0.resize(_a0.size());
    if (_a1.empty()) _a1.assign(_a0.size(), cv::Mat());
    else if (_a1.size() != _a0.size()) Rcpp::stop("masks 必须为空，或与 images 等长");
    ropecv::obj_as<cv::line_descriptor::LSDDetector>(ropecv_self_)->detect(_a0, _o0, scale, numOctaves, _a1);
    return Rcpp::List::create(Rcpp::Named("keylines") = ropecv::wrap_vec_line_descriptor_KeyLine_list(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_line_descriptor_LSDParam_LSDParam_new__0() {
  try {
    cv::Ptr<cv::line_descriptor::LSDParam> _rv(new cv::line_descriptor::LSDParam());
    return ropecv::wrap_obj(_rv, "cvLSDParam");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvLSDParam: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvLSDParam: %s", e.what());
  }
}
