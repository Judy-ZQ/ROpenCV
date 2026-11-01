// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/objdetect/aruco_detector.hpp>

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_new__0(SEXP dictionary, SEXP detectorParams, SEXP refineParams) {
  try {
    cv::aruco::Dictionary _s0 = Rf_isNull(dictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(dictionary);
    cv::aruco::DetectorParameters _s1 = ropecv::as_aruco_DetectorParameters(detectorParams);
    cv::aruco::RefineParameters _s2 = ropecv::as_aruco_RefineParameters(refineParams);
    cv::Ptr<cv::aruco::ArucoDetector> _rv(new cv::aruco::ArucoDetector(_s0, _s1, _s2));
    return ropecv::wrap_obj(_rv, "cvArucoDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvArucoDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvArucoDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_detectMarkers__0(SEXP ropecv_self_, SEXP image, SEXP corners, SEXP ids, SEXP rejectedImgPoints) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Mat> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(ids) ? &_owned1 : ropecv::mat_ptr(ids);
    std::vector<cv::Mat> _o2;
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->detectMarkers(_i0.ia(), cv::_OutputArray(_o0), cv::_OutputArray(*_p1), cv::_OutputArray(_o2));
    return Rcpp::List::create(Rcpp::Named("corners") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("ids") = Rf_isNull(ids) ? ropecv::wrap_mat(std::move(_owned1)) : ids,
                                Rcpp::Named("rejectedImgPoints") = ropecv::wrap_mat_vector(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectMarkers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectMarkers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_getDetectorParameters__0(SEXP ropecv_self_) {
  try {
    cv::aruco::DetectorParameters _rv = ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->getDetectorParameters();
    return ropecv::wrap_aruco_DetectorParameters(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_getDictionary__0(SEXP ropecv_self_) {
  try {
    cv::aruco::Dictionary _rv = ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->getDictionary();
    return ropecv::wrap_obj(cv::Ptr<cv::aruco::Dictionary>(std::make_shared<cv::aruco::Dictionary>(_rv)), "cvDictionary");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_getRefineParameters__0(SEXP ropecv_self_) {
  try {
    cv::aruco::RefineParameters _rv = ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->getRefineParameters();
    return ropecv::wrap_aruco_RefineParameters(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRefineParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_read__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->read(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_refineDetectedMarkers__0(SEXP ropecv_self_, SEXP image, SEXP board, SEXP detectedIds, SEXP cameraMatrix, SEXP distCoeffs, SEXP detectedCorners, SEXP rejectedCorners, SEXP recoveredIdxs) {
  try {
    ropecv::InArg _i0(image);
    cv::aruco::Board _s1 = Rf_isNull(board) ? cv::aruco::Board() : *ropecv::obj_as<cv::aruco::Board>(board);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(detectedCorners)) _o0 = ropecv::as_mat_vector(detectedCorners);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(detectedIds) ? &_owned1 : ropecv::mat_ptr(detectedIds);
    std::vector<cv::Mat> _o2;
    if (!Rf_isNull(rejectedCorners)) _o2 = ropecv::as_mat_vector(rejectedCorners);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(recoveredIdxs) ? &_owned3 : ropecv::mat_ptr(recoveredIdxs);
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->refineDetectedMarkers(_i0.ia(), _s1, cv::_InputOutputArray(_o0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(_o2), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p3));
    return Rcpp::List::create(Rcpp::Named("detectedCorners") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("detectedIds") = Rf_isNull(detectedIds) ? ropecv::wrap_mat(std::move(_owned1)) : detectedIds,
                                Rcpp::Named("rejectedCorners") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("recoveredIdxs") = Rf_isNull(recoveredIdxs) ? ropecv::wrap_mat(std::move(_owned3)) : recoveredIdxs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("refineDetectedMarkers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("refineDetectedMarkers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_setDetectorParameters__0(SEXP ropecv_self_, SEXP detectorParameters) {
  try {
    cv::aruco::DetectorParameters _s0 = ropecv::as_aruco_DetectorParameters(detectorParameters);
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->setDetectorParameters(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_setDictionary__0(SEXP ropecv_self_, SEXP dictionary) {
  try {
    cv::aruco::Dictionary _s0 = Rf_isNull(dictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(dictionary);
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->setDictionary(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDictionary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDictionary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_setRefineParameters__0(SEXP ropecv_self_, SEXP refineParameters) {
  try {
    cv::aruco::RefineParameters _s0 = ropecv::as_aruco_RefineParameters(refineParameters);
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->setRefineParameters(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRefineParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_ArucoDetector_ArucoDetector_write__0(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    ropecv::obj_as<cv::aruco::ArucoDetector>(ropecv_self_)->write(_r0, name);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_DetectorParameters_DetectorParameters_new__0() {
  try {
    cv::Ptr<cv::aruco::DetectorParameters> _rv(new cv::aruco::DetectorParameters());
    return ropecv::wrap_obj(_rv, "cvArucoDetectorParameters");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvArucoDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvArucoDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_DetectorParameters_DetectorParameters_readDetectorParameters__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    bool _rv = ropecv::obj_as<cv::aruco::DetectorParameters>(ropecv_self_)->readDetectorParameters(_s0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("readDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_DetectorParameters_DetectorParameters_writeDetectorParameters__0(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    bool _rv = ropecv::obj_as<cv::aruco::DetectorParameters>(ropecv_self_)->writeDetectorParameters(_r0, name);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_RefineParameters_RefineParameters_new__0(double minRepDistance, double errorCorrectionRate, bool checkAllOrders) {
  try {
    cv::Ptr<cv::aruco::RefineParameters> _rv(new cv::aruco::RefineParameters((float)minRepDistance, (float)errorCorrectionRate, checkAllOrders));
    return ropecv::wrap_obj(_rv, "cvRefineParameters");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvRefineParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_RefineParameters_RefineParameters_readRefineParameters__0(SEXP ropecv_self_, SEXP fn) {
  try {
    cv::FileNode _s0 = Rf_isNull(fn) ? cv::FileNode() : *ropecv::obj_as<cv::FileNode>(fn);
    bool _rv = ropecv::obj_as<cv::aruco::RefineParameters>(ropecv_self_)->readRefineParameters(_s0);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("readRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readRefineParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_RefineParameters_RefineParameters_writeRefineParameters__0(SEXP ropecv_self_, SEXP fs, std::string name) {
  try {
    cv::FileStorage& _r0 = *ropecv::obj_as<cv::FileStorage>(fs);
    bool _rv = ropecv::obj_as<cv::aruco::RefineParameters>(ropecv_self_)->writeRefineParameters(_r0, name);
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeRefineParameters: %s", e.what());
  }
}
