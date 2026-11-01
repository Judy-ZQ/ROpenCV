// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/rapid.hpp>

// [[Rcpp::export]]
SEXP cv_rapid_GOSTracker_GOSTracker_create__0(SEXP pts3d, SEXP tris, int histBins, int sobelThesh) {
  try {
    ropecv::InArg _i0(pts3d);
    ropecv::InArg _i1(tris);
    cv::Ptr<cv::rapid::OLSTracker> _rv = cv::rapid::GOSTracker::create(_i0.ia(), _i1.ia(), histBins, (uchar)sobelThesh);
    return ropecv::wrap_obj(_rv, "cvOLSTracker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rapid_OLSTracker_OLSTracker_create__0(SEXP pts3d, SEXP tris, int histBins, int sobelThesh) {
  try {
    ropecv::InArg _i0(pts3d);
    ropecv::InArg _i1(tris);
    cv::Ptr<cv::rapid::OLSTracker> _rv = cv::rapid::OLSTracker::create(_i0.ia(), _i1.ia(), histBins, (uchar)sobelThesh);
    return ropecv::wrap_obj(_rv, "cvOLSTracker");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rapid_Rapid_Rapid_create__0(SEXP pts3d, SEXP tris) {
  try {
    ropecv::InArg _i0(pts3d);
    ropecv::InArg _i1(tris);
    cv::Ptr<cv::rapid::Rapid> _rv = cv::rapid::Rapid::create(_i0.ia(), _i1.ia());
    return ropecv::wrap_obj(_rv, "cvRapid");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rapid_Tracker_Tracker_clearState__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::rapid::Tracker>(ropecv_self_)->clearState();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearState: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearState: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_rapid_Tracker_Tracker_compute__0(SEXP ropecv_self_, SEXP img, int num, int len, SEXP K, SEXP rvec, SEXP tvec, SEXP termcrit) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(K);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(rvec) ? &_owned0 : ropecv::mat_ptr(rvec);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(tvec) ? &_owned1 : ropecv::mat_ptr(tvec);
    double _rv = ropecv::obj_as<cv::rapid::Tracker>(ropecv_self_)->compute(_i0.ia(), num, len, _i1.ia(), cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), ropecv::as_termcriteria(termcrit));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("rvec") = Rf_isNull(rvec) ? ropecv::wrap_mat(std::move(_owned0)) : rvec,
                                Rcpp::Named("tvec") = Rf_isNull(tvec) ? ropecv::wrap_mat(std::move(_owned1)) : tvec);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}
