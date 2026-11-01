// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/global_motion.hpp
#include "ropecv.h"
#include <opencv2/videostab/global_motion.hpp>

// [[Rcpp::export]]
SEXP cv_estimateGlobalMotionLeastSquares(SEXP points0, SEXP points1, int model) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(points0) ? &_owned0 : ropecv::mat_ptr(points0);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(points1) ? &_owned1 : ropecv::mat_ptr(points1);
    float _o2 = 0;
    cv::Mat _rv = ::cv::videostab::estimateGlobalMotionLeastSquares(cv::_InputOutputArray(*_p0), cv::_InputOutputArray(*_p1), model, &_o2);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("points0"), Rf_isNull(points0) ? ropecv::wrap_mat(std::move(_owned0)) : points0);
    Rf_setAttrib(_out, Rf_install("points1"), Rf_isNull(points1) ? ropecv::wrap_mat(std::move(_owned1)) : points1);
    Rf_setAttrib(_out, Rf_install("rmse"), Rf_ScalarReal((double)_o2));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimateGlobalMotionLeastSquares: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimateGlobalMotionLeastSquares: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getMotion(int from, int to, SEXP motions) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(motions);
    cv::Mat _rv = ::cv::videostab::getMotion(from, to, _a0);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMotion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMotion: %s", e.what());
  }
}
