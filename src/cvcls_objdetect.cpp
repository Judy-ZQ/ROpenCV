// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/objdetect.hpp>

// [[Rcpp::export]]
SEXP cv_QRCodeDetector_QRCodeDetector_new__0() {
  try {
    cv::Ptr<cv::QRCodeDetector> _rv(new cv::QRCodeDetector());
    return ropecv::wrap_obj(_rv, "cvQRCodeDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvQRCodeDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvQRCodeDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetector_QRCodeDetector_decodeCurved__0(SEXP ropecv_self_, SEXP img, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    std::string _rv = ropecv::obj_as<cv::QRCodeDetector>(ropecv_self_)->decodeCurved(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("decodeCurved: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decodeCurved: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetector_QRCodeDetector_detectAndDecodeCurved__0(SEXP ropecv_self_, SEXP img, SEXP points, SEXP straight_qrcode) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(straight_qrcode) ? &_owned1 : ropecv::mat_ptr(straight_qrcode);
    std::string _rv = ropecv::obj_as<cv::QRCodeDetector>(ropecv_self_)->detectAndDecodeCurved(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("straight_qrcode") = Rf_isNull(straight_qrcode) ? ropecv::wrap_mat(std::move(_owned1)) : straight_qrcode);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectAndDecodeCurved: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectAndDecodeCurved: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetector_QRCodeDetector_setEpsX__0(SEXP ropecv_self_, double epsX) {
  try {
    ropecv::obj_as<cv::QRCodeDetector>(ropecv_self_)->setEpsX(epsX);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEpsX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEpsX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetector_QRCodeDetector_setEpsY__0(SEXP ropecv_self_, double epsY) {
  try {
    ropecv::obj_as<cv::QRCodeDetector>(ropecv_self_)->setEpsY(epsY);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEpsY: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEpsY: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetector_QRCodeDetector_setUseAlignmentMarkers__0(SEXP ropecv_self_, bool useAlignmentMarkers) {
  try {
    ropecv::obj_as<cv::QRCodeDetector>(ropecv_self_)->setUseAlignmentMarkers(useAlignmentMarkers);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUseAlignmentMarkers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUseAlignmentMarkers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__0() {
  try {
    cv::Ptr<cv::QRCodeDetectorAruco> _rv(new cv::QRCodeDetectorAruco());
    return ropecv::wrap_obj(_rv, "cvQRCodeDetectorAruco");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvQRCodeDetectorAruco: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvQRCodeDetectorAruco: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__1(SEXP params) {
  try {
    cv::QRCodeDetectorAruco::Params _s0 = ropecv::as_QRCodeDetectorAruco_Params(params);
    cv::Ptr<cv::QRCodeDetectorAruco> _rv(new cv::QRCodeDetectorAruco(_s0));
    return ropecv::wrap_obj(_rv, "cvQRCodeDetectorAruco");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvQRCodeDetectorAruco: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvQRCodeDetectorAruco: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getArucoParameters__0(SEXP ropecv_self_) {
  try {
    cv::aruco::DetectorParameters _rv = ropecv::obj_as<cv::QRCodeDetectorAruco>(ropecv_self_)->getArucoParameters();
    return ropecv::wrap_aruco_DetectorParameters(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getArucoParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getArucoParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getDetectorParameters__0(SEXP ropecv_self_) {
  try {
    cv::QRCodeDetectorAruco::Params _rv = ropecv::obj_as<cv::QRCodeDetectorAruco>(ropecv_self_)->getDetectorParameters();
    return ropecv::wrap_QRCodeDetectorAruco_Params(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setArucoParameters__0(SEXP ropecv_self_, SEXP params) {
  try {
    cv::aruco::DetectorParameters _s0 = ropecv::as_aruco_DetectorParameters(params);
    ropecv::obj_as<cv::QRCodeDetectorAruco>(ropecv_self_)->setArucoParameters(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setArucoParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setArucoParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setDetectorParameters__0(SEXP ropecv_self_, SEXP params) {
  try {
    cv::QRCodeDetectorAruco::Params _s0 = ropecv::as_QRCodeDetectorAruco_Params(params);
    ropecv::obj_as<cv::QRCodeDetectorAruco>(ropecv_self_)->setDetectorParameters(_s0);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeDetectorAruco_Params_Params_new__0() {
  try {
    cv::Ptr<cv::QRCodeDetectorAruco::Params> _rv(new cv::QRCodeDetectorAruco::Params());
    return ropecv::wrap_obj(_rv, "cvQRCodeDetectorArucoParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvQRCodeDetectorArucoParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvQRCodeDetectorArucoParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeEncoder_QRCodeEncoder_create__0(SEXP parameters) {
  try {
    cv::QRCodeEncoder::Params _s0 = ropecv::as_QRCodeEncoder_Params(parameters);
    cv::Ptr<cv::QRCodeEncoder> _rv = cv::QRCodeEncoder::create(_s0);
    return ropecv::wrap_obj(_rv, "cvQRCodeEncoder");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeEncoder_QRCodeEncoder_encode__0(SEXP ropecv_self_, std::string encoded_info, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::QRCodeEncoder>(ropecv_self_)->encode(encoded_info, cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("encode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("encode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeEncoder_QRCodeEncoder_encodeStructuredAppend__0(SEXP ropecv_self_, std::string encoded_info, SEXP qrcodes) {
  try {
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::QRCodeEncoder>(ropecv_self_)->encodeStructuredAppend(encoded_info, cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("encodeStructuredAppend: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("encodeStructuredAppend: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_QRCodeEncoder_Params_Params_new__0() {
  try {
    cv::Ptr<cv::QRCodeEncoder::Params> _rv(new cv::QRCodeEncoder::Params());
    return ropecv::wrap_obj(_rv, "cvQRCodeEncoderParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvQRCodeEncoderParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvQRCodeEncoderParams: %s", e.what());
  }
}
