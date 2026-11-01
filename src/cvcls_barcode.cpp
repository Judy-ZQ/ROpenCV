// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/objdetect/barcode.hpp>

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_new__0() {
  try {
    cv::Ptr<cv::barcode::BarcodeDetector> _rv(new cv::barcode::BarcodeDetector());
    return ropecv::wrap_obj(_rv, "cvBarcodeDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBarcodeDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBarcodeDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_new__1(std::string prototxt_path, std::string model_path) {
  try {
    cv::Ptr<cv::barcode::BarcodeDetector> _rv(new cv::barcode::BarcodeDetector(prototxt_path, model_path));
    return ropecv::wrap_obj(_rv, "cvBarcodeDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvBarcodeDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvBarcodeDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_decodeWithType__0(SEXP ropecv_self_, SEXP img, SEXP points) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(points);
    std::vector<std::string> _o0;
    std::vector<std::string> _o1;
    bool _rv = ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->decodeWithType(_i0.ia(), _i1.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("decoded_info") = Rcpp::wrap(_o0),
                                Rcpp::Named("decoded_type") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("decodeWithType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decodeWithType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_detectAndDecodeWithType__0(SEXP ropecv_self_, SEXP img, SEXP points) {
  try {
    ropecv::InArg _i0(img);
    std::vector<std::string> _o0;
    std::vector<std::string> _o1;
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(points) ? &_owned2 : ropecv::mat_ptr(points);
    bool _rv = ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->detectAndDecodeWithType(_i0.ia(), _o0, _o1, cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("decoded_info") = Rcpp::wrap(_o0),
                                Rcpp::Named("decoded_type") = Rcpp::wrap(_o1),
                                Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned2)) : points);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectAndDecodeWithType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectAndDecodeWithType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_getDetectorScales__0(SEXP ropecv_self_) {
  try {
    std::vector<float> _o0;
    ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->getDetectorScales(_o0);
    return Rcpp::wrap(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDetectorScales: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDetectorScales: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_getDownsamplingThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->getDownsamplingThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDownsamplingThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDownsamplingThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_getGradientThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->getGradientThreshold();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getGradientThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getGradientThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_setDetectorScales__0(SEXP ropecv_self_, SEXP sizes) {
  try {
    std::vector<float> _a0 = ropecv::as_flt_vector(sizes);
    ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->setDetectorScales(_a0);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDetectorScales: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDetectorScales: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_setDownsamplingThreshold__0(SEXP ropecv_self_, double thresh) {
  try {
    ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->setDownsamplingThreshold(thresh);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDownsamplingThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDownsamplingThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_barcode_BarcodeDetector_BarcodeDetector_setGradientThreshold__0(SEXP ropecv_self_, double thresh) {
  try {
    ropecv::obj_as<cv::barcode::BarcodeDetector>(ropecv_self_)->setGradientThreshold(thresh);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setGradientThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setGradientThreshold: %s", e.what());
  }
}
