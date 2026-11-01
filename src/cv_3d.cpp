// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/3d.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/3d.hpp>

// [[Rcpp::export]]
SEXP cv_RQDecomp3x3(SEXP src, SEXP mtxR, SEXP mtxQ, SEXP Qx, SEXP Qy, SEXP Qz) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(mtxR) ? &_owned0 : ropecv::mat_ptr(mtxR);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(mtxQ) ? &_owned1 : ropecv::mat_ptr(mtxQ);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(Qx) ? &_owned2 : ropecv::mat_ptr(Qx);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(Qy) ? &_owned3 : ropecv::mat_ptr(Qy);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(Qz) ? &_owned4 : ropecv::mat_ptr(Qz);
    cv::Vec3d _rv = ::cv::RQDecomp3x3(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4));
    return Rcpp::List::create(Rcpp::Named("value") = Rcpp::NumericVector::create(_rv[0], _rv[1], _rv[2]),
                                Rcpp::Named("mtxR") = Rf_isNull(mtxR) ? ropecv::wrap_mat(std::move(_owned0)) : mtxR,
                                Rcpp::Named("mtxQ") = Rf_isNull(mtxQ) ? ropecv::wrap_mat(std::move(_owned1)) : mtxQ,
                                Rcpp::Named("Qx") = Rf_isNull(Qx) ? ropecv::wrap_mat(std::move(_owned2)) : Qx,
                                Rcpp::Named("Qy") = Rf_isNull(Qy) ? ropecv::wrap_mat(std::move(_owned3)) : Qy,
                                Rcpp::Named("Qz") = Rf_isNull(Qz) ? ropecv::wrap_mat(std::move(_owned4)) : Qz);
  } catch (const cv::Exception& e) {
    Rcpp::stop("RQDecomp3x3: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("RQDecomp3x3: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_Rodrigues(SEXP src, SEXP dst, SEXP jacobian) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(jacobian) ? &_owned1 : ropecv::mat_ptr(jacobian);
    ::cv::Rodrigues(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst,
                                Rcpp::Named("jacobian") = Rf_isNull(jacobian) ? ropecv::wrap_mat(std::move(_owned1)) : jacobian);
  } catch (const cv::Exception& e) {
    Rcpp::stop("Rodrigues: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("Rodrigues: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_composeRT(SEXP rvec1, SEXP tvec1, SEXP rvec2, SEXP tvec2, SEXP rvec3, SEXP tvec3, SEXP dr3dr1, SEXP dr3dt1, SEXP dr3dr2, SEXP dr3dt2, SEXP dt3dr1, SEXP dt3dt1, SEXP dt3dr2, SEXP dt3dt2) {
  try {
    ropecv::InArg _i0(rvec1);
    ropecv::InArg _i1(tvec1);
    ropecv::InArg _i2(rvec2);
    ropecv::InArg _i3(tvec2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec3) ? &_owned0 : ropecv::mat_ptr(rvec3);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec3) ? &_owned1 : ropecv::mat_ptr(tvec3);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(dr3dr1) ? &_owned2 : ropecv::mat_ptr(dr3dr1);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(dr3dt1) ? &_owned3 : ropecv::mat_ptr(dr3dt1);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(dr3dr2) ? &_owned4 : ropecv::mat_ptr(dr3dr2);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(dr3dt2) ? &_owned5 : ropecv::mat_ptr(dr3dt2);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(dt3dr1) ? &_owned6 : ropecv::mat_ptr(dt3dr1);
    cv::Mat _owned7;
    cv::Mat* _p7 = Rf_isNull(dt3dt1) ? &_owned7 : ropecv::mat_ptr(dt3dt1);
    cv::Mat _owned8;
    cv::Mat* _p8 = Rf_isNull(dt3dr2) ? &_owned8 : ropecv::mat_ptr(dt3dr2);
    cv::Mat _owned9;
    cv::Mat* _p9 = Rf_isNull(dt3dt2) ? &_owned9 : ropecv::mat_ptr(dt3dt2);
    ::cv::composeRT(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6), cv::_OutputArray(*_p7), cv::_OutputArray(*_p8), cv::_OutputArray(*_p9));
    return Rcpp::List::create(Rcpp::Named("rvec3") = Rf_isNull(rvec3) ? ropecv::wrap_mat(std::move(_owned0)) : rvec3,
                                Rcpp::Named("tvec3") = Rf_isNull(tvec3) ? ropecv::wrap_mat(std::move(_owned1)) : tvec3,
                                Rcpp::Named("dr3dr1") = Rf_isNull(dr3dr1) ? ropecv::wrap_mat(std::move(_owned2)) : dr3dr1,
                                Rcpp::Named("dr3dt1") = Rf_isNull(dr3dt1) ? ropecv::wrap_mat(std::move(_owned3)) : dr3dt1,
                                Rcpp::Named("dr3dr2") = Rf_isNull(dr3dr2) ? ropecv::wrap_mat(std::move(_owned4)) : dr3dr2,
                                Rcpp::Named("dr3dt2") = Rf_isNull(dr3dt2) ? ropecv::wrap_mat(std::move(_owned5)) : dr3dt2,
                                Rcpp::Named("dt3dr1") = Rf_isNull(dt3dr1) ? ropecv::wrap_mat(std::move(_owned6)) : dt3dr1,
                                Rcpp::Named("dt3dt1") = Rf_isNull(dt3dt1) ? ropecv::wrap_mat(std::move(_owned7)) : dt3dt1,
                                Rcpp::Named("dt3dr2") = Rf_isNull(dt3dr2) ? ropecv::wrap_mat(std::move(_owned8)) : dt3dr2,
                                Rcpp::Named("dt3dt2") = Rf_isNull(dt3dt2) ? ropecv::wrap_mat(std::move(_owned9)) : dt3dt2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("composeRT: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("composeRT: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_computeCorrespondEpilines(SEXP points, int whichImage, SEXP F, SEXP dst) {
  try {
    ropecv::InArg _i0(points);
    ropecv::InArg _i1(F);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::computeCorrespondEpilines(_i0.ia(), whichImage, _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeCorrespondEpilines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeCorrespondEpilines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convertPointsFromHomogeneous(SEXP src, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::convertPointsFromHomogeneous(_i0.ia(), cv::_OutputArray(*_p0), dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertPointsFromHomogeneous: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertPointsFromHomogeneous: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_convertPointsToHomogeneous(SEXP src, int dtype, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::convertPointsToHomogeneous(_i0.ia(), cv::_OutputArray(*_p0), dtype);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertPointsToHomogeneous: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertPointsToHomogeneous: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_correctMatches(SEXP F, SEXP points1, SEXP points2, SEXP newPoints1, SEXP newPoints2) {
  try {
    ropecv::InArg _i0(F);
    ropecv::InArg _i1(points1);
    ropecv::InArg _i2(points2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(newPoints1) ? &_owned0 : ropecv::mat_ptr(newPoints1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(newPoints2) ? &_owned1 : ropecv::mat_ptr(newPoints2);
    ::cv::correctMatches(_i0.ia(), _i1.ia(), _i2.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("newPoints1") = Rf_isNull(newPoints1) ? ropecv::wrap_mat(std::move(_owned0)) : newPoints1,
                                Rcpp::Named("newPoints2") = Rf_isNull(newPoints2) ? ropecv::wrap_mat(std::move(_owned1)) : newPoints2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("correctMatches: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("correctMatches: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_decomposeEssentialMat(SEXP E, SEXP R1, SEXP R2, SEXP t) {
  try {
    ropecv::InArg _i0(E);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R1) ? &_owned0 : ropecv::mat_ptr(R1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(R2) ? &_owned1 : ropecv::mat_ptr(R2);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(t) ? &_owned2 : ropecv::mat_ptr(t);
    ::cv::decomposeEssentialMat(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("R1") = Rf_isNull(R1) ? ropecv::wrap_mat(std::move(_owned0)) : R1,
                                Rcpp::Named("R2") = Rf_isNull(R2) ? ropecv::wrap_mat(std::move(_owned1)) : R2,
                                Rcpp::Named("t") = Rf_isNull(t) ? ropecv::wrap_mat(std::move(_owned2)) : t);
  } catch (const cv::Exception& e) {
    Rcpp::stop("decomposeEssentialMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decomposeEssentialMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_decomposeHomographyMat(SEXP H, SEXP K, SEXP rotations, SEXP translations, SEXP normals) {
  try {
    ropecv::InArg _i0(H);
    ropecv::InArg _i1(K);
    std::vector<cv::Mat> _o0;
    std::vector<cv::Mat> _o1;
    std::vector<cv::Mat> _o2;
    int _rv = ::cv::decomposeHomographyMat(_i0.ia(), _i1.ia(), cv::_OutputArray(_o0), cv::_OutputArray(_o1), cv::_OutputArray(_o2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("rotations") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("translations") = ropecv::wrap_mat_vector(_o1),
                                Rcpp::Named("normals") = ropecv::wrap_mat_vector(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("decomposeHomographyMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decomposeHomographyMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_decomposeProjectionMatrix(SEXP projMatrix, SEXP cameraMatrix, SEXP rotMatrix, SEXP transVect, SEXP rotMatrixX, SEXP rotMatrixY, SEXP rotMatrixZ, SEXP eulerAngles) {
  try {
    ropecv::InArg _i0(projMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix) ? &_owned0 : ropecv::mat_ptr(cameraMatrix);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(rotMatrix) ? &_owned1 : ropecv::mat_ptr(rotMatrix);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(transVect) ? &_owned2 : ropecv::mat_ptr(transVect);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(rotMatrixX) ? &_owned3 : ropecv::mat_ptr(rotMatrixX);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(rotMatrixY) ? &_owned4 : ropecv::mat_ptr(rotMatrixY);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(rotMatrixZ) ? &_owned5 : ropecv::mat_ptr(rotMatrixZ);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(eulerAngles) ? &_owned6 : ropecv::mat_ptr(eulerAngles);
    ::cv::decomposeProjectionMatrix(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6));
    return Rcpp::List::create(Rcpp::Named("cameraMatrix") = Rf_isNull(cameraMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix,
                                Rcpp::Named("rotMatrix") = Rf_isNull(rotMatrix) ? ropecv::wrap_mat(std::move(_owned1)) : rotMatrix,
                                Rcpp::Named("transVect") = Rf_isNull(transVect) ? ropecv::wrap_mat(std::move(_owned2)) : transVect,
                                Rcpp::Named("rotMatrixX") = Rf_isNull(rotMatrixX) ? ropecv::wrap_mat(std::move(_owned3)) : rotMatrixX,
                                Rcpp::Named("rotMatrixY") = Rf_isNull(rotMatrixY) ? ropecv::wrap_mat(std::move(_owned4)) : rotMatrixY,
                                Rcpp::Named("rotMatrixZ") = Rf_isNull(rotMatrixZ) ? ropecv::wrap_mat(std::move(_owned5)) : rotMatrixZ,
                                Rcpp::Named("eulerAngles") = Rf_isNull(eulerAngles) ? ropecv::wrap_mat(std::move(_owned6)) : eulerAngles);
  } catch (const cv::Exception& e) {
    Rcpp::stop("decomposeProjectionMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decomposeProjectionMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_distortPoints__0(SEXP undistorted, SEXP K, SEXP D, double alpha, SEXP dst) {
  try {
    ropecv::InArg _i0(undistorted);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(D);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fisheye::distortPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), alpha);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("distortPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("distortPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_distortPoints__1(SEXP undistorted, SEXP Kundistorted, SEXP K, SEXP D, double alpha, SEXP dst) {
  try {
    ropecv::InArg _i0(undistorted);
    ropecv::InArg _i1(Kundistorted);
    ropecv::InArg _i2(K);
    ropecv::InArg _i3(D);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fisheye::distortPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), alpha);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("distortPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("distortPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawFrameAxes(SEXP image, SEXP cameraMatrix, SEXP distCoeffs, SEXP rvec, SEXP tvec, double length, int thickness) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    ropecv::InArg _i1(distCoeffs);
    ropecv::InArg _i2(rvec);
    ropecv::InArg _i3(tvec);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::drawFrameAxes(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), (float)length, thickness);
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawFrameAxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawFrameAxes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateAffine2D__0(SEXP pts1, SEXP pts2, SEXP params, SEXP dst) {
  try {
    ropecv::InArg _i0(pts1);
    ropecv::InArg _i1(pts2);
    cv::UsacParams _s2 = ropecv::as_UsacParams(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::estimateAffine2D(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _s2);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("inliers"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateAffine2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateAffine2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateAffine2D__1(SEXP from, SEXP to, int method, double ransacReprojThreshold, int maxIters, double confidence, int refineIters, SEXP dst) {
  try {
    ropecv::InArg _i0(from);
    ropecv::InArg _i1(to);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::estimateAffine2D(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), method, ransacReprojThreshold, (size_t)maxIters, confidence, (size_t)refineIters);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("inliers"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateAffine2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateAffine2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateAffine3D__0(SEXP src, SEXP dst, bool force_rotation) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    double _o0 = 0;
    cv::Mat _rv = ::cv::estimateAffine3D(_i0.ia(), _i1.ia(), &_o0, force_rotation);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("scale"), Rf_ScalarReal(_o0));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateAffine3D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateAffine3D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateAffine3D__1(SEXP src, SEXP dst, double ransacThreshold, double confidence, SEXP out, SEXP inliers) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(out) ? &_owned0 : ropecv::mat_ptr(out);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(inliers) ? &_owned1 : ropecv::mat_ptr(inliers);
    int _rv = ::cv::estimateAffine3D(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), ransacThreshold, confidence);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("out") = Rf_isNull(out) ? ropecv::wrap_mat(std::move(_owned0)) : out,
                                Rcpp::Named("inliers") = Rf_isNull(inliers) ? ropecv::wrap_mat(std::move(_owned1)) : inliers);
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateAffine3D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateAffine3D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateAffinePartial2D(SEXP from, SEXP to, int method, double ransacReprojThreshold, int maxIters, double confidence, int refineIters, SEXP dst) {
  try {
    ropecv::InArg _i0(from);
    ropecv::InArg _i1(to);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::estimateAffinePartial2D(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), method, ransacReprojThreshold, (size_t)maxIters, confidence, (size_t)refineIters);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("inliers"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateAffinePartial2D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateAffinePartial2D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateNewCameraMatrixForUndistortRectify(SEXP K, SEXP D, SEXP image_size, SEXP R, double balance, SEXP new_size, double fov_scale, SEXP dst) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(D);
    ropecv::InArg _i2(R);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fisheye::estimateNewCameraMatrixForUndistortRectify(_i0.ia(), _i1.ia(), ropecv::as_size(image_size), _i2.ia(), cv::_OutputArray(*_p0), balance, ropecv::as_size(new_size), fov_scale);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateNewCameraMatrixForUndistortRectify: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateNewCameraMatrixForUndistortRectify: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_estimateTranslation3D(SEXP src, SEXP dst, double ransacThreshold, double confidence, SEXP out, SEXP inliers) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(dst);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(out) ? &_owned0 : ropecv::mat_ptr(out);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(inliers) ? &_owned1 : ropecv::mat_ptr(inliers);
    int _rv = ::cv::estimateTranslation3D(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), ransacThreshold, confidence);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("out") = Rf_isNull(out) ? ropecv::wrap_mat(std::move(_owned0)) : out,
                                Rcpp::Named("inliers") = Rf_isNull(inliers) ? ropecv::wrap_mat(std::move(_owned1)) : inliers);
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateTranslation3D: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateTranslation3D: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_filterHomographyDecompByVisibleRefpoints(SEXP rotations, SEXP normals, SEXP beforePoints, SEXP afterPoints, SEXP pointsMask, SEXP dst) {
  try {
    ropecv::InArg _i0(rotations);
    ropecv::InArg _i1(normals);
    ropecv::InArg _i2(beforePoints);
    ropecv::InArg _i3(afterPoints);
    ropecv::InArg _i4(pointsMask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::filterHomographyDecompByVisibleRefpoints(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), _i4.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("filterHomographyDecompByVisibleRefpoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("filterHomographyDecompByVisibleRefpoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findEssentialMat__0(SEXP points1, SEXP points2, SEXP cameraMatrix, int method, double prob, double threshold, int maxIters, SEXP dst) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    ropecv::InArg _i2(cameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findEssentialMat(_i0.ia(), _i1.ia(), _i2.ia(), method, prob, threshold, maxIters, cv::_OutputArray(*_p0));
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findEssentialMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findEssentialMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findEssentialMat__1(SEXP points1, SEXP points2, SEXP cameraMatrix1, SEXP cameraMatrix2, SEXP dist_coeff1, SEXP dist_coeff2, SEXP params, SEXP dst) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    ropecv::InArg _i2(cameraMatrix1);
    ropecv::InArg _i3(cameraMatrix2);
    ropecv::InArg _i4(dist_coeff1);
    ropecv::InArg _i5(dist_coeff2);
    cv::UsacParams _s6 = ropecv::as_UsacParams(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findEssentialMat(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), cv::_OutputArray(*_p0), _s6);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findEssentialMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findEssentialMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findEssentialMat__2(SEXP points1, SEXP points2, SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, int method, double prob, double threshold, SEXP dst) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    ropecv::InArg _i2(cameraMatrix1);
    ropecv::InArg _i3(distCoeffs1);
    ropecv::InArg _i4(cameraMatrix2);
    ropecv::InArg _i5(distCoeffs2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findEssentialMat(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), method, prob, threshold, cv::_OutputArray(*_p0));
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findEssentialMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findEssentialMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findFundamentalMat__0(SEXP points1, SEXP points2, SEXP params, SEXP dst) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    cv::UsacParams _s2 = ropecv::as_UsacParams(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findFundamentalMat(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _s2);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findFundamentalMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findFundamentalMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findFundamentalMat__1(SEXP points1, SEXP points2, int method, double ransacReprojThreshold, double confidence, SEXP dst) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findFundamentalMat(_i0.ia(), _i1.ia(), method, ransacReprojThreshold, confidence, cv::_OutputArray(*_p0));
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findFundamentalMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findFundamentalMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findFundamentalMat__2(SEXP points1, SEXP points2, int method, double ransacReprojThreshold, double confidence, int maxIters, SEXP dst) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findFundamentalMat(_i0.ia(), _i1.ia(), method, ransacReprojThreshold, confidence, maxIters, cv::_OutputArray(*_p0));
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findFundamentalMat: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findFundamentalMat: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findHomography__0(SEXP srcPoints, SEXP dstPoints, SEXP params, SEXP dst) {
  try {
    ropecv::InArg _i0(srcPoints);
    ropecv::InArg _i1(dstPoints);
    cv::UsacParams _s2 = ropecv::as_UsacParams(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findHomography(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), _s2);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findHomography: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findHomography: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findHomography__1(SEXP srcPoints, SEXP dstPoints, int method, double ransacReprojThreshold, int maxIters, double confidence, SEXP dst) {
  try {
    ropecv::InArg _i0(srcPoints);
    ropecv::InArg _i1(dstPoints);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::Mat _rv = ::cv::findHomography(_i0.ia(), _i1.ia(), method, ransacReprojThreshold, cv::_OutputArray(*_p0), maxIters, confidence);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("mask"), Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("findHomography: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findHomography: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_initUndistortRectifyMap(SEXP K, SEXP D, SEXP R, SEXP P, SEXP size, int m1type, SEXP map1, SEXP map2) {
  try {
    ropecv::InArg _i0(K);
    ropecv::InArg _i1(D);
    ropecv::InArg _i2(R);
    ropecv::InArg _i3(P);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(map1) ? &_owned0 : ropecv::mat_ptr(map1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(map2) ? &_owned1 : ropecv::mat_ptr(map2);
    ::cv::fisheye::initUndistortRectifyMap(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(size), m1type, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("map1") = Rf_isNull(map1) ? ropecv::wrap_mat(std::move(_owned0)) : map1,
                                Rcpp::Named("map2") = Rf_isNull(map2) ? ropecv::wrap_mat(std::move(_owned1)) : map2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("initUndistortRectifyMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initUndistortRectifyMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_projectPoints(SEXP objectPoints, SEXP rvec, SEXP tvec, SEXP K, SEXP D, double alpha, SEXP imagePoints, SEXP jacobian) {
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
    ::cv::fisheye::projectPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), alpha, cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("imagePoints") = Rf_isNull(imagePoints) ? ropecv::wrap_mat(std::move(_owned0)) : imagePoints,
                                Rcpp::Named("jacobian") = Rf_isNull(jacobian) ? ropecv::wrap_mat(std::move(_owned1)) : jacobian);
  } catch (const cv::Exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_solvePnP(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, bool useExtrinsicGuess, int flags, SEXP criteria, SEXP rvec, SEXP tvec) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    bool _rv = ::cv::fisheye::solvePnP(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), useExtrinsicGuess, flags, ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_undistortImage(SEXP distorted, SEXP K, SEXP D, SEXP Knew, SEXP new_size, SEXP dst) {
  try {
    ropecv::InArg _i0(distorted);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(D);
    ropecv::InArg _i3(Knew);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fisheye::undistortImage(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(new_size));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistortImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistortImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_fisheye_undistortPoints(SEXP distorted, SEXP K, SEXP D, SEXP R, SEXP P, SEXP criteria, SEXP dst) {
  try {
    ropecv::InArg _i0(distorted);
    ropecv::InArg _i1(K);
    ropecv::InArg _i2(D);
    ropecv::InArg _i3(R);
    ropecv::InArg _i4(P);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::fisheye::undistortPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), ropecv::as_termcriteria(criteria));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistortPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistortPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getDefaultNewCameraMatrix(SEXP cameraMatrix, SEXP imgsize, bool centerPrincipalPoint) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    cv::Mat _rv = ::cv::getDefaultNewCameraMatrix(_i0.ia(), ropecv::as_size(imgsize), centerPrincipalPoint);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDefaultNewCameraMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDefaultNewCameraMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getOptimalNewCameraMatrix(SEXP cameraMatrix, SEXP distCoeffs, SEXP imageSize, double alpha, SEXP newImgSize, bool centerPrincipalPoint) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    ropecv::InArg _i1(distCoeffs);
    cv::Rect _o0;
    cv::Mat _rv = ::cv::getOptimalNewCameraMatrix(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), alpha, ropecv::as_size(newImgSize), &_o0, centerPrincipalPoint);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("validPixROI"), ropecv::wrap_rect(_o0));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getOptimalNewCameraMatrix: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getOptimalNewCameraMatrix: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getUndistortRectangles(SEXP cameraMatrix, SEXP distCoeffs, SEXP R, SEXP newCameraMatrix, SEXP imgSize, SEXP inner, SEXP outer) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    ropecv::InArg _i1(distCoeffs);
    ropecv::InArg _i2(R);
    ropecv::InArg _i3(newCameraMatrix);
    cv::Rect2d _o0;
    if (!Rf_isNull(inner)) _o0 = ropecv::as_rect2d(inner);
    cv::Rect2d _o1;
    if (!Rf_isNull(outer)) _o1 = ropecv::as_rect2d(outer);
    ::cv::getUndistortRectangles(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(imgSize), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("inner") = ropecv::wrap_rect2d(_o0),
                                Rcpp::Named("outer") = ropecv::wrap_rect2d(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUndistortRectangles: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUndistortRectangles: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_initInverseRectificationMap(SEXP cameraMatrix, SEXP distCoeffs, SEXP R, SEXP newCameraMatrix, SEXP size, int m1type, SEXP map1, SEXP map2) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    ropecv::InArg _i1(distCoeffs);
    ropecv::InArg _i2(R);
    ropecv::InArg _i3(newCameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(map1) ? &_owned0 : ropecv::mat_ptr(map1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(map2) ? &_owned1 : ropecv::mat_ptr(map2);
    ::cv::initInverseRectificationMap(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(size), m1type, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("map1") = Rf_isNull(map1) ? ropecv::wrap_mat(std::move(_owned0)) : map1,
                                Rcpp::Named("map2") = Rf_isNull(map2) ? ropecv::wrap_mat(std::move(_owned1)) : map2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("initInverseRectificationMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initInverseRectificationMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_initUndistortRectifyMap(SEXP cameraMatrix, SEXP distCoeffs, SEXP R, SEXP newCameraMatrix, SEXP size, int m1type, SEXP map1, SEXP map2) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    ropecv::InArg _i1(distCoeffs);
    ropecv::InArg _i2(R);
    ropecv::InArg _i3(newCameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(map1) ? &_owned0 : ropecv::mat_ptr(map1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(map2) ? &_owned1 : ropecv::mat_ptr(map2);
    ::cv::initUndistortRectifyMap(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(size), m1type, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("map1") = Rf_isNull(map1) ? ropecv::wrap_mat(std::move(_owned0)) : map1,
                                Rcpp::Named("map2") = Rf_isNull(map2) ? ropecv::wrap_mat(std::move(_owned1)) : map2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("initUndistortRectifyMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initUndistortRectifyMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_initWideAngleProjMap(SEXP cameraMatrix, SEXP distCoeffs, SEXP imageSize, int destImageWidth, int m1type, int projType, double alpha, SEXP map1, SEXP map2) {
  try {
    ropecv::InArg _i0(cameraMatrix);
    ropecv::InArg _i1(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(map1) ? &_owned0 : ropecv::mat_ptr(map1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(map2) ? &_owned1 : ropecv::mat_ptr(map2);
    double _rv = ::cv::initWideAngleProjMap(_i0.ia(), _i1.ia(), ropecv::as_size(imageSize), destImageWidth, m1type, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), (cv::UndistortTypes)projType, alpha);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("map1") = Rf_isNull(map1) ? ropecv::wrap_mat(std::move(_owned0)) : map1,
                                Rcpp::Named("map2") = Rf_isNull(map2) ? ropecv::wrap_mat(std::move(_owned1)) : map2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("initWideAngleProjMap: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("initWideAngleProjMap: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadMesh(std::string filename, SEXP vertices, SEXP indices, SEXP normals, SEXP colors, SEXP texCoords) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(vertices) ? &_owned0 : ropecv::mat_ptr(vertices);
    std::vector<cv::Mat> _o1;
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(normals) ? &_owned2 : ropecv::mat_ptr(normals);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(colors) ? &_owned3 : ropecv::mat_ptr(colors);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(texCoords) ? &_owned4 : ropecv::mat_ptr(texCoords);
    ::cv::loadMesh(filename, cv::_OutputArray(*_p0), cv::_OutputArray(_o1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4));
    return Rcpp::List::create(Rcpp::Named("vertices") = Rf_isNull(vertices) ? ropecv::wrap_mat(std::move(_owned0)) : vertices,
                                Rcpp::Named("indices") = ropecv::wrap_mat_vector(_o1),
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned2)) : normals,
                                Rcpp::Named("colors") = Rf_isNull(colors) ? ropecv::wrap_mat(std::move(_owned3)) : colors,
                                Rcpp::Named("texCoords") = Rf_isNull(texCoords) ? ropecv::wrap_mat(std::move(_owned4)) : texCoords);
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadMesh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadMesh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadPointCloud(std::string filename, SEXP vertices, SEXP normals, SEXP rgb) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(vertices) ? &_owned0 : ropecv::mat_ptr(vertices);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(normals) ? &_owned1 : ropecv::mat_ptr(normals);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(rgb) ? &_owned2 : ropecv::mat_ptr(rgb);
    ::cv::loadPointCloud(filename, cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("vertices") = Rf_isNull(vertices) ? ropecv::wrap_mat(std::move(_owned0)) : vertices,
                                Rcpp::Named("normals") = Rf_isNull(normals) ? ropecv::wrap_mat(std::move(_owned1)) : normals,
                                Rcpp::Named("rgb") = Rf_isNull(rgb) ? ropecv::wrap_mat(std::move(_owned2)) : rgb);
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadPointCloud: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadPointCloud: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_matMulDeriv(SEXP A, SEXP B, SEXP dABdA, SEXP dABdB) {
  try {
    ropecv::InArg _i0(A);
    ropecv::InArg _i1(B);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dABdA) ? &_owned0 : ropecv::mat_ptr(dABdA);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dABdB) ? &_owned1 : ropecv::mat_ptr(dABdB);
    ::cv::matMulDeriv(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("dABdA") = Rf_isNull(dABdA) ? ropecv::wrap_mat(std::move(_owned0)) : dABdA,
                                Rcpp::Named("dABdB") = Rf_isNull(dABdB) ? ropecv::wrap_mat(std::move(_owned1)) : dABdB);
  } catch (const cv::Exception& e) {
    Rcpp::stop("matMulDeriv: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("matMulDeriv: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_projectPoints__0(SEXP objectPoints, SEXP rvec, SEXP tvec, SEXP cameraMatrix, SEXP distCoeffs, double aspectRatio, SEXP imagePoints, SEXP jacobian) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(rvec);
    ropecv::InArg _i2(tvec);
    ropecv::InArg _i3(cameraMatrix);
    ropecv::InArg _i4(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(imagePoints) ? &_owned0 : ropecv::mat_ptr(imagePoints);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(jacobian) ? &_owned1 : ropecv::mat_ptr(jacobian);
    ::cv::projectPoints(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), aspectRatio);
    return Rcpp::List::create(Rcpp::Named("imagePoints") = Rf_isNull(imagePoints) ? ropecv::wrap_mat(std::move(_owned0)) : imagePoints,
                                Rcpp::Named("jacobian") = Rf_isNull(jacobian) ? ropecv::wrap_mat(std::move(_owned1)) : jacobian);
  } catch (const cv::Exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_projectPoints__1(SEXP objectPoints, SEXP rvec, SEXP tvec, SEXP cameraMatrix, SEXP distCoeffs, double aspectRatio, SEXP imagePoints, SEXP dpdr, SEXP dpdt, SEXP dpdf, SEXP dpdc, SEXP dpdk, SEXP dpdo) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(rvec);
    ropecv::InArg _i2(tvec);
    ropecv::InArg _i3(cameraMatrix);
    ropecv::InArg _i4(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(imagePoints) ? &_owned0 : ropecv::mat_ptr(imagePoints);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dpdr) ? &_owned1 : ropecv::mat_ptr(dpdr);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(dpdt) ? &_owned2 : ropecv::mat_ptr(dpdt);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(dpdf) ? &_owned3 : ropecv::mat_ptr(dpdf);
    cv::Mat _owned4;
    cv::Mat* _p4 = Rf_isNull(dpdc) ? &_owned4 : ropecv::mat_ptr(dpdc);
    cv::Mat _owned5;
    cv::Mat* _p5 = Rf_isNull(dpdk) ? &_owned5 : ropecv::mat_ptr(dpdk);
    cv::Mat _owned6;
    cv::Mat* _p6 = Rf_isNull(dpdo) ? &_owned6 : ropecv::mat_ptr(dpdo);
    ::cv::projectPoints(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), cv::_OutputArray(*_p4), cv::_OutputArray(*_p5), cv::_OutputArray(*_p6), aspectRatio);
    return Rcpp::List::create(Rcpp::Named("imagePoints") = Rf_isNull(imagePoints) ? ropecv::wrap_mat(std::move(_owned0)) : imagePoints,
                                Rcpp::Named("dpdr") = Rf_isNull(dpdr) ? ropecv::wrap_mat(std::move(_owned1)) : dpdr,
                                Rcpp::Named("dpdt") = Rf_isNull(dpdt) ? ropecv::wrap_mat(std::move(_owned2)) : dpdt,
                                Rcpp::Named("dpdf") = Rf_isNull(dpdf) ? ropecv::wrap_mat(std::move(_owned3)) : dpdf,
                                Rcpp::Named("dpdc") = Rf_isNull(dpdc) ? ropecv::wrap_mat(std::move(_owned4)) : dpdc,
                                Rcpp::Named("dpdk") = Rf_isNull(dpdk) ? ropecv::wrap_mat(std::move(_owned5)) : dpdk,
                                Rcpp::Named("dpdo") = Rf_isNull(dpdo) ? ropecv::wrap_mat(std::move(_owned6)) : dpdo);
  } catch (const cv::Exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("projectPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_recoverPose__0(SEXP E, SEXP points1, SEXP points2, SEXP cameraMatrix, SEXP mask, SEXP R, SEXP t) {
  try {
    ropecv::InArg _i0(E);
    ropecv::InArg _i1(points1);
    ropecv::InArg _i2(points2);
    ropecv::InArg _i3(cameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R) ? &_owned0 : ropecv::mat_ptr(R);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(t) ? &_owned1 : ropecv::mat_ptr(t);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(mask) ? &_owned2 : ropecv::mat_ptr(mask);
    int _rv = ::cv::recoverPose(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_InputOutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned0)) : R,
                                Rcpp::Named("t") = Rf_isNull(t) ? ropecv::wrap_mat(std::move(_owned1)) : t,
                                Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned2)) : mask);
  } catch (const cv::Exception& e) {
    Rcpp::stop("recoverPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("recoverPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_recoverPose__1(SEXP E, SEXP points1, SEXP points2, SEXP cameraMatrix, double distanceThresh, SEXP mask, SEXP R, SEXP t, SEXP triangulatedPoints) {
  try {
    ropecv::InArg _i0(E);
    ropecv::InArg _i1(points1);
    ropecv::InArg _i2(points2);
    ropecv::InArg _i3(cameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(R) ? &_owned0 : ropecv::mat_ptr(R);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(t) ? &_owned1 : ropecv::mat_ptr(t);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(mask) ? &_owned2 : ropecv::mat_ptr(mask);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(triangulatedPoints) ? &_owned3 : ropecv::mat_ptr(triangulatedPoints);
    int _rv = ::cv::recoverPose(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), distanceThresh, cv::_InputOutputArray(*_p2), cv::_OutputArray(*_p3));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned0)) : R,
                                Rcpp::Named("t") = Rf_isNull(t) ? ropecv::wrap_mat(std::move(_owned1)) : t,
                                Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned2)) : mask,
                                Rcpp::Named("triangulatedPoints") = Rf_isNull(triangulatedPoints) ? ropecv::wrap_mat(std::move(_owned3)) : triangulatedPoints);
  } catch (const cv::Exception& e) {
    Rcpp::stop("recoverPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("recoverPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_recoverPose__2(SEXP points1, SEXP points2, SEXP cameraMatrix1, SEXP distCoeffs1, SEXP cameraMatrix2, SEXP distCoeffs2, int method, double prob, double threshold, SEXP mask, SEXP E, SEXP R, SEXP t) {
  try {
    ropecv::InArg _i0(points1);
    ropecv::InArg _i1(points2);
    ropecv::InArg _i2(cameraMatrix1);
    ropecv::InArg _i3(distCoeffs1);
    ropecv::InArg _i4(cameraMatrix2);
    ropecv::InArg _i5(distCoeffs2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(E) ? &_owned0 : ropecv::mat_ptr(E);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(R) ? &_owned1 : ropecv::mat_ptr(R);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(t) ? &_owned2 : ropecv::mat_ptr(t);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(mask) ? &_owned3 : ropecv::mat_ptr(mask);
    int _rv = ::cv::recoverPose(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), _i5.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), method, prob, threshold, cv::_InputOutputArray(*_p3));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("E") = Rf_isNull(E) ? ropecv::wrap_mat(std::move(_owned0)) : E,
                                Rcpp::Named("R") = Rf_isNull(R) ? ropecv::wrap_mat(std::move(_owned1)) : R,
                                Rcpp::Named("t") = Rf_isNull(t) ? ropecv::wrap_mat(std::move(_owned2)) : t,
                                Rcpp::Named("mask") = Rf_isNull(mask) ? ropecv::wrap_mat(std::move(_owned3)) : mask);
  } catch (const cv::Exception& e) {
    Rcpp::stop("recoverPose: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("recoverPose: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_sampsonDistance(SEXP pt1, SEXP pt2, SEXP F) {
  try {
    ropecv::InArg _i0(pt1);
    ropecv::InArg _i1(pt2);
    ropecv::InArg _i2(F);
    double _rv = ::cv::sampsonDistance(_i0.ia(), _i1.ia(), _i2.ia());
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("sampsonDistance: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("sampsonDistance: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_saveMesh(std::string filename, SEXP vertices, SEXP indices, SEXP normals, SEXP colors, SEXP texCoords) {
  try {
    ropecv::InArg _i0(vertices);
    ropecv::InArg _i1(indices);
    ropecv::InArg _i2(normals);
    ropecv::InArg _i3(colors);
    ropecv::InArg _i4(texCoords);
    ::cv::saveMesh(filename, _i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("saveMesh: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("saveMesh: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_savePointCloud(std::string filename, SEXP vertices, SEXP normals, SEXP rgb) {
  try {
    ropecv::InArg _i0(vertices);
    ropecv::InArg _i1(normals);
    ropecv::InArg _i2(rgb);
    ::cv::savePointCloud(filename, _i0.ia(), _i1.ia(), _i2.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("savePointCloud: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("savePointCloud: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solveP3P(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, int flags, SEXP rvecs, SEXP tvecs) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    std::vector<cv::Mat> _o0;
    std::vector<cv::Mat> _o1;
    int _rv = ::cv::solveP3P(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(_o0), cv::_OutputArray(_o1), flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("solveP3P: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solveP3P: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePnP(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, bool useExtrinsicGuess, int flags, SEXP rvec, SEXP tvec) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    bool _rv = ::cv::solvePnP(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), useExtrinsicGuess, flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnP: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnP: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePnPGeneric(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, bool useExtrinsicGuess, int flags, SEXP rvec, SEXP tvec, SEXP rvecs, SEXP tvecs, SEXP reprojectionError) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    ropecv::InArg _i4(rvec);
    ropecv::InArg _i5(tvec);
    std::vector<cv::Mat> _o0;
    std::vector<cv::Mat> _o1;
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(reprojectionError) ? &_owned2 : ropecv::mat_ptr(reprojectionError);
    int _rv = ::cv::solvePnPGeneric(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(_o0), cv::_OutputArray(_o1), useExtrinsicGuess, flags, _i4.ia(), _i5.ia(), cv::_OutputArray(*_p2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarInteger(_rv),
                                Rcpp::Named("rvecs") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("tvecs") = ropecv::wrap_mat_vector(_o1),
                                Rcpp::Named("reprojectionError") = Rf_isNull(reprojectionError) ? ropecv::wrap_mat(std::move(_owned2)) : reprojectionError);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnPGeneric: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnPGeneric: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePnPRansac__0(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, SEXP params, SEXP rvec, SEXP tvec, SEXP inliers) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(distCoeffs);
    cv::UsacParams _s3 = ropecv::as_UsacParams(params);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cameraMatrix) ? &_owned0 : ropecv::mat_ptr(cameraMatrix);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(rvec) ? &_owned1 : ropecv::mat_ptr(rvec);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(tvec) ? &_owned2 : ropecv::mat_ptr(tvec);
    cv::Mat _owned3;
    cv::Mat* _p3 = Rf_isNull(inliers) ? &_owned3 : ropecv::mat_ptr(inliers);
    bool _rv = ::cv::solvePnPRansac(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), _i2.ia(), cv::_OutputArray(*_p1), cv::_OutputArray(*_p2), cv::_OutputArray(*_p3), _s3);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("cameraMatrix") = Rf_isNull(cameraMatrix) ? ropecv::wrap_mat(std::move(_owned0)) : cameraMatrix,
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned1)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned2)) : tvec,
                                Rcpp::Named("inliers") = Rf_isNull(inliers) ? ropecv::wrap_mat(std::move(_owned3)) : inliers);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnPRansac: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnPRansac: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePnPRansac__1(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, bool useExtrinsicGuess, int iterationsCount, double reprojectionError, double confidence, int flags, SEXP rvec, SEXP tvec, SEXP inliers) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    cv::Mat _owned2;
    cv::Mat* _p2 = Rf_isNull(inliers) ? &_owned2 : ropecv::mat_ptr(inliers);
    bool _rv = ::cv::solvePnPRansac(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1), useExtrinsicGuess, iterationsCount, (float)reprojectionError, confidence, cv::_OutputArray(*_p2), flags);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec,
                                Rcpp::Named("inliers") = Rf_isNull(inliers) ? ropecv::wrap_mat(std::move(_owned2)) : inliers);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnPRansac: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnPRansac: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePnPRefineLM(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, SEXP rvec, SEXP tvec, SEXP criteria) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    ::cv::solvePnPRefineLM(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), ropecv::as_termcriteria(criteria));
    return Rcpp::List::create(Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnPRefineLM: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnPRefineLM: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_solvePnPRefineVVS(SEXP objectPoints, SEXP imagePoints, SEXP cameraMatrix, SEXP distCoeffs, SEXP rvec, SEXP tvec, SEXP criteria, double VVSlambda) {
  try {
    ropecv::InArg _i0(objectPoints);
    ropecv::InArg _i1(imagePoints);
    ropecv::InArg _i2(cameraMatrix);
    ropecv::InArg _i3(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    ::cv::solvePnPRefineVVS(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), ropecv::as_termcriteria(criteria), VVSlambda);
    return Rcpp::List::create(Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec);
  } catch (const cv::Exception& e) {
    Rcpp::stop("solvePnPRefineVVS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("solvePnPRefineVVS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_triangleRasterize(SEXP vertices, SEXP indices, SEXP colors, SEXP colorBuf, SEXP depthBuf, SEXP world2cam, double fovY, double zNear, double zFar, SEXP settings) {
  try {
    ropecv::InArg _i0(vertices);
    ropecv::InArg _i1(indices);
    ropecv::InArg _i2(colors);
    ropecv::InArg _i3(world2cam);
    cv::TriangleRasterizeSettings _s4 = Rf_isNull(settings) ? cv::TriangleRasterizeSettings() : *ropecv::obj_as<cv::TriangleRasterizeSettings>(settings);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(colorBuf) ? &_owned0 : ropecv::mat_ptr(colorBuf);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(depthBuf) ? &_owned1 : ropecv::mat_ptr(depthBuf);
    ::cv::triangleRasterize(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), _i3.ia(), fovY, zNear, zFar, _s4);
    return Rcpp::List::create(Rcpp::Named("colorBuf") = Rf_isNull(colorBuf) ? ropecv::wrap_mat(std::move(_owned0)) : colorBuf,
                                Rcpp::Named("depthBuf") = Rf_isNull(depthBuf) ? ropecv::wrap_mat(std::move(_owned1)) : depthBuf);
  } catch (const cv::Exception& e) {
    Rcpp::stop("triangleRasterize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("triangleRasterize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_triangleRasterizeColor(SEXP vertices, SEXP indices, SEXP colors, SEXP colorBuf, SEXP world2cam, double fovY, double zNear, double zFar, SEXP settings) {
  try {
    ropecv::InArg _i0(vertices);
    ropecv::InArg _i1(indices);
    ropecv::InArg _i2(colors);
    ropecv::InArg _i3(world2cam);
    cv::TriangleRasterizeSettings _s4 = Rf_isNull(settings) ? cv::TriangleRasterizeSettings() : *ropecv::obj_as<cv::TriangleRasterizeSettings>(settings);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(colorBuf) ? &_owned0 : ropecv::mat_ptr(colorBuf);
    ::cv::triangleRasterizeColor(_i0.ia(), _i1.ia(), _i2.ia(), cv::_InputOutputArray(*_p0), _i3.ia(), fovY, zNear, zFar, _s4);
    return Rf_isNull(colorBuf) ? ropecv::wrap_mat(std::move(_owned0)) : colorBuf;
  } catch (const cv::Exception& e) {
    Rcpp::stop("triangleRasterizeColor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("triangleRasterizeColor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_triangleRasterizeDepth(SEXP vertices, SEXP indices, SEXP depthBuf, SEXP world2cam, double fovY, double zNear, double zFar, SEXP settings) {
  try {
    ropecv::InArg _i0(vertices);
    ropecv::InArg _i1(indices);
    ropecv::InArg _i2(world2cam);
    cv::TriangleRasterizeSettings _s3 = Rf_isNull(settings) ? cv::TriangleRasterizeSettings() : *ropecv::obj_as<cv::TriangleRasterizeSettings>(settings);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(depthBuf) ? &_owned0 : ropecv::mat_ptr(depthBuf);
    ::cv::triangleRasterizeDepth(_i0.ia(), _i1.ia(), cv::_InputOutputArray(*_p0), _i2.ia(), fovY, zNear, zFar, _s3);
    return Rf_isNull(depthBuf) ? ropecv::wrap_mat(std::move(_owned0)) : depthBuf;
  } catch (const cv::Exception& e) {
    Rcpp::stop("triangleRasterizeDepth: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("triangleRasterizeDepth: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_triangulatePoints(SEXP projMatr1, SEXP projMatr2, SEXP projPoints1, SEXP projPoints2, SEXP dst) {
  try {
    ropecv::InArg _i0(projMatr1);
    ropecv::InArg _i1(projMatr2);
    ropecv::InArg _i2(projPoints1);
    ropecv::InArg _i3(projPoints2);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::triangulatePoints(_i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("triangulatePoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("triangulatePoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_undistort(SEXP src, SEXP cameraMatrix, SEXP distCoeffs, SEXP newCameraMatrix, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(cameraMatrix);
    ropecv::InArg _i2(distCoeffs);
    ropecv::InArg _i3(newCameraMatrix);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::undistort(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia());
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistort: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistort: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_undistortImagePoints(SEXP src, SEXP cameraMatrix, SEXP distCoeffs, SEXP criteria, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(cameraMatrix);
    ropecv::InArg _i2(distCoeffs);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::undistortImagePoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), ropecv::as_termcriteria(criteria));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistortImagePoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistortImagePoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_undistortPoints(SEXP src, SEXP cameraMatrix, SEXP distCoeffs, SEXP R, SEXP P, SEXP criteria, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(cameraMatrix);
    ropecv::InArg _i2(distCoeffs);
    ropecv::InArg _i3(R);
    ropecv::InArg _i4(P);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::undistortPoints(_i0.ia(), cv::_OutputArray(*_p0), _i1.ia(), _i2.ia(), _i3.ia(), _i4.ia(), ropecv::as_termcriteria(criteria));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("undistortPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("undistortPoints: %s", e.what());
  }
}
