// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/rapid.hpp
#include "ropecv.h"
#include <opencv2/rapid.hpp>

// [[Rcpp::export]]
SEXP cv_convertCorrespondencies(SEXP cols, SEXP srcLocations, SEXP pts3d, SEXP mask, SEXP pts2d) {
  try {
    ropecv::InArg _i0(cols);
    ropecv::InArg _i1(srcLocations);
    ropecv::InArg _i2(mask);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(pts2d) ? &_owned0 : ropecv::mat_ptr(pts2d);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(pts3d) ? &_owned1 : ropecv::mat_ptr(pts3d);
    ::cv::rapid::convertCorrespondencies(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_InputOutputArray(*_p1), _i2.ia());
    return Rcpp::List::create(Rcpp::Named("pts2d") = Rf_isNull(pts2d) ? ropecv::wrap_mat(std::move(_owned0)) : pts2d,
                                Rcpp::Named("pts3d") = Rf_isNull(pts3d) ? ropecv::wrap_mat(std::move(_owned1)) : pts3d);
  } catch (const cv::Exception& e) {
    Rcpp::stop("convertCorrespondencies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("convertCorrespondencies: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawCorrespondencies(SEXP bundle, SEXP cols, SEXP colors) {
  try {
    ropecv::InArg _i0(cols);
    ropecv::InArg _i1(colors);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(bundle) ? &_owned0 : ropecv::mat_ptr(bundle);
    ::cv::rapid::drawCorrespondencies(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia());
    return Rf_isNull(bundle) ? ropecv::wrap_mat(std::move(_owned0)) : bundle;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawCorrespondencies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawCorrespondencies: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawSearchLines(SEXP img, SEXP locations, SEXP color) {
  try {
    ropecv::InArg _i0(locations);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::rapid::drawSearchLines(cv::_InputOutputArray(*_p0), _i0.ia(), ropecv::as_scalar(color));
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawSearchLines: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawSearchLines: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawWireframe(SEXP img, SEXP pts2d, SEXP tris, SEXP color, int type, bool cullBackface) {
  try {
    ropecv::InArg _i0(pts2d);
    ropecv::InArg _i1(tris);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(img) ? &_owned0 : ropecv::mat_ptr(img);
    ::cv::rapid::drawWireframe(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia(), ropecv::as_scalar(color), type, cullBackface);
    return Rf_isNull(img) ? ropecv::wrap_mat(std::move(_owned0)) : img;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawWireframe: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawWireframe: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_extractControlPoints(int num, int len, SEXP pts3d, SEXP rvec, SEXP tvec, SEXP K, SEXP imsize, SEXP tris, SEXP ctl2d, SEXP ctl3d) {
  try {
    ropecv::InArg _i0(pts3d);
    ropecv::InArg _i1(rvec);
    ropecv::InArg _i2(tvec);
    ropecv::InArg _i3(K);
    ropecv::InArg _i4(tris);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(ctl2d) ? &_owned0 : ropecv::mat_ptr(ctl2d);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(ctl3d) ? &_owned1 : ropecv::mat_ptr(ctl3d);
    ::cv::rapid::extractControlPoints(num, len, _i0.ia(), _i1.ia(), _i2.ia(), _i3.ia(), ropecv::as_size(imsize), _i4.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("ctl2d") = Rf_isNull(ctl2d) ? ropecv::wrap_mat(std::move(_owned0)) : ctl2d,
                                Rcpp::Named("ctl3d") = Rf_isNull(ctl3d) ? ropecv::wrap_mat(std::move(_owned1)) : ctl3d);
  } catch (const cv::Exception& e) {
    Rcpp::stop("extractControlPoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("extractControlPoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_extractLineBundle(int len, SEXP ctl2d, SEXP img, SEXP bundle, SEXP srcLocations) {
  try {
    ropecv::InArg _i0(ctl2d);
    ropecv::InArg _i1(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(bundle) ? &_owned0 : ropecv::mat_ptr(bundle);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(srcLocations) ? &_owned1 : ropecv::mat_ptr(srcLocations);
    ::cv::rapid::extractLineBundle(len, _i0.ia(), _i1.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("bundle") = Rf_isNull(bundle) ? ropecv::wrap_mat(std::move(_owned0)) : bundle,
                                Rcpp::Named("srcLocations") = Rf_isNull(srcLocations) ? ropecv::wrap_mat(std::move(_owned1)) : srcLocations);
  } catch (const cv::Exception& e) {
    Rcpp::stop("extractLineBundle: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("extractLineBundle: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_findCorrespondencies(SEXP bundle, SEXP cols, SEXP response) {
  try {
    ropecv::InArg _i0(bundle);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(cols) ? &_owned0 : ropecv::mat_ptr(cols);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(response) ? &_owned1 : ropecv::mat_ptr(response);
    ::cv::rapid::findCorrespondencies(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("cols") = Rf_isNull(cols) ? ropecv::wrap_mat(std::move(_owned0)) : cols,
                                Rcpp::Named("response") = Rf_isNull(response) ? ropecv::wrap_mat(std::move(_owned1)) : response);
  } catch (const cv::Exception& e) {
    Rcpp::stop("findCorrespondencies: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("findCorrespondencies: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rapid(SEXP img, int num, int len, SEXP pts3d, SEXP tris, SEXP K, SEXP rvec, SEXP tvec) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(pts3d);
    ropecv::InArg _i2(tris);
    ropecv::InArg _i3(K);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    double _o2 = 0;
    double _rv = ::cv::rapid::rapid(_i0.ia(), num, len, _i1.ia(), _i2.ia(), _i3.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), &_o2);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec,
                                Rcpp::Named("rmsd") = Rf_ScalarReal(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("rapid: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("rapid: %s", e.what());
  }
}
