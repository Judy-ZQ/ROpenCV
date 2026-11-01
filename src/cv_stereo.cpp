// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/stereo.hpp
#include "ropecv.h"
#include <opencv2/stereo.hpp>

// [[Rcpp::export]]
SEXP cv_filterSpeckles(SEXP img, double newVal, int maxSpeckleSize, double maxDiff, SEXP buf) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(buf) ? &_owned1 : ropecv::mat_ptr(buf);
    ::cv::filterSpeckles(cv::_InputOutputArray(*_p0), newVal, maxSpeckleSize, maxDiff, cv::_InputOutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("img") = Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img,
                                Rcpp::Named("buf") = Rf_isNull(buf) ? ropecv::wrap_mat(std::move(_owned1)) : buf);
  } catch (const cv::Exception& e) {
    Rcpp::stop("filterSpeckles: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filterSpeckles: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_stereoRectify(SEXP K1, SEXP D1, SEXP K2, SEXP D2, SEXP imageSize, SEXP R, SEXP tvec, int flags, SEXP newImageSize, double balance, double fov_scale, SEXP R1, SEXP R2, SEXP P1, SEXP P2, SEXP Q) {
  try {
    ropecv::InArg _i0(K1);
    ropecv::InArg _i1(D1);
    ropecv::InArg _i2(K2);
    ropecv::InArg _i3(D2);
    ropecv::InArg _i4(R);
    ropecv::InArg _i5(tvec);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R1) ? &_owned0 : ropecv::mat_ptr(R1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(R2) ? &_owned1 : ropecv::mat_ptr(R2);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(P1) ? &_owned2 : ropecv::mat_ptr(P1);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(P2) ? &_owned3 : ropecv::mat_ptr(P2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(Q) ? &_owned4 : ropecv::mat_ptr(Q);
    ::cv::fisheye::stereoRectify(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(imageSize), _i4.ia(), _i5.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), flags, ropecv::as_size(newImageSize), balance, fov_scale);
    return Rcpp::List::create(Rcpp::Named("R1") = Rf_isNull(R1) ? ropecv::wrap_mat(std::move(_owned0)) : R1,
                                Rcpp::Named("R2") = Rf_isNull(R2) ? ropecv::wrap_mat(std::move(_owned1)) : R2,
                                Rcpp::Named("P1") = Rf_isNull(P1) ? ropecv::wrap_mat(std::move(_owned2)) : P1,
                                Rcpp::Named("P2") = Rf_isNull(P2) ? ropecv::wrap_mat(std::move(_owned3)) : P2,
                                Rcpp::Named("Q") = Rf_isNull(Q) ? ropecv::wrap_mat(std::move(_owned4)) : Q);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoRectify: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoRectify: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getValidDisparityROI(SEXP roi1, SEXP roi2, int minDisparity, int numberOfDisparities, int blockSize) {
  try {
    cv::Rect _rv = ::cv::getValidDisparityROI(ropecv::as_rect(roi1), ropecv::as_rect(roi2), minDisparity, numberOfDisparities, blockSize);
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getValidDisparityROI: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getValidDisparityROI: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rectify3Collinear(SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, SEXP cameraMatrix3, SEXP distCoeffs3, SEXP imgpt1, SEXP imgpt3, SEXP imageSize, SEXP Rmat12, SEXP Tmat12, SEXP Rmat13, SEXP Tmat13, double alpha, SEXP newImgSize, int flags, SEXP Rmat1, SEXP Rmat2, SEXP Rmat3, SEXP Pmat1, SEXP Pmat2, SEXP Pmat3, SEXP Qmat) {
  try {
    ropecv::InArg _i0(cameraMatrix1);
    ropecv::InArg _i1(distCoeffs1);
    ropecv::InArg _i2(cameraMatrix2);
    ropecv::InArg _i3(distCoeffs2);
    ropecv::InArg _i4(cameraMatrix3);
    ropecv::InArg _i5(distCoeffs3);
    ropecv::InArg _i6(imgpt1);
    ropecv::InArg _i7(imgpt3);
    ropecv::InArg _i8(Rmat12);
    ropecv::InArg _i9(Tmat12);
    ropecv::InArg _i10(Rmat13);
    ropecv::InArg _i11(Tmat13);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(Rmat1) ? &_owned0 : ropecv::mat_ptr(Rmat1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(Rmat2) ? &_owned1 : ropecv::mat_ptr(Rmat2);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(Rmat3) ? &_owned2 : ropecv::mat_ptr(Rmat3);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(Pmat1) ? &_owned3 : ropecv::mat_ptr(Pmat1);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(Pmat2) ? &_owned4 : ropecv::mat_ptr(Pmat2);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(Pmat3) ? &_owned5 : ropecv::mat_ptr(Pmat3);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(Qmat) ? &_owned6 : ropecv::mat_ptr(Qmat);
    cv::Rect _o7;
    cv::Rect _o8;
    double _rv = ::cv::rectify3Collinear(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), _i6.ia(), _i7.ia(), ropecv::as_size(imageSize), _i8.ia(), _i9.ia(), _i10.ia(), _i11.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6), alpha, ropecv::as_size(newImgSize), &_o7, &_o8, flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("Rmat1") = Rf_isNull(Rmat1) ? ropecv::wrap_mat(std::move(_owned0)) : Rmat1,
                                Rcpp::Named("Rmat2") = Rf_isNull(Rmat2) ? ropecv::wrap_mat(std::move(_owned1)) : Rmat2,
                                Rcpp::Named("Rmat3") = Rf_isNull(Rmat3) ? ropecv::wrap_mat(std::move(_owned2)) : Rmat3,
                                Rcpp::Named("Pmat1") = Rf_isNull(Pmat1) ? ropecv::wrap_mat(std::move(_owned3)) : Pmat1,
                                Rcpp::Named("Pmat2") = Rf_isNull(Pmat2) ? ropecv::wrap_mat(std::move(_owned4)) : Pmat2,
                                Rcpp::Named("Pmat3") = Rf_isNull(Pmat3) ? ropecv::wrap_mat(std::move(_owned5)) : Pmat3,
                                Rcpp::Named("Qmat") = Rf_isNull(Qmat) ? ropecv::wrap_mat(std::move(_owned6)) : Qmat,
                                Rcpp::Named("roi1") = ropecv::wrap_rect(_o7),
                                Rcpp::Named("roi2") = ropecv::wrap_rect(_o8));
  } catch (const cv::Exception& e) {
    Rcpp::stop("rectify3Collinear: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rectify3Collinear: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_reprojectImageTo3D(SEXP disparity, SEXP Q, bool handleMissingValues, int ddepth, SEXP dst) {
  try {
    ropecv::InArg _i0(disparity);
    ropecv::InArg _i1(Q);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::reprojectImageTo3D(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), handleMissingValues, ddepth);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("reprojectImageTo3D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("reprojectImageTo3D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereoRectify(SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, SEXP imageSize, SEXP R, SEXP T, int flags, double alpha, SEXP newImageSize, SEXP R1, SEXP R2, SEXP P1, SEXP P2, SEXP Q) {
  try {
    ropecv::InArg _i0(cameraMatrix1);
    ropecv::InArg _i1(distCoeffs1);
    ropecv::InArg _i2(cameraMatrix2);
    ropecv::InArg _i3(distCoeffs2);
    ropecv::InArg _i4(R);
    ropecv::InArg _i5(T);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R1) ? &_owned0 : ropecv::mat_ptr(R1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(R2) ? &_owned1 : ropecv::mat_ptr(R2);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(P1) ? &_owned2 : ropecv::mat_ptr(P1);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(P2) ? &_owned3 : ropecv::mat_ptr(P2);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(Q) ? &_owned4 : ropecv::mat_ptr(Q);
    cv::Rect _o5;
    cv::Rect _o6;
    ::cv::stereoRectify(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(imageSize), _i4.ia(), _i5.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), flags, alpha, ropecv::as_size(newImageSize), &_o5, &_o6);
    return Rcpp::List::create(Rcpp::Named("R1") = Rf_isNull(R1) ? ropecv::wrap_mat(std::move(_owned0)) : R1,
                                Rcpp::Named("R2") = Rf_isNull(R2) ? ropecv::wrap_mat(std::move(_owned1)) : R2,
                                Rcpp::Named("P1") = Rf_isNull(P1) ? ropecv::wrap_mat(std::move(_owned2)) : P1,
                                Rcpp::Named("P2") = Rf_isNull(P2) ? ropecv::wrap_mat(std::move(_owned3)) : P2,
                                Rcpp::Named("Q") = Rf_isNull(Q) ? ropecv::wrap_mat(std::move(_owned4)) : Q,
                                Rcpp::Named("validPixROI1") = ropecv::wrap_rect(_o5),
                                Rcpp::Named("validPixROI2") = ropecv::wrap_rect(_o6));
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoRectify: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoRectify: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_stereoRectifyUncalibrated(SEXP points1, SEXP points2, SEXP F, SEXP imgSize, double threshold, SEXP H1, SEXP H2) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    ropecv::InArg _i2(F);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(H1) ? &_owned0 : ropecv::mat_ptr(H1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(H2) ? &_owned1 : ropecv::mat_ptr(H2);
    bool _rv = ::cv::stereoRectifyUncalibrated(_i0.ia(), _i1.ia(), _i2.ia(), ropecv::as_size(imgSize), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), threshold);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("H1") = Rf_isNull(H1) ? ropecv::wrap_mat(std::move(_owned0)) : H1,
                                Rcpp::Named("H2") = Rf_isNull(H2) ? ropecv::wrap_mat(std::move(_owned1)) : H2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("stereoRectifyUncalibrated: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("stereoRectifyUncalibrated: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_validateDisparity(SEXP disparity, SEXP cost, int minDisparity, int numberOfDisparities, int disp12MaxDisp) {
  try {
    ropecv::InArg _i0(cost);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(disparity) ? &_owned0 : ropecv::mat_ptr(disparity);
    ::cv::validateDisparity(cv::_InputOutputArray(*_p0), _i0.ia(), minDisparity, numberOfDisparities, disp12MaxDisp);
    return Rf_isNull(disparity) ? ropecv::wrap_mat(std::move(_owned0)) : disparity;
  } catch (const cv::Exception& e) {
    Rcpp::stop("validateDisparity: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("validateDisparity: %s", e.what());
  }
}
