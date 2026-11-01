// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/charuco_detector.hpp
#include "ropecv.h"
#include <opencv2/objdetect/charuco_detector.hpp>

// [[Rcpp::export]]
SEXP cv_drawDetectedCornersCharuco(SEXP image, SEXP charucoCorners, SEXP charucoIds, SEXP cornerColor) {
  try {
    ropecv::InArg _i0(charucoCorners);
    ropecv::InArg _i1(charucoIds);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::aruco::drawDetectedCornersCharuco(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia(), ropecv::as_scalar(cornerColor));
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawDetectedCornersCharuco: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawDetectedCornersCharuco: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_drawDetectedDiamonds(SEXP image, SEXP diamondCorners, SEXP diamondIds, SEXP borderColor) {
  try {
    ropecv::InArg _i0(diamondCorners);
    ropecv::InArg _i1(diamondIds);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(image) ? &_owned0 : ropecv::mat_ptr(image);
    ::cv::aruco::drawDetectedDiamonds(cv::_InputOutputArray(*_p0), _i0.ia(), _i1.ia(), ropecv::as_scalar(borderColor));
    return Rf_isNull(image) ? ropecv::wrap_mat(std::move(_owned0)) : image;
  } catch (const cv::Exception& e) {
    Rcpp::stop("drawDetectedDiamonds: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("drawDetectedDiamonds: %s", e.what());
  }
}
