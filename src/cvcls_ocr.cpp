// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/text/ocr.hpp>

// [[Rcpp::export]]
SEXP cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_create__0(SEXP classifier, std::string vocabulary, SEXP transition_probabilities_table, SEXP emission_probabilities_table, int mode, int beam_size) {
  try {
    ropecv::InArg _i0(transition_probabilities_table);
    ropecv::InArg _i1(emission_probabilities_table);
    cv::Ptr<cv::text::OCRBeamSearchDecoder> _rv = cv::text::OCRBeamSearchDecoder::create(ropecv::as_ptr<cv::text::OCRBeamSearchDecoder::ClassifierCallback>(classifier), vocabulary, _i0.ia(), _i1.ia(), (cv::text::decoder_mode)mode, beam_size);
    return ropecv::wrap_obj(_rv, "cvOCRBeamSearchDecoder");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__0(SEXP ropecv_self_, SEXP image, int min_confidence, int component_level) {
  try {
    ropecv::InArg _i0(image);
    std::string _rv = ropecv::obj_as<cv::text::OCRBeamSearchDecoder>(ropecv_self_)->run(_i0.ia(), min_confidence, component_level);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRBeamSearchDecoder_OCRBeamSearchDecoder_run__1(SEXP ropecv_self_, SEXP image, SEXP mask, int min_confidence, int component_level) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    std::string _rv = ropecv::obj_as<cv::text::OCRBeamSearchDecoder>(ropecv_self_)->run(_i0.ia(), _i1.ia(), min_confidence, component_level);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRHMMDecoder_OCRHMMDecoder_create__0(SEXP classifier, std::string vocabulary, SEXP transition_probabilities_table, SEXP emission_probabilities_table, int mode) {
  try {
    ropecv::InArg _i0(transition_probabilities_table);
    ropecv::InArg _i1(emission_probabilities_table);
    cv::Ptr<cv::text::OCRHMMDecoder> _rv = cv::text::OCRHMMDecoder::create(ropecv::as_ptr<cv::text::OCRHMMDecoder::ClassifierCallback>(classifier), vocabulary, _i0.ia(), _i1.ia(), mode);
    return ropecv::wrap_obj(_rv, "cvOCRHMMDecoder");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRHMMDecoder_OCRHMMDecoder_create__1(std::string filename, std::string vocabulary, SEXP transition_probabilities_table, SEXP emission_probabilities_table, int mode, int classifier) {
  try {
    ropecv::InArg _i0(transition_probabilities_table);
    ropecv::InArg _i1(emission_probabilities_table);
    cv::Ptr<cv::text::OCRHMMDecoder> _rv = cv::text::OCRHMMDecoder::create(filename, vocabulary, _i0.ia(), _i1.ia(), mode, classifier);
    return ropecv::wrap_obj(_rv, "cvOCRHMMDecoder");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRHMMDecoder_OCRHMMDecoder_run__0(SEXP ropecv_self_, SEXP image, int min_confidence, int component_level) {
  try {
    ropecv::InArg _i0(image);
    std::string _rv = ropecv::obj_as<cv::text::OCRHMMDecoder>(ropecv_self_)->run(_i0.ia(), min_confidence, component_level);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRHMMDecoder_OCRHMMDecoder_run__1(SEXP ropecv_self_, SEXP image, SEXP mask, int min_confidence, int component_level) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    std::string _rv = ropecv::obj_as<cv::text::OCRHMMDecoder>(ropecv_self_)->run(_i0.ia(), _i1.ia(), min_confidence, component_level);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRTesseract_OCRTesseract_create__0(std::string datapath, std::string language, std::string char_whitelist, int oem, int psmode) {
  try {
    cv::Ptr<cv::text::OCRTesseract> _rv = cv::text::OCRTesseract::create(datapath.c_str(), language.c_str(), char_whitelist.c_str(), oem, psmode);
    return ropecv::wrap_obj(_rv, "cvOCRTesseract");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRTesseract_OCRTesseract_run__0(SEXP ropecv_self_, SEXP image, int min_confidence, int component_level) {
  try {
    ropecv::InArg _i0(image);
    std::string _rv = ropecv::obj_as<cv::text::OCRTesseract>(ropecv_self_)->run(_i0.ia(), min_confidence, component_level);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRTesseract_OCRTesseract_run__1(SEXP ropecv_self_, SEXP image, SEXP mask, int min_confidence, int component_level) {
  try {
    ropecv::InArg _i0(image);
    ropecv::InArg _i1(mask);
    std::string _rv = ropecv::obj_as<cv::text::OCRTesseract>(ropecv_self_)->run(_i0.ia(), _i1.ia(), min_confidence, component_level);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_OCRTesseract_OCRTesseract_setWhiteList__0(SEXP ropecv_self_, std::string char_whitelist) {
  try {
    ropecv::obj_as<cv::text::OCRTesseract>(ropecv_self_)->setWhiteList(char_whitelist);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setWhiteList: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setWhiteList: %s", e.what());
  }
}
