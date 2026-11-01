// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/ocr.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/text/ocr.hpp>

// [[Rcpp::export]]
SEXP cv_createOCRHMMTransitionsTable(std::string vocabulary, SEXP lexicon) {
  try {
    std::vector<cv::String> _o0;
    if (!Rf_isNull(lexicon)) _o0 = ropecv::as_vec_string(lexicon);
    cv::Mat _rv = ::cv::text::createOCRHMMTransitionsTable(vocabulary, _o0);
    SEXP _out = ropecv::wrap_mat(std::move(_rv));
    Rf_setAttrib(_out, Rf_install("lexicon"), Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end())));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("createOCRHMMTransitionsTable: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("createOCRHMMTransitionsTable: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadOCRBeamSearchClassifierCNN(std::string filename) {
  try {
    cv::Ptr<cv::text::OCRBeamSearchDecoder::ClassifierCallback> _rv = ::cv::text::loadOCRBeamSearchClassifierCNN(filename);
    return ropecv::wrap_obj(_rv, "cvClassifierCallback");
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadOCRBeamSearchClassifierCNN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadOCRBeamSearchClassifierCNN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadOCRHMMClassifier(std::string filename, int classifier) {
  try {
    cv::Ptr<cv::text::OCRHMMDecoder::ClassifierCallback> _rv = ::cv::text::loadOCRHMMClassifier(filename, classifier);
    return ropecv::wrap_obj(_rv, "cvClassifierCallback");
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadOCRHMMClassifier: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadOCRHMMClassifier: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadOCRHMMClassifierCNN(std::string filename) {
  try {
    cv::Ptr<cv::text::OCRHMMDecoder::ClassifierCallback> _rv = ::cv::text::loadOCRHMMClassifierCNN(filename);
    return ropecv::wrap_obj(_rv, "cvClassifierCallback");
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadOCRHMMClassifierCNN: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadOCRHMMClassifierCNN: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_loadOCRHMMClassifierNM(std::string filename) {
  try {
    cv::Ptr<cv::text::OCRHMMDecoder::ClassifierCallback> _rv = ::cv::text::loadOCRHMMClassifierNM(filename);
    return ropecv::wrap_obj(_rv, "cvClassifierCallback");
  } catch (const cv::Exception& e) {
    Rcpp::stop("loadOCRHMMClassifierNM: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("loadOCRHMMClassifierNM: %s", e.what());
  }
}
