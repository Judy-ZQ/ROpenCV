// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/xobjdetect.hpp>

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_new__0() {
  try {
    cv::Ptr<cv::CascadeClassifier> _rv(new cv::CascadeClassifier());
    return ropecv::wrap_obj(_rv, "cvCascadeClassifier");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvCascadeClassifier: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvCascadeClassifier: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_new__1(std::string filename) {
  try {
    cv::Ptr<cv::CascadeClassifier> _rv(new cv::CascadeClassifier(filename));
    return ropecv::wrap_obj(_rv, "cvCascadeClassifier");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvCascadeClassifier: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvCascadeClassifier: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_convert__0(std::string oldcascade, std::string newcascade) {
  try {
    bool _rv = cv::CascadeClassifier::convert(oldcascade, newcascade);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("convert: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convert: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_detectMultiScale__0(SEXP ropecv_self_, SEXP image, double scaleFactor, int minNeighbors, int flags, SEXP minSize, SEXP maxSize) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Rect> _o0;
    ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->detectMultiScale(_i0.ia(), _o0, scaleFactor, minNeighbors, flags, ropecv::as_size(minSize), ropecv::as_size(maxSize));
    return ropecv::wrap_rects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectMultiScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectMultiScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_getFeatureType__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->getFeatureType();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFeatureType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFeatureType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_getOriginalWindowSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->getOriginalWindowSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOriginalWindowSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOriginalWindowSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_isOldFormatCascade__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->isOldFormatCascade();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("isOldFormatCascade: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("isOldFormatCascade: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_load__0(SEXP ropecv_self_, std::string filename) {
  try {
    bool _rv = ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->load(filename);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_CascadeClassifier_CascadeClassifier_read__0(SEXP ropecv_self_, SEXP node) {
  try {
    cv::FileNode _s0 = Rf_isNull(node) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(node);
    bool _rv = ropecv::obj_as<cv::CascadeClassifier>(ropecv_self_)->read(_s0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_new__0(std::string filename) {
  try {
    cv::Ptr<cv::HOGDescriptor> _rv(new cv::HOGDescriptor(filename));
    return ropecv::wrap_obj(_rv, "cvHOGDescriptor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvHOGDescriptor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvHOGDescriptor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_new__1(SEXP winSize, SEXP blockSize, SEXP blockStride, SEXP cellSize, int nbins, int derivAperture, double winSigma, int histogramNormType, double L2HysThreshold, bool gammaCorrection, int nlevels, bool signedGradient) {
  try {
    cv::Ptr<cv::HOGDescriptor> _rv(new cv::HOGDescriptor(ropecv::as_size(winSize), ropecv::as_size(blockSize), ropecv::as_size(blockStride), ropecv::as_size(cellSize), nbins, derivAperture, winSigma, (cv::HOGDescriptor::HistogramNormType)histogramNormType, L2HysThreshold, gammaCorrection, nlevels, signedGradient));
    return ropecv::wrap_obj(_rv, "cvHOGDescriptor");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvHOGDescriptor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvHOGDescriptor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_getDefaultPeopleDetector__0() {
  try {
    std::vector<float> _rv = cv::HOGDescriptor::getDefaultPeopleDetector();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultPeopleDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultPeopleDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_getDaimlerPeopleDetector__1() {
  try {
    std::vector<float> _rv = cv::HOGDescriptor::getDaimlerPeopleDetector();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDaimlerPeopleDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDaimlerPeopleDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_checkDetectorSize__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->checkDetectorSize();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("checkDetectorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("checkDetectorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_compute__0(SEXP ropecv_self_, SEXP img, SEXP winStride, SEXP padding, SEXP locations) {
  try {
    ropecv::InArg _i0(img);
    std::vector<cv::Point> _a1 = ropecv::as_points(locations);
    std::vector<float> _o0;
    ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->compute(_i0.ia(), _o0, ropecv::as_size(winStride), ropecv::as_size(padding), _a1);
    return Rcpp::wrap(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_computeGradient__0(SEXP ropecv_self_, SEXP img, SEXP grad, SEXP angleOfs, SEXP paddingTL, SEXP paddingBR) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(grad) ? &_owned0 : ropecv::mat_ptr(grad);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(angleOfs) ? &_owned1 : ropecv::mat_ptr(angleOfs);
    ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->computeGradient(_i0.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), ropecv::as_size(paddingTL), ropecv::as_size(paddingBR));
    return Rcpp::List::create(Rcpp::Named("grad") = Rf_isNull(grad) ? ropecv::wrap_mat(std::move(_owned0)) : grad,
                                Rcpp::Named("angleOfs") = Rf_isNull(angleOfs) ? ropecv::wrap_mat(std::move(_owned1)) : angleOfs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeGradient: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeGradient: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_detect__0(SEXP ropecv_self_, SEXP img, double hitThreshold, SEXP winStride, SEXP padding, SEXP searchLocations) {
  try {
    ropecv::InArg _i0(img);
    std::vector<cv::Point> _a1 = ropecv::as_points(searchLocations);
    std::vector<cv::Point> _o0;
    std::vector<double> _o1;
    ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->detect(_i0.ia(), _o0, _o1, hitThreshold, ropecv::as_size(winStride), ropecv::as_size(padding), _a1);
    return Rcpp::List::create(Rcpp::Named("foundLocations") = ropecv::wrap_points(_o0),
                                Rcpp::Named("weights") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_detectMultiScale__0(SEXP ropecv_self_, SEXP img, double hitThreshold, SEXP winStride, SEXP padding, double scale, double groupThreshold, bool useMeanshiftGrouping) {
  try {
    ropecv::InArg _i0(img);
    std::vector<cv::Rect> _o0;
    std::vector<double> _o1;
    ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->detectMultiScale(_i0.ia(), _o0, _o1, hitThreshold, ropecv::as_size(winStride), ropecv::as_size(padding), scale, groupThreshold, useMeanshiftGrouping);
    return Rcpp::List::create(Rcpp::Named("foundLocations") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("foundWeights") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectMultiScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectMultiScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_getDescriptorSize__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->getDescriptorSize();
    return Rf_ScalarInteger((int)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDescriptorSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDescriptorSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_getWinSigma__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->getWinSigma();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getWinSigma: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getWinSigma: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_load__0(SEXP ropecv_self_, std::string filename, std::string objname) {
  try {
    bool _rv = ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->load(filename, objname);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("load: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("load: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_save__0(SEXP ropecv_self_, std::string filename, std::string objname) {
  try {
    ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->save(filename, objname);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("save: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("save: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_HOGDescriptor_HOGDescriptor_setSVMDetector__0(SEXP ropecv_self_, SEXP svmdetector) {
  try {
    ropecv::InArg _i0(svmdetector);
    ropecv::obj_as<cv::HOGDescriptor>(ropecv_self_)->setSVMDetector(_i0.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setSVMDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setSVMDetector: %s", e.what());
  }
}
