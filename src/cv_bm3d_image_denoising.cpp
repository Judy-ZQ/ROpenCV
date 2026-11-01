// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/bm3d_image_denoising.hpp
#include "ropecv.h"
#include <opencv2/xphoto/bm3d_image_denoising.hpp>

// [[Rcpp::export]]
SEXP cv_bm3dDenoising__0(SEXP src, double h, int templateWindowSize, int searchWindowSize, int blockMatchingStep1, int blockMatchingStep2, int groupSize, int slidingStep, double beta, int normType, int step, int transformType, SEXP dst) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::xphoto::bm3dDenoising(_i0.ia(), cv::_OutputArray(*_p0), (float)h, templateWindowSize, searchWindowSize, blockMatchingStep1, blockMatchingStep2, groupSize, slidingStep, (float)beta, normType, step, transformType);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("bm3dDenoising: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bm3dDenoising: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bm3dDenoising__1(SEXP src, SEXP dstStep1, double h, int templateWindowSize, int searchWindowSize, int blockMatchingStep1, int blockMatchingStep2, int groupSize, int slidingStep, double beta, int normType, int step, int transformType, SEXP dstStep2) {
  try {
    ropecv::InArg _i0(src);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dstStep1) ? &_owned0 : ropecv::mat_ptr(dstStep1);
    cv::Mat _owned1;
    cv::Mat* _p1 = Rf_isNull(dstStep2) ? &_owned1 : ropecv::mat_ptr(dstStep2);
    ::cv::xphoto::bm3dDenoising(_i0.ia(), cv::_InputOutputArray(*_p0), cv::_OutputArray(*_p1), (float)h, templateWindowSize, searchWindowSize, blockMatchingStep1, blockMatchingStep2, groupSize, slidingStep, (float)beta, normType, step, transformType);
    return Rcpp::List::create(Rcpp::Named("dstStep1") = Rf_isNull(dstStep1) ? ropecv::wrap_mat(std::move(_owned0)) : dstStep1,
                                Rcpp::Named("dstStep2") = Rf_isNull(dstStep2) ? ropecv::wrap_mat(std::move(_owned1)) : dstStep2);
  } catch (const cv::Exception& e) {
    Rcpp::stop("bm3dDenoising: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("bm3dDenoising: %s", e.what());
  }
}
