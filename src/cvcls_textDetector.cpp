// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/text/textDetector.hpp>

// [[Rcpp::export]]
SEXP cv_text_TextDetector_TextDetector_detect__0(SEXP ropecv_self_, SEXP inputImage) {
  try {
    ropecv::InArg _i0(inputImage);
    std::vector<cv::Rect> _o0;
    std::vector<float> _o1;
    ropecv::obj_as<cv::text::TextDetector>(ropecv_self_)->detect(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("Bbox") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("confidence") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_TextDetectorCNN_TextDetectorCNN_create__0(std::string modelArchFilename, std::string modelWeightsFilename) {
  try {
    cv::Ptr<cv::text::TextDetectorCNN> _rv = cv::text::TextDetectorCNN::create(modelArchFilename, modelWeightsFilename);
    return ropecv::wrap_obj(_rv, "cvTextDetectorCNN");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_text_TextDetectorCNN_TextDetectorCNN_detect__0(SEXP ropecv_self_, SEXP inputImage) {
  try {
    ropecv::InArg _i0(inputImage);
    std::vector<cv::Rect> _o0;
    std::vector<float> _o1;
    ropecv::obj_as<cv::text::TextDetectorCNN>(ropecv_self_)->detect(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("Bbox") = ropecv::wrap_rects(_o0),
                                Rcpp::Named("confidence") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}
