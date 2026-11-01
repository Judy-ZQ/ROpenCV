// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/face.hpp>

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_create__0(std::string model, std::string config, SEXP input_size, double score_threshold, double nms_threshold, int top_k, int backend_id, int target_id) {
  try {
    cv::Ptr<cv::FaceDetectorYN> _rv = cv::FaceDetectorYN::create(model, config, ropecv::as_size(input_size), (float)score_threshold, (float)nms_threshold, top_k, backend_id, target_id);
    return ropecv::wrap_obj(_rv, "cvFaceDetectorYN");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_create__1(std::string framework, SEXP bufferModel, SEXP bufferConfig, SEXP input_size, double score_threshold, double nms_threshold, int top_k, int backend_id, int target_id) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferModel);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferConfig);
    cv::Ptr<cv::FaceDetectorYN> _rv = cv::FaceDetectorYN::create(framework, _a0, _a1, ropecv::as_size(input_size), (float)score_threshold, (float)nms_threshold, top_k, backend_id, target_id);
    return ropecv::wrap_obj(_rv, "cvFaceDetectorYN");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_detect__0(SEXP ropecv_self_, SEXP image, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    int _rv = ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->detect(_i0.ia(), cv::_OutputArray(*_p0));
    SEXP _out = Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
    Rf_setAttrib(_out, Rf_install("value"), Rf_ScalarInteger(_rv));
    return _out;
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_getInputSize__0(SEXP ropecv_self_) {
  try {
    cv::Size _rv = ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->getInputSize();
    return ropecv::wrap_size(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getInputSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getInputSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_getNMSThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->getNMSThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNMSThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNMSThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_getScoreThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->getScoreThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScoreThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScoreThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_getTopK__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->getTopK();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getTopK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getTopK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_setInputSize__0(SEXP ropecv_self_, SEXP input_size) {
  try {
    ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->setInputSize(ropecv::as_size(input_size));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_setNMSThreshold__0(SEXP ropecv_self_, double nms_threshold) {
  try {
    ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->setNMSThreshold((float)nms_threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNMSThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNMSThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_setScoreThreshold__0(SEXP ropecv_self_, double score_threshold) {
  try {
    ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->setScoreThreshold((float)score_threshold);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScoreThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScoreThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceDetectorYN_FaceDetectorYN_setTopK__0(SEXP ropecv_self_, int top_k) {
  try {
    ropecv::obj_as<cv::FaceDetectorYN>(ropecv_self_)->setTopK(top_k);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setTopK: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setTopK: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceRecognizerSF_FaceRecognizerSF_create__0(std::string model, std::string config, int backend_id, int target_id) {
  try {
    cv::Ptr<cv::FaceRecognizerSF> _rv = cv::FaceRecognizerSF::create(model, config, backend_id, target_id);
    return ropecv::wrap_obj(_rv, "cvFaceRecognizerSF");
  } catch (const cv::Exception& e) {
    Rcpp::stop("create: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("create: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceRecognizerSF_FaceRecognizerSF_alignCrop__0(SEXP ropecv_self_, SEXP src_img, SEXP face_box, SEXP dst) {
  try {
    ropecv::InArg _i0(src_img);
    ropecv::InArg _i1(face_box);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::FaceRecognizerSF>(ropecv_self_)->alignCrop(_i0.ia(), _i1.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("alignCrop: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("alignCrop: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceRecognizerSF_FaceRecognizerSF_feature__0(SEXP ropecv_self_, SEXP aligned_img, SEXP dst) {
  try {
    ropecv::InArg _i0(aligned_img);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::FaceRecognizerSF>(ropecv_self_)->feature(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("feature: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("feature: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_FaceRecognizerSF_FaceRecognizerSF_match__0(SEXP ropecv_self_, SEXP face_feature1, SEXP face_feature2, int dis_type) {
  try {
    ropecv::InArg _i0(face_feature1);
    ropecv::InArg _i1(face_feature2);
    double _rv = ropecv::obj_as<cv::FaceRecognizerSF>(ropecv_self_)->match(_i0.ia(), _i1.ia(), dis_type);
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("match: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("match: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_getLabelInfo__0(SEXP ropecv_self_, int label) {
  try {
    std::string _rv = ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->getLabelInfo(label);
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLabelInfo: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLabelInfo: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_getLabelsByString__0(SEXP ropecv_self_, std::string str) {
  try {
    std::vector<int> _rv = ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->getLabelsByString(str);
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLabelsByString: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLabelsByString: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_predict__0(SEXP ropecv_self_, SEXP src) {
  try {
    ropecv::InArg _i0(src);
    int _o0 = 0;
    double _o1 = 0;
    ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->predict(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("label") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("confidence") = Rf_ScalarReal(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_read__0(SEXP ropecv_self_, std::string filename) {
  try {
    ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->read(filename);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("read: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("read: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_setLabelInfo__0(SEXP ropecv_self_, int label, std::string strInfo) {
  try {
    ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->setLabelInfo(label, strInfo);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setLabelInfo: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setLabelInfo: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_train__0(SEXP ropecv_self_, SEXP src, SEXP labels) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(labels);
    ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->train(_i0.ia(), _i1.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("train: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("train: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_update__0(SEXP ropecv_self_, SEXP src, SEXP labels) {
  try {
    ropecv::InArg _i0(src);
    ropecv::InArg _i1(labels);
    ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->update(_i0.ia(), _i1.ia());
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("update: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("update: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_face_FaceRecognizer_FaceRecognizer_write__0(SEXP ropecv_self_, std::string filename) {
  try {
    ropecv::obj_as<cv::face::FaceRecognizer>(ropecv_self_)->write(filename);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("write: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("write: %s", e.what());
  }
}
