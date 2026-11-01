// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/objdetect/charuco_detector.hpp>

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_new__0(SEXP board, SEXP charucoParams, SEXP detectorParams, SEXP refineParams) {
  try {
    cv::aruco::CharucoBoard _s0 = Rf_isNull(board) ? cv::aruco::CharucoBoard() : *ropecv::obj_as<cv::aruco::CharucoBoard>(board);
    cv::aruco::CharucoParameters _s1 = ropecv::as_aruco_CharucoParameters(charucoParams);
    cv::aruco::DetectorParameters _s2 = ropecv::as_aruco_DetectorParameters(detectorParams);
    cv::aruco::RefineParameters _s3 = ropecv::as_aruco_RefineParameters(refineParams);
    cv::Ptr<cv::aruco::CharucoDetector> _rv(new cv::aruco::CharucoDetector(_s0, _s1, _s2, _s3));
    return ropecv::wrap_obj(_rv, "cvCharucoDetector");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvCharucoDetector: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvCharucoDetector: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_detectBoard__0(SEXP ropecv_self_, SEXP image, SEXP markerIds, SEXP charucoCorners, SEXP charucoIds, SEXP markerCorners) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(charucoCorners) ? &_owned0 : ropecv::mat_ptr(charucoCorners);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(charucoIds) ? &_owned1 : ropecv::mat_ptr(charucoIds);
    std::vector<cv::Mat> _o2;
    if (!Rf_isNull(markerCorners)) _o2 = ropecv::as_mat_vector(markerCorners);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(markerIds) ? &_owned3 : ropecv::mat_ptr(markerIds);
    ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->detectBoard(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_InputOutputArray(_o2), cv::_InputOutputArray(*_p3));
    return Rcpp::List::create(Rcpp::Named("charucoCorners") = Rf_isNull(charucoCorners) ? ropecv::wrap_mat(std::move(_owned0)) : charucoCorners,
                                Rcpp::Named("charucoIds") = Rf_isNull(charucoIds) ? ropecv::wrap_mat(std::move(_owned1)) : charucoIds,
                                Rcpp::Named("markerCorners") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("markerIds") = Rf_isNull(markerIds) ? ropecv::wrap_mat(std::move(_owned3)) : markerIds);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectBoard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectBoard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_detectDiamonds__0(SEXP ropecv_self_, SEXP image, SEXP markerIds, SEXP diamondCorners, SEXP diamondIds, SEXP markerCorners) {
  try {
    ropecv::InArg _i0(image);
    std::vector<cv::Mat> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(diamondIds) ? &_owned1 : ropecv::mat_ptr(diamondIds);
    std::vector<cv::Mat> _o2;
    if (!Rf_isNull(markerCorners)) _o2 = ropecv::as_mat_vector(markerCorners);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(markerIds) ? &_owned3 : ropecv::mat_ptr(markerIds);
    ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->detectDiamonds(_i0.ia(), cv::_OutputArray(_o0), cv::_OutputArray(*_p1), cv::_InputOutputArray(_o2), cv::_InputOutputArray(*_p3));
    return Rcpp::List::create(Rcpp::Named("diamondCorners") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("diamondIds") = Rf_isNull(diamondIds) ? ropecv::wrap_mat(std::move(_owned1)) : diamondIds,
                                Rcpp::Named("markerCorners") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("markerIds") = Rf_isNull(markerIds) ? ropecv::wrap_mat(std::move(_owned3)) : markerIds);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectDiamonds: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectDiamonds: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_getBoard__0(SEXP ropecv_self_) {
  try {
    cv::aruco::CharucoBoard _rv = ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->getBoard();
    return ropecv::wrap_obj(cv::Ptr<cv::aruco::CharucoBoard>(std::make_shared<cv::aruco::CharucoBoard>(_rv)), "cvCharucoBoard");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBoard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBoard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_getCharucoParameters__0(SEXP ropecv_self_) {
  try {
    cv::aruco::CharucoParameters _rv = ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->getCharucoParameters();
    return ropecv::wrap_aruco_CharucoParameters(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getCharucoParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getCharucoParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_getDetectorParameters__0(SEXP ropecv_self_) {
  try {
    cv::aruco::DetectorParameters _rv = ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->getDetectorParameters();
    return ropecv::wrap_aruco_DetectorParameters(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_getRefineParameters__0(SEXP ropecv_self_) {
  try {
    cv::aruco::RefineParameters _rv = ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->getRefineParameters();
    return ropecv::wrap_aruco_RefineParameters(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getRefineParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_setBoard__0(SEXP ropecv_self_, SEXP board) {
  try {
    cv::aruco::CharucoBoard _s0 = Rf_isNull(board) ? cv::aruco::CharucoBoard() : *ropecv::obj_as<cv::aruco::CharucoBoard>(board);
    ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->setBoard(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBoard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBoard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_setCharucoParameters__0(SEXP ropecv_self_, SEXP charucoParameters) {
  try {
    cv::aruco::CharucoParameters _o0;
    if (!Rf_isNull(charucoParameters)) _o0 = ropecv::as_aruco_CharucoParameters(charucoParameters);
    ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->setCharucoParameters(_o0);
    return Rcpp::List::create(Rcpp::Named("charucoParameters") = ropecv::wrap_aruco_CharucoParameters(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("setCharucoParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setCharucoParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_setDetectorParameters__0(SEXP ropecv_self_, SEXP detectorParameters) {
  try {
    cv::aruco::DetectorParameters _s0 = ropecv::as_aruco_DetectorParameters(detectorParameters);
    ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->setDetectorParameters(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDetectorParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDetectorParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoDetector_CharucoDetector_setRefineParameters__0(SEXP ropecv_self_, SEXP refineParameters) {
  try {
    cv::aruco::RefineParameters _s0 = ropecv::as_aruco_RefineParameters(refineParameters);
    ropecv::obj_as<cv::aruco::CharucoDetector>(ropecv_self_)->setRefineParameters(_s0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setRefineParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setRefineParameters: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_aruco_CharucoParameters_CharucoParameters_new__0() {
  try {
    cv::Ptr<cv::aruco::CharucoParameters> _rv(new cv::aruco::CharucoParameters());
    return ropecv::wrap_obj(_rv, "cvCharucoParameters");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvCharucoParameters: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvCharucoParameters: %s", e.what());
  }
}
