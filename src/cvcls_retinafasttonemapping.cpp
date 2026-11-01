// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/bioinspired/retinafasttonemapping.hpp>

// [[Rcpp::export]]
SEXP cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_create__0(SEXP inputSize) {
  try {
    cv::Ptr<cv::bioinspired::RetinaFastToneMapping> _rv = cv::bioinspired::RetinaFastToneMapping::create(ropecv::as_size(inputSize));
    return ropecv::wrap_obj(_rv, "cvRetinaFastToneMapping");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_applyFastToneMapping__0(SEXP ropecv_self_, SEXP inputImage, SEXP dst) {
  try {
    ropecv::InArg _i0(inputImage);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::RetinaFastToneMapping>(ropecv_self_)->applyFastToneMapping(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("applyFastToneMapping: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("applyFastToneMapping: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_setup__0(SEXP ropecv_self_, double photoreceptorsNeighborhoodRadius, double ganglioncellsNeighborhoodRadius, double meanLuminanceModulatorK) {
  try {
    ropecv::obj_as<cv::bioinspired::RetinaFastToneMapping>(ropecv_self_)->setup((float)photoreceptorsNeighborhoodRadius, (float)ganglioncellsNeighborhoodRadius, (float)meanLuminanceModulatorK);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setup: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setup: %s", e.what());
  }
}
