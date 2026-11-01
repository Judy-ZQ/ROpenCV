// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/calib.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/calib.hpp>

// [[Rcpp::export]]
SEXP cv_calibrateCamera__0(SEXP objectPoints, SEXP imagePoints, SEXP imageSize, SEXP cameraMatrix, SEXP distCoeffs, int flags, SEXP criteria, SEXP rvecs, SEXP tvecs) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix) ? &_owned0 : ropecv::mat_ptr(cameraMatrix);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs) ? &_owned1 : ropecv::mat_ptr(distCoeffs);
    std::vector<cv::Mat> _o2;
    std::vector<cv::Mat> _o3;
    double _rv = ::cv::calibrateCamera(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(_o2), cv::_OutputArray(_o3), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix") = Rf_isNull(cameraMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix,
                                Rcpp::Named("distCoeffs") = Rf_isNull(distCoeffs) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o3));
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateCamera: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateCamera: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrateCamera__1(SEXP objectPoints, SEXP imagePoints, SEXP imageSize, SEXP cameraMatrix, SEXP distCoeffs, int flags, SEXP criteria, SEXP rvecs, SEXP tvecs, SEXP stdDeviationsIntrinsics, SEXP stdDeviationsExtrinsics, SEXP perViewErrors) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix) ? &_owned0 : ropecv::mat_ptr(cameraMatrix);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs) ? &_owned1 : ropecv::mat_ptr(distCoeffs);
    std::vector<cv::Mat> _o2;
    std::vector<cv::Mat> _o3;
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(stdDeviationsIntrinsics) ? &_owned4 : ropecv::mat_ptr(stdDeviationsIntrinsics);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(stdDeviationsExtrinsics) ? &_owned5 : ropecv::mat_ptr(stdDeviationsExtrinsics);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(perViewErrors) ? &_owned6 : ropecv::mat_ptr(perViewErrors);
    double _rv = ::cv::calibrateCamera(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(_o2), cv::_OutputArray(_o3), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix") = Rf_isNull(cameraMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix,
                                Rcpp::Named("distCoeffs") = Rf_isNull(distCoeffs) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o3),
                                Rcpp::Named("stdDeviationsIntrinsics") = Rf_isNull(stdDeviationsIntrinsics) ? ropecv::wrap_mat(std::move(_owned4)) : stdDeviationsIntrinsics,
                                Rcpp::Named("stdDeviationsExtrinsics") = Rf_isNull(stdDeviationsExtrinsics) ? ropecv::wrap_mat(std::move(_owned5)) : stdDeviationsExtrinsics,
                                Rcpp::Named("perViewErrors") = Rf_isNull(perViewErrors) ? ropecv::wrap_mat(std::move(_owned6)) : perViewErrors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateCamera: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateCamera: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrateCameraRO__0(SEXP objectPoints, SEXP imagePoints, SEXP imageSize, int iFixedPoint, SEXP cameraMatrix, SEXP distCoeffs, int flags, SEXP criteria, SEXP rvecs, SEXP tvecs, SEXP newObjPoints) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix) ? &_owned0 : ropecv::mat_ptr(cameraMatrix);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs) ? &_owned1 : ropecv::mat_ptr(distCoeffs);
    std::vector<cv::Mat> _o2;
    std::vector<cv::Mat> _o3;
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(newObjPoints) ? &_owned4 : ropecv::mat_ptr(newObjPoints);
    double _rv = ::cv::calibrateCameraRO(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), iFixedPoint, cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(_o2), cv::_OutputArray(_o3), cv::_OutputArray(*_p4), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix") = Rf_isNull(cameraMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix,
                                Rcpp::Named("distCoeffs") = Rf_isNull(distCoeffs) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o3),
                                Rcpp::Named("newObjPoints") = Rf_isNull(newObjPoints) ? ropecv::wrap_mat(std::move(_owned4)) : newObjPoints);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateCameraRO: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateCameraRO: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrateCameraRO__1(SEXP objectPoints, SEXP imagePoints, SEXP imageSize, int iFixedPoint, SEXP cameraMatrix, SEXP distCoeffs, int flags, SEXP criteria, SEXP rvecs, SEXP tvecs, SEXP newObjPoints, SEXP stdDeviationsIntrinsics, SEXP stdDeviationsExtrinsics, SEXP stdDeviationsObjPoints, SEXP perViewErrors) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix) ? &_owned0 : ropecv::mat_ptr(cameraMatrix);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs) ? &_owned1 : ropecv::mat_ptr(distCoeffs);
    std::vector<cv::Mat> _o2;
    std::vector<cv::Mat> _o3;
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(newObjPoints) ? &_owned4 : ropecv::mat_ptr(newObjPoints);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(stdDeviationsIntrinsics) ? &_owned5 : ropecv::mat_ptr(stdDeviationsIntrinsics);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(stdDeviationsExtrinsics) ? &_owned6 : ropecv::mat_ptr(stdDeviationsExtrinsics);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(stdDeviationsObjPoints) ? &_owned7 : ropecv::mat_ptr(stdDeviationsObjPoints);
    cv::Mat _owned8;
    cv::Mat* _p8 = Rf_isNull(perViewErrors) ? &_owned8 : ropecv::mat_ptr(perViewErrors);
    double _rv = ::cv::calibrateCameraRO(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), iFixedPoint, cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(_o2), cv::_OutputArray(_o3), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6), cv::_OutputArray(*_p7), cv::_OutputArray(*_p8), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix") = Rf_isNull(cameraMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix,
                                Rcpp::Named("distCoeffs") = Rf_isNull(distCoeffs) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o3),
                                Rcpp::Named("newObjPoints") = Rf_isNull(newObjPoints) ? ropecv::wrap_mat(std::move(_owned4)) : newObjPoints,
                                Rcpp::Named("stdDeviationsIntrinsics") = Rf_isNull(stdDeviationsIntrinsics) ? ropecv::wrap_mat(std::move(_owned5)) : stdDeviationsIntrinsics,
                                Rcpp::Named("stdDeviationsExtrinsics") = Rf_isNull(stdDeviationsExtrinsics) ? ropecv::wrap_mat(std::move(_owned6)) : stdDeviationsExtrinsics,
                                Rcpp::Named("stdDeviationsObjPoints") = Rf_isNull(stdDeviationsObjPoints) ? ropecv::wrap_mat(std::move(_owned7)) : stdDeviationsObjPoints,
                                Rcpp::Named("perViewErrors") = Rf_isNull(perViewErrors) ? ropecv::wrap_mat(std::move(_owned8)) : perViewErrors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateCameraRO: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateCameraRO: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrateHandEye(SEXP R_gripper2base, SEXP t_gripper2base, SEXP R_target2cam, SEXP t_target2cam, int method, SEXP R_cam2gripper, SEXP t_cam2gripper) {
  try {
    ropecv::InArg _i0(R_gripper2base);
    ropecv::InArg _i1(t_gripper2base);
    ropecv::InArg _i2(R_target2cam);
    ropecv::InArg _i3(t_target2cam);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R_cam2gripper) ? &_owned0 : ropecv::mat_ptr(R_cam2gripper);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(t_cam2gripper) ? &_owned1 : ropecv::mat_ptr(t_cam2gripper);
    ::cv::calibrateHandEye(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), (cv::HandEyeCalibrationMethod)method);
    return Rcpp::List::create(Rcpp::Named("R_cam2gripper") = Rf_isNull(R_cam2gripper) ? ropecv::wrap_mat(std::move(_owned0)) : R_cam2gripper,
                                Rcpp::Named("t_cam2gripper") = Rf_isNull(t_cam2gripper) ? ropecv::wrap_mat(std::move(_owned1)) : t_cam2gripper);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateHandEye: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateHandEye: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrateMultiview(SEXP objPoints, SEXP imagePoints, SEXP imageSize, SEXP detectionMask, SEXP Ks, SEXP distortions, SEXP isFisheye, bool useIntrinsicsGuess, SEXP flagsForIntrinsics, SEXP Rs, SEXP Ts, SEXP rvecs0, SEXP tvecs0, SEXP perFrameErrors, SEXP initializationPairs) {
  try {
    ropecv::InArg _i0(objPoints);
    std::vector<std::vector<cv::Mat> > _a1 = ropecv::as_mat_mat_vector(imagePoints);
    std::vector<cv::Size> _a2 = ropecv::as_sizes(imageSize);
    ropecv::InArg _i3(detectionMask);
    ropecv::InArg _i4(isFisheye);
    ropecv::InArg _i5(flagsForIntrinsics);
    std::vector<cv::Mat> _o0;
    std::vector<cv::Mat> _o1;
    std::vector<cv::Mat> _o2;
    if (!Rf_isNull(Ks)) _o2 = ropecv::as_mat_vector(Ks);
    std::vector<cv::Mat> _o3;
    if (!Rf_isNull(distortions)) _o3 = ropecv::as_mat_vector(distortions);
    std::vector<cv::Mat> _o4;
    std::vector<cv::Mat> _o5;
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(perFrameErrors) ? &_owned6 : ropecv::mat_ptr(perFrameErrors);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(initializationPairs) ? &_owned7 : ropecv::mat_ptr(initializationPairs);
    double _rv = ::cv::calibrateMultiview(_i0.ia(), _a1, _a2, _i3.ia(), cv::_OutputArray(_o0), cv::_OutputArray(_o1), _o2, _o3, cv::_OutputArray(_o4), cv::_OutputArray(_o5), _i4.ia(), cv::_OutputArray(*_p6), cv::_OutputArray(*_p7), useIntrinsicsGuess, _i5.ia());
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("Rs") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("Ts") = ropecv::wrap_mat_vector(_o1),
                                Rcpp::Named("Ks") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("distortions") = ropecv::wrap_mat_vector(_o3),
                                Rcpp::Named("rvecs0") = ropecv::wrap_mat_vector(_o4),
                                Rcpp::Named("tvecs0") = ropecv::wrap_mat_vector(_o5),
                                Rcpp::Named("perFrameErrors") = Rf_isNull(perFrameErrors) ? ropecv::wrap_mat(std::move(_owned6)) : perFrameErrors,
                                Rcpp::Named("initializationPairs") = Rf_isNull(initializationPairs) ? ropecv::wrap_mat(std::move(_owned7)) : initializationPairs);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateMultiview: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateMultiview: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrateRobotWorldHandEye(SEXP R_world2cam, SEXP t_world2cam, SEXP R_base2gripper, SEXP t_base2gripper, int method, SEXP R_base2world, SEXP t_base2world, SEXP R_gripper2cam, SEXP t_gripper2cam) {
  try {
    ropecv::InArg _i0(R_world2cam);
    ropecv::InArg _i1(t_world2cam);
    ropecv::InArg _i2(R_base2gripper);
    ropecv::InArg _i3(t_base2gripper);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R_base2world) ? &_owned0 : ropecv::mat_ptr(R_base2world);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(t_base2world) ? &_owned1 : ropecv::mat_ptr(t_base2world);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(R_gripper2cam) ? &_owned2 : ropecv::mat_ptr(R_gripper2cam);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(t_gripper2cam) ? &_owned3 : ropecv::mat_ptr(t_gripper2cam);
    ::cv::calibrateRobotWorldHandEye(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), (cv::RobotWorldHandEyeCalibrationMethod)method);
    return Rcpp::List::create(Rcpp::Named("R_base2world") = Rf_isNull(R_base2world) ? ropecv::wrap_mat(std::move(_owned0)) : R_base2world,
                                Rcpp::Named("t_base2world") = Rf_isNull(t_base2world) ? ropecv::wrap_mat(std::move(_owned1)) : t_base2world,
                                Rcpp::Named("R_gripper2cam") = Rf_isNull(R_gripper2cam) ? ropecv::wrap_mat(std::move(_owned2)) : R_gripper2cam,
                                Rcpp::Named("t_gripper2cam") = Rf_isNull(t_gripper2cam) ? ropecv::wrap_mat(std::move(_owned3)) : t_gripper2cam);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrateRobotWorldHandEye: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrateRobotWorldHandEye: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_calibrationMatrixValues(SEXP cameraMatrix, SEXP imageSize, double apertureWidth, double apertureHeight) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    double _o0 = 0;
    double _o1 = 0;
    double _o2 = 0;
    cv::Point2d _o3;
    double _o4 = 0;
    ::cv::calibrationMatrixValues(_i0.ia(), ropecv::as_size(imageSize), apertureWidth, apertureHeight, _o0, _o1, _o2, _o3, _o4);
    return Rcpp::List::create(Rcpp::Named("fovx") = Rf_ScalarReal(_o0),
                                Rcpp::Named("fovy") = Rf_ScalarReal(_o1),
                                Rcpp::Named("focalLength") = Rf_ScalarReal(_o2),
                                Rcpp::Named("principalPoint") = ropecv::wrap_point2d(_o3),
                                Rcpp::Named("aspectRatio") = Rf_ScalarReal(_o4));
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrationMatrixValues: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrationMatrixValues: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_checkChessboard(SEXP img, SEXP size) {
  try {
    ropecv::InArg _i0(img);
    bool _rv = ::cv::checkChessboard(_i0.ia(), ropecv::as_size(size));
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("checkChessboard: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("checkChessboard: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawChessboardCorners(SEXP image, SEXP patternSize, SEXP corners, bool patternWasFound) {
  try {
    ropecv::InArg _i0(corners);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::drawChessboardCorners(cv::_InputOutputArray(*_p0), ropecv::as_size(patternSize), _i0.ia(), patternWasFound);
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawChessboardCorners: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawChessboardCorners: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateChessboardSharpness(SEXP image, SEXP patternSize, SEXP corners, double rise_distance, bool vertical, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(corners);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Scalar _rv = ::cv::estimateChessboardSharpness(_i0.ia(), ropecv::as_size(patternSize), _i1.ia(), (float)rise_distance, vertical, cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = ropecv::wrap_scalar(_rv),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateChessboardSharpness: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateChessboardSharpness: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_find4QuadCornerSubpix(SEXP img, SEXP corners, SEXP region_size) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(corners) ? &_owned0 : ropecv::mat_ptr(corners);
    bool _rv = ::cv::find4QuadCornerSubpix(_i0.ia(), cv::_InputOutputArray(*_p0), ropecv::as_size(region_size));
    SEXP _out = Rf_isNull(corners) ? ropecv::wrap_mat(std::move(_owned0)) : corners;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("find4QuadCornerSubpix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("find4QuadCornerSubpix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findChessboardCorners(SEXP image, SEXP patternSize, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::findChessboardCorners(_i0.ia(), ropecv::as_size(patternSize), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findChessboardCorners: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findChessboardCorners: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findChessboardCornersSB__0(SEXP image, SEXP patternSize, int flags, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::findChessboardCornersSB(_i0.ia(), ropecv::as_size(patternSize), cv::_OutputArray(*_p0), flags);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findChessboardCornersSB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findChessboardCornersSB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findChessboardCornersSB__1(SEXP image, SEXP patternSize, int flags, SEXP corners, SEXP meta) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(corners) ? &_owned0 : ropecv::mat_ptr(corners);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(meta) ? &_owned1 : ropecv::mat_ptr(meta);
    bool _rv = ::cv::findChessboardCornersSB(_i0.ia(), ropecv::as_size(patternSize), cv::_OutputArray(*_p0), flags, cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("corners") = Rf_isNull(corners) ? ropecv::wrap_mat(std::move(_owned0)) : corners,
                                Rcpp::Named("meta") = Rf_isNull(meta) ? ropecv::wrap_mat(std::move(_owned1)) : meta);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findChessboardCornersSB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findChessboardCornersSB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findCirclesGrid__0(SEXP image, SEXP patternSize, int flags, SEXP blobDetector, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::findCirclesGrid(_i0.ia(), ropecv::as_size(patternSize), cv::_OutputArray(*_p0), flags, ropecv::as_ptr<cv::FeatureDetector>(blobDetector));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findCirclesGrid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findCirclesGrid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findCirclesGrid__1(SEXP image, SEXP patternSize, int flags, SEXP blobDetector, SEXP parameters, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::CirclesGridFinderParameters _s1 = ropecv::as_CirclesGridFinderParameters(parameters);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::findCirclesGrid(_i0.ia(), ropecv::as_size(patternSize), cv::_OutputArray(*_p0), flags, ropecv::as_ptr<cv::FeatureDetector>(blobDetector), _s1);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findCirclesGrid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findCirclesGrid: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_calibrate(SEXP objectPoints, SEXP imagePoints, SEXP image_size, SEXP K, SEXP D, int flags, SEXP criteria, SEXP rvecs, SEXP tvecs) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(K) ? &_owned0 : ropecv::mat_ptr(K);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(D) ? &_owned1 : ropecv::mat_ptr(D);
    std::vector<cv::Mat> _o2;
    std::vector<cv::Mat> _o3;
    double _rv = ::cv::fisheye::calibrate(_i0.ia(), _i1.ia(), ropecv::as_size(image_size), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(_o2), cv::_OutputArray(_o3), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("K") = Rf_isNull(K) ? ropecv::wrap_mat(std::move(_owned0)) : K,
                                Rcpp::Named("D") = Rf_isNull(D) ? ropecv::wrap_mat(std::move(_owned1)) : D,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o3));
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_stereoCalibrate__0(SEXP objectPoints, SEXP imagePoints1, SEXP imagePoints2, SEXP K1, SEXP D1, SEXP K2, SEXP D2, SEXP imageSize, int flags, SEXP criteria, SEXP R, SEXP T) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints1);
    ropecv::InArg _i2(imagePoints2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(K1) ? &_owned0 : ropecv::mat_ptr(K1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(D1) ? &_owned1 : ropecv::mat_ptr(D1);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(K2) ? &_owned2 : ropecv::mat_ptr(K2);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(D2) ? &_owned3 : ropecv::mat_ptr(D2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(R) ? &_owned4 : ropecv::mat_ptr(R);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(T) ? &_owned5 : ropecv::mat_ptr(T);
    double _rv = ::cv::fisheye::stereoCalibrate(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), cv::_InputOutputArray(*_p3), ropecv::as_size(imageSize), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("K1") = Rf_isNull(K1) ? ropecv::wrap_mat(std::move(_owned0)) : K1,
                                Rcpp::Named("D1") = Rf_isNull(D1) ? ropecv::wrap_mat(std::move(_owned1)) : D1,
                                Rcpp::Named("K2") = Rf_isNull(K2) ? ropecv::wrap_mat(std::move(_owned2)) : K2,
                                Rcpp::Named("D2") = Rf_isNull(D2) ? ropecv::wrap_mat(std::move(_owned3)) : D2,
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned4)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned5)) : T);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_stereoCalibrate__1(SEXP objectPoints, SEXP imagePoints1, SEXP imagePoints2, SEXP K1, SEXP D1, SEXP K2, SEXP D2, SEXP imageSize, int flags, SEXP criteria, SEXP R, SEXP T, SEXP rvecs, SEXP tvecs) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints1);
    ropecv::InArg _i2(imagePoints2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(K1) ? &_owned0 : ropecv::mat_ptr(K1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(D1) ? &_owned1 : ropecv::mat_ptr(D1);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(K2) ? &_owned2 : ropecv::mat_ptr(K2);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(D2) ? &_owned3 : ropecv::mat_ptr(D2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(R) ? &_owned4 : ropecv::mat_ptr(R);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(T) ? &_owned5 : ropecv::mat_ptr(T);
    std::vector<cv::Mat> _o6;
    std::vector<cv::Mat> _o7;
    double _rv = ::cv::fisheye::stereoCalibrate(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), cv::_InputOutputArray(*_p3), ropecv::as_size(imageSize), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(_o6), cv::_OutputArray(_o7), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("K1") = Rf_isNull(K1) ? ropecv::wrap_mat(std::move(_owned0)) : K1,
                                Rcpp::Named("D1") = Rf_isNull(D1) ? ropecv::wrap_mat(std::move(_owned1)) : D1,
                                Rcpp::Named("K2") = Rf_isNull(K2) ? ropecv::wrap_mat(std::move(_owned2)) : K2,
                                Rcpp::Named("D2") = Rf_isNull(D2) ? ropecv::wrap_mat(std::move(_owned3)) : D2,
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned4)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned5)) : T,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o6),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o7));
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_initCameraMatrix2D(SEXP objectPoints, SEXP imagePoints, SEXP imageSize, double aspectRatio) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _rv = ::cv::initCameraMatrix2D(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), aspectRatio);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("initCameraMatrix2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initCameraMatrix2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_registerCameras__0(SEXP objectPoints1, SEXP objectPoints2, SEXP imagePoints1, SEXP imagePoints2, SEXP cameraMatrix1, SEXP distCoeffs1, int cameraModel1, SEXP cameraMatrix2, SEXP distCoeffs2, int cameraModel2, SEXP R, SEXP T, int flags, SEXP criteria, SEXP E, SEXP F, SEXP perViewErrors) {
  try {
    ropecv::InArg _i0(objectPoints1);
    ropecv::InArg _i1(objectPoints2);
    ropecv::InArg _i2(imagePoints1);
    ropecv::InArg _i3(imagePoints2);
    ropecv::InArg _i4(cameraMatrix1);
    ropecv::InArg _i5(distCoeffs1);
    ropecv::InArg _i6(cameraMatrix2);
    ropecv::InArg _i7(distCoeffs2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R) ? &_owned0 : ropecv::mat_ptr(R);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(T) ? &_owned1 : ropecv::mat_ptr(T);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(E) ? &_owned2 : ropecv::mat_ptr(E);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(F) ? &_owned3 : ropecv::mat_ptr(F);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(perViewErrors) ? &_owned4 : ropecv::mat_ptr(perViewErrors);
    double _rv = ::cv::registerCameras(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), (cv::CameraModel)cameraModel1, _i6.ia(), _i7.ia(), (cv::CameraModel)cameraModel2, cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned0)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned1)) : T,
                                Rcpp::Named("E") = Rf_isNull(E) ? ropecv::wrap_mat(std::move(_owned2)) : E,
                                Rcpp::Named("F") = Rf_isNull(F) ? ropecv::wrap_mat(std::move(_owned3)) : F,
                                Rcpp::Named("perViewErrors") = Rf_isNull(perViewErrors) ? ropecv::wrap_mat(std::move(_owned4)) : perViewErrors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("registerCameras: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("registerCameras: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_registerCameras__1(SEXP objectPoints1, SEXP objectPoints2, SEXP imagePoints1, SEXP imagePoints2, SEXP cameraMatrix1, SEXP distCoeffs1, int cameraModel1, SEXP cameraMatrix2, SEXP distCoeffs2, int cameraModel2, SEXP R, SEXP T, int flags, SEXP criteria, SEXP E, SEXP F, SEXP rvecs, SEXP tvecs, SEXP perViewErrors) {
  try {
    ropecv::InArg _i0(objectPoints1);
    ropecv::InArg _i1(objectPoints2);
    ropecv::InArg _i2(imagePoints1);
    ropecv::InArg _i3(imagePoints2);
    ropecv::InArg _i4(cameraMatrix1);
    ropecv::InArg _i5(distCoeffs1);
    ropecv::InArg _i6(cameraMatrix2);
    ropecv::InArg _i7(distCoeffs2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R) ? &_owned0 : ropecv::mat_ptr(R);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(T) ? &_owned1 : ropecv::mat_ptr(T);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(E) ? &_owned2 : ropecv::mat_ptr(E);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(F) ? &_owned3 : ropecv::mat_ptr(F);
    std::vector<cv::Mat> _o4;
    std::vector<cv::Mat> _o5;
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(perViewErrors) ? &_owned6 : ropecv::mat_ptr(perViewErrors);
    double _rv = ::cv::registerCameras(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), (cv::CameraModel)cameraModel1, _i6.ia(), _i7.ia(), (cv::CameraModel)cameraModel2, cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(_o4), cv::_OutputArray(_o5), cv::_OutputArray(*_p6), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned0)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned1)) : T,
                                Rcpp::Named("E") = Rf_isNull(E) ? ropecv::wrap_mat(std::move(_owned2)) : E,
                                Rcpp::Named("F") = Rf_isNull(F) ? ropecv::wrap_mat(std::move(_owned3)) : F,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o4),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o5),
                                Rcpp::Named("perViewErrors") = Rf_isNull(perViewErrors) ? ropecv::wrap_mat(std::move(_owned6)) : perViewErrors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("registerCameras: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("registerCameras: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereoCalibrate__0(SEXP objectPoints, SEXP imagePoints1, SEXP imagePoints2, SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, SEXP imageSize, int flags, SEXP criteria, SEXP R, SEXP T, SEXP E, SEXP F) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints1);
    ropecv::InArg _i2(imagePoints2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix1) ? &_owned0 : ropecv::mat_ptr(cameraMatrix1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs1) ? &_owned1 : ropecv::mat_ptr(distCoeffs1);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(cameraMatrix2) ? &_owned2 : ropecv::mat_ptr(cameraMatrix2);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(distCoeffs2) ? &_owned3 : ropecv::mat_ptr(distCoeffs2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(R) ? &_owned4 : ropecv::mat_ptr(R);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(T) ? &_owned5 : ropecv::mat_ptr(T);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(E) ? &_owned6 : ropecv::mat_ptr(E);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(F) ? &_owned7 : ropecv::mat_ptr(F);
    double _rv = ::cv::stereoCalibrate(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), cv::_InputOutputArray(*_p3), ropecv::as_size(imageSize), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6), cv::_OutputArray(*_p7), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix1") = Rf_isNull(cameraMatrix1) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix1,
                                Rcpp::Named("distCoeffs1") = Rf_isNull(distCoeffs1) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs1,
                                Rcpp::Named("cameraMatrix2") = Rf_isNull(cameraMatrix2) ? ropecv::wrap_mat(std::move(_owned2)) : cameraMatrix2,
                                Rcpp::Named("distCoeffs2") = Rf_isNull(distCoeffs2) ? ropecv::wrap_mat(std::move(_owned3)) : distCoeffs2,
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned4)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned5)) : T,
                                Rcpp::Named("E") = Rf_isNull(E) ? ropecv::wrap_mat(std::move(_owned6)) : E,
                                Rcpp::Named("F") = Rf_isNull(F) ? ropecv::wrap_mat(std::move(_owned7)) : F);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereoCalibrate__1(SEXP objectPoints, SEXP imagePoints1, SEXP imagePoints2, SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, SEXP imageSize, SEXP R, SEXP T, int flags, SEXP criteria, SEXP E, SEXP F, SEXP perViewErrors) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints1);
    ropecv::InArg _i2(imagePoints2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix1) ? &_owned0 : ropecv::mat_ptr(cameraMatrix1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs1) ? &_owned1 : ropecv::mat_ptr(distCoeffs1);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(cameraMatrix2) ? &_owned2 : ropecv::mat_ptr(cameraMatrix2);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(distCoeffs2) ? &_owned3 : ropecv::mat_ptr(distCoeffs2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(R) ? &_owned4 : ropecv::mat_ptr(R);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(T) ? &_owned5 : ropecv::mat_ptr(T);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(E) ? &_owned6 : ropecv::mat_ptr(E);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(F) ? &_owned7 : ropecv::mat_ptr(F);
    cv::Mat _owned8;
    cv::Mat* _p8 = Rf_isNull(perViewErrors) ? &_owned8 : ropecv::mat_ptr(perViewErrors);
    double _rv = ::cv::stereoCalibrate(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), cv::_InputOutputArray(*_p3), ropecv::as_size(imageSize), cv::_InputOutputArray(*_p4), cv::_InputOutputArray(*_p5), cv::_OutputArray(*_p6), cv::_OutputArray(*_p7), cv::_OutputArray(*_p8), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix1") = Rf_isNull(cameraMatrix1) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix1,
                                Rcpp::Named("distCoeffs1") = Rf_isNull(distCoeffs1) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs1,
                                Rcpp::Named("cameraMatrix2") = Rf_isNull(cameraMatrix2) ? ropecv::wrap_mat(std::move(_owned2)) : cameraMatrix2,
                                Rcpp::Named("distCoeffs2") = Rf_isNull(distCoeffs2) ? ropecv::wrap_mat(std::move(_owned3)) : distCoeffs2,
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned4)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned5)) : T,
                                Rcpp::Named("E") = Rf_isNull(E) ? ropecv::wrap_mat(std::move(_owned6)) : E,
                                Rcpp::Named("F") = Rf_isNull(F) ? ropecv::wrap_mat(std::move(_owned7)) : F,
                                Rcpp::Named("perViewErrors") = Rf_isNull(perViewErrors) ? ropecv::wrap_mat(std::move(_owned8)) : perViewErrors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereoCalibrate__2(SEXP objectPoints, SEXP imagePoints1, SEXP imagePoints2, SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, SEXP imageSize, SEXP R, SEXP T, int flags, SEXP criteria, SEXP E, SEXP F, SEXP rvecs, SEXP tvecs, SEXP perViewErrors) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints1);
    ropecv::InArg _i2(imagePoints2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix1) ? &_owned0 : ropecv::mat_ptr(cameraMatrix1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(distCoeffs1) ? &_owned1 : ropecv::mat_ptr(distCoeffs1);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(cameraMatrix2) ? &_owned2 : ropecv::mat_ptr(cameraMatrix2);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(distCoeffs2) ? &_owned3 : ropecv::mat_ptr(distCoeffs2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(R) ? &_owned4 : ropecv::mat_ptr(R);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(T) ? &_owned5 : ropecv::mat_ptr(T);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(E) ? &_owned6 : ropecv::mat_ptr(E);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(F) ? &_owned7 : ropecv::mat_ptr(F);
    std::vector<cv::Mat> _o8;
    std::vector<cv::Mat> _o9;
    cv::Mat _owned10;
    cv::Mat* _p10 = Rf_isNull(perViewErrors) ? &_owned10 : ropecv::mat_ptr(perViewErrors);
    double _rv = ::cv::stereoCalibrate(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), cv::_InputOutputArray(*_p3), ropecv::as_size(imageSize), cv::_InputOutputArray(*_p4), cv::_InputOutputArray(*_p5), cv::_OutputArray(*_p6), cv::_OutputArray(*_p7), cv::_OutputArray(_o8), cv::_OutputArray(_o9), cv::_OutputArray(*_p10), flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("cameraMatrix1") = Rf_isNull(cameraMatrix1) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix1,
                                Rcpp::Named("distCoeffs1") = Rf_isNull(distCoeffs1) ? ropecv::wrap_mat(std::move(_owned1)) : distCoeffs1,
                                Rcpp::Named("cameraMatrix2") = Rf_isNull(cameraMatrix2) ? ropecv::wrap_mat(std::move(_owned2)) : cameraMatrix2,
                                Rcpp::Named("distCoeffs2") = Rf_isNull(distCoeffs2) ? ropecv::wrap_mat(std::move(_owned3)) : distCoeffs2,
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned4)) : R,
                                Rcpp::Named("T") = Rf_isNull(T) ? ropecv::wrap_mat(std::move(_owned5)) : T,
                                Rcpp::Named("E") = Rf_isNull(E) ? ropecv::wrap_mat(std::move(_owned6)) : E,
                                Rcpp::Named("F") = Rf_isNull(F) ? ropecv::wrap_mat(std::move(_owned7)) : F,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o8),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o9),
                                Rcpp::Named("perViewErrors") = Rf_isNull(perViewErrors) ? ropecv::wrap_mat(std::move(_owned10)) : perViewErrors);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  }
}
