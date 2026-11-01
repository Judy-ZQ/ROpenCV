// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/objdetect/graphical_code_detector.hpp>

// [[Rcpp::export]]
SEXP cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0(SEXP ropecv_self_, SEXP img, SEXP points, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    std::string _rv = ropecv::obj_as<cv::GraphicalCodeDetector>(ropecv_self_)->decode(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("dst") = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst);
  } catch (const cv::Exception& e) {
    Rcpp::stop("decode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0(SEXP ropecv_self_, SEXP img, SEXP points, SEXP straight_code) {
  try {
    ropecv::InArg _i0(img);
    ropecv::InArg _i1(points);
    std::vector<std::string> _o0;
    std::vector<cv::Mat> _o1;
    bool _rv = ropecv::obj_as<cv::GraphicalCodeDetector>(ropecv_self_)->decodeMulti(_i0.ia(), _i1.ia(), _o0, cv::_OutputArray(_o1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("decoded_info") = Rcpp::wrap(_o0),
                                Rcpp::Named("straight_code") = ropecv::wrap_mat_vector(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("decodeMulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("decodeMulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GraphicalCodeDetector_GraphicalCodeDetector_detect__0(SEXP ropecv_self_, SEXP img, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::GraphicalCodeDetector>(ropecv_self_)->detect(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecode__0(SEXP ropecv_self_, SEXP img, SEXP points, SEXP straight_code) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points) ? &_owned0 : ropecv::mat_ptr(points);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(straight_code) ? &_owned1 : ropecv::mat_ptr(straight_code);
    std::string _rv = ropecv::obj_as<cv::GraphicalCodeDetector>(ropecv_self_)->detectAndDecode(_i0.ia(), cv::_OutputArray(*_p0), cv::_OutputArray(*_p1));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_mkString(_rv.c_str()),
                                Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned0)) : points,
                                Rcpp::Named("straight_code") = Rf_isNull(straight_code) ? ropecv::wrap_mat(std::move(_owned1)) : straight_code);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectAndDecode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectAndDecode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecodeMulti__0(SEXP ropecv_self_, SEXP img, SEXP points, SEXP straight_code) {
  try {
    ropecv::InArg _i0(img);
    std::vector<std::string> _o0;
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(points) ? &_owned1 : ropecv::mat_ptr(points);
    std::vector<cv::Mat> _o2;
    bool _rv = ropecv::obj_as<cv::GraphicalCodeDetector>(ropecv_self_)->detectAndDecodeMulti(_i0.ia(), _o0, cv::_OutputArray(*_p1), cv::_OutputArray(_o2));
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("decoded_info") = Rcpp::wrap(_o0),
                                Rcpp::Named("points") = Rf_isNull(points) ? ropecv::wrap_mat(std::move(_owned1)) : points,
                                Rcpp::Named("straight_code") = ropecv::wrap_mat_vector(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectAndDecodeMulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectAndDecodeMulti: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0(SEXP ropecv_self_, SEXP img, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ropecv::obj_as<cv::GraphicalCodeDetector>(ropecv_self_)->detectMulti(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectMulti: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectMulti: %s", e.what());
  }
}
