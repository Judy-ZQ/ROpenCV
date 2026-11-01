// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/facemark_train.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/face/facemark_train.hpp>

// [[Rcpp::export]]
SEXP cv_drawFacemarks(SEXP image, SEXP points, SEXP color) {
  try {
    ropecv::InArg _i0(points);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::face::drawFacemarks(cv::_InputOutputArray(*_p0), _i0.ia(), ropecv::as_scalar(color));
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawFacemarks: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawFacemarks: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getFacesHAAR(SEXP image, std::string face_cascade_name, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::face::getFacesHAAR(_i0.ia(), cv::_OutputArray(*_p0), face_cascade_name);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFacesHAAR: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFacesHAAR: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadDatasetList(std::string imageList, std::string annotationList, SEXP images, SEXP annotations) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(images)) _o0 = ropecv::as_vec_string(images);
    std::vector<cv::String> _o1;
    if (!Rf_isNull(annotations)) _o1 = ropecv::as_vec_string(annotations);
    bool _rv = ::cv::face::loadDatasetList(imageList, annotationList, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("images") = Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())),
                                Rcpp::Named("annotations") = Rcpp::wrap(std::vector<std::string>(_o1.begin(), _o1.end())));
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadDatasetList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadDatasetList: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadFacePoints(std::string filename, double offset, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    bool _rv = ::cv::face::loadFacePoints(filename, cv::_OutputArray(*_p0), (float)offset);
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarLogical(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadFacePoints: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadFacePoints: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadTrainingData__0(SEXP filename, SEXP trainlandmarks, SEXP trainimages) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(filename);
    std::vector<std::vector<cv::Point2f>> _o0;
    if (!Rf_isNull(trainlandmarks)) _o0 = ropecv::as_points2f_list(trainlandmarks);
    std::vector<cv::String> _o1;
    if (!Rf_isNull(trainimages)) _o1 = ropecv::as_vec_string(trainimages);
    bool _rv = ::cv::face::loadTrainingData(_a0, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("trainlandmarks") = ropecv::wrap_points2f_list(_o0),
                                Rcpp::Named("trainimages") = Rcpp::wrap(std::vector<std::string>(_o1.begin(), _o1.end())));
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadTrainingData: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadTrainingData: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadTrainingData__1(std::string filename, SEXP images, std::string delim, double offset, SEXP facePoints) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(images)) _o0 = ropecv::as_vec_string(images);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(facePoints) ? &_owned1 : ropecv::mat_ptr(facePoints);
    bool _rv = ::cv::face::loadTrainingData(filename, _o0, cv::_OutputArray(*_p1), (delim.empty() ? 0 : (char)delim[0]), (float)offset);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("images") = Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())),
                                Rcpp::Named("facePoints") = Rf_isNull(facePoints) ? ropecv::wrap_mat(std::move(_owned1)) : facePoints);
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadTrainingData: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadTrainingData: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadTrainingData__2(std::string imageList, std::string groundTruth, SEXP images, double offset, SEXP facePoints) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(images)) _o0 = ropecv::as_vec_string(images);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(facePoints) ? &_owned1 : ropecv::mat_ptr(facePoints);
    bool _rv = ::cv::face::loadTrainingData(imageList, groundTruth, _o0, cv::_OutputArray(*_p1), (float)offset);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarLogical(_rv),
                                Rcpp::Named("images") = Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())),
                                Rcpp::Named("facePoints") = Rf_isNull(facePoints) ? ropecv::wrap_mat(std::move(_owned1)) : facePoints);
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadTrainingData: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadTrainingData: %s", e.what());
  }
}
