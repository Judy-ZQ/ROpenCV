// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/quality/qualitybrisque.hpp>

// [[Rcpp::export]]
SEXP cv_quality_QualityBRISQUE_QualityBRISQUE_create__0(std::string model_file_path, std::string range_file_path) {
  try {
    cv::Ptr<cv::quality::QualityBRISQUE> _rv = cv::quality::QualityBRISQUE::create(model_file_path, range_file_path);
    return ropecv::wrap_obj(_rv, "cvQualityBRISQUE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBRISQUE_QualityBRISQUE_create__1(SEXP model, SEXP range) {
  try {
    cv::Mat _m0 = Rf_isNull(range) ? cv::Mat() : *ropecv::mat_ptr(range);
    cv::Ptr<cv::quality::QualityBRISQUE> _rv = cv::quality::QualityBRISQUE::create(ropecv::as_ptr<cv::ml::SVM>(model), _m0);
    return ropecv::wrap_obj(_rv, "cvQualityBRISQUE");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBRISQUE_QualityBRISQUE_computeFeatures__2(SEXP img, SEXP dst) {
  try {
    ropecv::InArg _i0(img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    cv::quality::QualityBRISQUE::computeFeatures(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("computeFeatures: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("computeFeatures: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBRISQUE_QualityBRISQUE_compute__3(SEXP img, std::string model_file_path, std::string range_file_path) {
  try {
    ropecv::InArg _i0(img);
    cv::Scalar _rv = cv::quality::QualityBRISQUE::compute(_i0.ia(), model_file_path, range_file_path);
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_quality_QualityBRISQUE_QualityBRISQUE_compute__0(SEXP ropecv_self_, SEXP img) {
  try {
    ropecv::InArg _i0(img);
    cv::Scalar _rv = ropecv::obj_as<cv::quality::QualityBRISQUE>(ropecv_self_)->compute(_i0.ia());
    return ropecv::wrap_scalar(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("compute: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("compute: %s", e.what());
  }
}
