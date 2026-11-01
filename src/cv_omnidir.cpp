// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/omnidir.hpp
#include "ropecv.h"
#include <opencv2/ccalib/omnidir.hpp>

// [[Rcpp::export]]
SEXP cv_omnidir_calibrate(SEXP objectPoints, SEXP imagePoints, SEXP size, SEXP K, SEXP xi, SEXP D, int flags, SEXP criteria, SEXP rvecs, SEXP tvecs, SEXP idx) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(K) ? &_owned0 : ropecv::mat_ptr(K);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(xi) ? &_owned1 : ropecv::mat_ptr(xi);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(D) ? &_owned2 : ropecv::mat_ptr(D);
    std::vector<cv::Mat> _o3;
    std::vector<cv::Mat> _o4;
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(idx) ? &_owned5 : ropecv::mat_ptr(idx);
    double _rv = ::cv::omnidir::calibrate(_i0.ia(), _i1.ia(), ropecv::as_size(size), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), cv::_InputOutputArray(*_p2), cv::_OutputArray(_o3), cv::_OutputArray(_o4), flags, ropecv::as_termcriteria(criteria), cv::_OutputArray(*_p5));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("K") = Rf_isNull(K) ? ropecv::wrap_mat(std::move(_owned0)) : K,
                                Rcpp::Named("xi") = Rf_isNull(xi) ? ropecv::wrap_mat(std::move(_owned1)) : xi,
                                Rcpp::Named("D") = Rf_isNull(D) ? ropecv::wrap_mat(std::move(_owned2)) : D,
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o3),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o4),
                                Rcpp::Named("idx") = Rf_isNull(idx) ? ropecv::wrap_mat(std::move(_owned5)) : idx);
  } catch (const cv::Exception& e) {
    Rcpp::stop("calibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("calibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_omnidir_initUndistortRectifyMap(SEXP K, SEXP D, SEXP xi, SEXP R, SEXP P, SEXP size, int m1type, int flags, SEXP map1, SEXP map2) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(D);
    ropecv::InArg _i2(xi);
    ropecv::InArg _i3(R);
    ropecv::InArg _i4(P);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(map1) ? &_owned0 : ropecv::mat_ptr(map1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(map2) ? &_owned1 : ropecv::mat_ptr(map2);
    ::cv::omnidir::initUndistortRectifyMap(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), ropecv::as_size(size), m1type, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), flags);
    return Rcpp::List::create(Rcpp::Named("map1") = Rf_isNull(map1) ? ropecv::wrap_mat(std::move(_owned0)) : map1,
                                Rcpp::Named("map2") = Rf_isNull(map2) ? ropecv::wrap_mat(std::move(_owned1)) : map2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("initUndistortRectifyMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initUndistortRectifyMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_omnidir_projectPoints(SEXP objectPoints, SEXP rvec, SEXP tvec, SEXP K, double xi, SEXP D, SEXP imagePoints, SEXP jacobian) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(rvec);
    ropecv::InArg _i2(tvec);
    ropecv::InArg _i3(K);
    ropecv::InArg _i4(D);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(imagePoints) ? &_owned0 : ropecv::mat_ptr(imagePoints);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(jacobian) ? &_owned1 : ropecv::mat_ptr(jacobian);
    ::cv::omnidir::projectPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), xi, _i4.ia(), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("imagePoints") = Rf_isNull(imagePoints) ? ropecv::wrap_mat(std::move(_owned0)) : imagePoints,
                                Rcpp::Named("jacobian") = Rf_isNull(jacobian) ? ropecv::wrap_mat(std::move(_owned1)) : jacobian);
  } catch (const cv::Exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_omnidir_stereoCalibrate(SEXP imageSize1, SEXP imageSize2, SEXP K1, SEXP xi1, SEXP D1, SEXP K2, SEXP xi2, SEXP D2, int flags, SEXP criteria, SEXP objectPoints, SEXP imagePoints1, SEXP imagePoints2, SEXP rvec, SEXP tvec, SEXP rvecsL, SEXP tvecsL, SEXP idx) {
  try {
    std::vector<cv::Mat> _o0;
    if (!Rf_isNull(objectPoints)) _o0 = ropecv::as_mat_vector(objectPoints);
    std::vector<cv::Mat> _o1;
    if (!Rf_isNull(imagePoints1)) _o1 = ropecv::as_mat_vector(imagePoints1);
    std::vector<cv::Mat> _o2;
    if (!Rf_isNull(imagePoints2)) _o2 = ropecv::as_mat_vector(imagePoints2);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(K1) ? &_owned3 : ropecv::mat_ptr(K1);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(xi1) ? &_owned4 : ropecv::mat_ptr(xi1);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(D1) ? &_owned5 : ropecv::mat_ptr(D1);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(K2) ? &_owned6 : ropecv::mat_ptr(K2);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(xi2) ? &_owned7 : ropecv::mat_ptr(xi2);
    cv::Mat _owned8;
    cv::Mat* _p8 = Rf_isNull(D2) ? &_owned8 : ropecv::mat_ptr(D2);
    cv::Mat _owned9;
    cv::Mat* _p9 = Rf_isNull(rvec) ? &_owned9 : ropecv::mat_ptr(rvec);
    cv::Mat _owned10;
    cv::Mat* _p10 = Rf_isNull(tvec) ? &_owned10 : ropecv::mat_ptr(tvec);
    std::vector<cv::Mat> _o11;
    std::vector<cv::Mat> _o12;
    cv::Mat _owned13;
    cv::Mat* _p13 = Rf_isNull(idx) ? &_owned13 : ropecv::mat_ptr(idx);
    double _rv = ::cv::omnidir::stereoCalibrate(cv::_InputOutputArray(_o0), cv::_InputOutputArray(_o1), cv::_InputOutputArray(_o2), ropecv::as_size(imageSize1), ropecv::as_size(imageSize2), cv::_InputOutputArray(*_p3), cv::_InputOutputArray(*_p4), cv::_InputOutputArray(*_p5), cv::_InputOutputArray(*_p6), cv::_InputOutputArray(*_p7), cv::_InputOutputArray(*_p8), cv::_OutputArray(*_p9), cv::_OutputArray(*_p10), cv::_OutputArray(_o11), cv::_OutputArray(_o12), flags, ropecv::as_termcriteria(criteria), cv::_OutputArray(*_p13));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal(_rv),
                                Rcpp::Named("objectPoints") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("imagePoints1") = ropecv::wrap_mat_vector(_o1),
                                Rcpp::Named("imagePoints2") = ropecv::wrap_mat_vector(_o2),
                                Rcpp::Named("K1") = Rf_isNull(K1) ? ropecv::wrap_mat(std::move(_owned3)) : K1,
                                Rcpp::Named("xi1") = Rf_isNull(xi1) ? ropecv::wrap_mat(std::move(_owned4)) : xi1,
                                Rcpp::Named("D1") = Rf_isNull(D1) ? ropecv::wrap_mat(std::move(_owned5)) : D1,
                                Rcpp::Named("K2") = Rf_isNull(K2) ? ropecv::wrap_mat(std::move(_owned6)) : K2,
                                Rcpp::Named("xi2") = Rf_isNull(xi2) ? ropecv::wrap_mat(std::move(_owned7)) : xi2,
                                Rcpp::Named("D2") = Rf_isNull(D2) ? ropecv::wrap_mat(std::move(_owned8)) : D2,
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned9)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned10)) : tvec,
                                Rcpp::Named("rvecsL") = ropecv::wrap_mat_vector(_o11),
                                Rcpp::Named("tvecsL") = ropecv::wrap_mat_vector(_o12),
                                Rcpp::Named("idx") = Rf_isNull(idx) ? ropecv::wrap_mat(std::move(_owned13)) : idx);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoCalibrate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_omnidir_stereoRectify(SEXP R, SEXP T, SEXP R1, SEXP R2) {
  try {
    ropecv::InArg _i0(R);
    ropecv::InArg _i1(T);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R1) ? &_owned0 : ropecv::mat_ptr(R1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(R2) ? &_owned1 : ropecv::mat_ptr(R2);
    ::cv::omnidir::stereoRectify(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("R1") = Rf_isNull(R1) ? ropecv::wrap_mat(std::move(_owned0)) : R1,
                                Rcpp::Named("R2") = Rf_isNull(R2) ? ropecv::wrap_mat(std::move(_owned1)) : R2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoRectify: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoRectify: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_omnidir_undistortImage(SEXP distorted, SEXP K, SEXP D, SEXP xi, int flags, SEXP Knew, SEXP new_size, SEXP R, SEXP dst) {
  try {
    ropecv::InArg _i0(distorted);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(D);
    ropecv::InArg _i3(xi);
    ropecv::InArg _i4(Knew);
    ropecv::InArg _i5(R);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::omnidir::undistortImage(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), flags, _i4.ia(), ropecv::as_size(new_size), _i5.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistortImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistortImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_omnidir_undistortPoints(SEXP distorted, SEXP K, SEXP D, SEXP xi, SEXP R, SEXP dst) {
  try {
    ropecv::InArg _i0(distorted);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(D);
    ropecv::InArg _i3(xi);
    ropecv::InArg _i4(R);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::omnidir::undistortPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistortPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistortPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereoReconstruct(SEXP image1, SEXP image2, SEXP K1, SEXP D1, SEXP xi1, SEXP K2, SEXP D2, SEXP xi2, SEXP R, SEXP T, int flag, int numDisparities, int SADWindowSize, SEXP newSize, SEXP Knew, int pointType, SEXP disparity, SEXP image1Rec, SEXP image2Rec, SEXP pointCloud) {
  try {
    ropecv::InArg _i0(image1);
    ropecv::InArg _i1(image2);
    ropecv::InArg _i2(K1);
    ropecv::InArg _i3(D1);
    ropecv::InArg _i4(xi1);
    ropecv::InArg _i5(K2);
    ropecv::InArg _i6(D2);
    ropecv::InArg _i7(xi2);
    ropecv::InArg _i8(R);
    ropecv::InArg _i9(T);
    ropecv::InArg _i10(Knew);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(disparity) ? &_owned0 : ropecv::mat_ptr(disparity);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(image1Rec) ? &_owned1 : ropecv::mat_ptr(image1Rec);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(image2Rec) ? &_owned2 : ropecv::mat_ptr(image2Rec);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(pointCloud) ? &_owned3 : ropecv::mat_ptr(pointCloud);
    ::cv::omnidir::stereoReconstruct(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), _i6.ia(), _i7.ia(), _i8.ia(), _i9.ia(), flag, numDisparities, SADWindowSize, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), ropecv::as_size(newSize), _i10.ia(), cv::_OutputArray(*_p3), pointType);
    return Rcpp::List::create(Rcpp::Named("disparity") = Rf_isNull(disparity) ? ropecv::wrap_mat(std::move(_owned0)) : disparity,
                                Rcpp::Named("image1Rec") = Rf_isNull(image1Rec) ? ropecv::wrap_mat(std::move(_owned1)) : image1Rec,
                                Rcpp::Named("image2Rec") = Rf_isNull(image2Rec) ? ropecv::wrap_mat(std::move(_owned2)) : image2Rec,
                                Rcpp::Named("pointCloud") = Rf_isNull(pointCloud) ? ropecv::wrap_mat(std::move(_owned3)) : pointCloud);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoReconstruct: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoReconstruct: %s", e.what());
  }
}
