// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/bioinspired/transientareassegmentationmodule.hpp>

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_create__0(SEXP inputSize) {
  try {
    cv::Ptr<cv::bioinspired::TransientAreasSegmentationModule> _rv = cv::bioinspired::TransientAreasSegmentationModule::create(ropecv::as_size(inputSize));
    return ropecv::wrap_obj(_rv, "cvTransientAreasSegmentationModule");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_clearAllBuffers__0(SEXP ropecv_self_) {
  try {
    ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->clearAllBuffers();
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("clearAllBuffers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("clearAllBuffers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_getSegmentationPicture__0(SEXP ropecv_self_, SEXP dst) {
  try {
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->getSegmentationPicture(cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSegmentationPicture: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSegmentationPicture: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_getSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->getSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_printSetup__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->printSetup();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("printSetup: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("printSetup: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_run__0(SEXP ropecv_self_, SEXP inputToSegment, int channelIndex) {
  try {
    ropecv::InArg _i0(inputToSegment);
    ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->run(_i0.ia(), channelIndex);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_setup__0(SEXP ropecv_self_, std::string segmentationParameterFile, bool applyDefaultSetupOnFailure) {
  try {
    ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->setup(segmentationParameterFile, applyDefaultSetupOnFailure);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setup: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setup: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_write__0(SEXP ropecv_self_, std::string fs) {
  try {
    ropecv::obj_as<cv::bioinspired::TransientAreasSegmentationModule>(ropecv_self_)->write(fs);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}
