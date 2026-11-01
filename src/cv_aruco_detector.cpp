// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/aruco_detector.hpp
#include "ropecv.h"
#include <opencv2/objdetect/aruco_detector.hpp>

// [[Rcpp::export]]
SEXP cv_drawDetectedMarkers(SEXP image, SEXP corners, SEXP ids, SEXP borderColor) {
  try {
    ropecv::InArg _i0(corners);
    ropecv::InArg _i1(ids);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::aruco::drawDetectedMarkers(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia(), ropecv::as_scalar(borderColor));
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawDetectedMarkers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawDetectedMarkers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_generateImageMarker(SEXP dictionary, int id, int sidePixels, int borderBits, SEXP dst) {
  try {
    cv::aruco::Dictionary _s0 = Rf_isNull(dictionary) ? cv::aruco::Dictionary() : *ropecv::obj_as<cv::aruco::Dictionary>(dictionary);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::aruco::generateImageMarker(_s0, id, sidePixels, cv::_OutputArray(*_p0), borderBits);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("generateImageMarker: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("generateImageMarker: %s", e.what());
  }
}
