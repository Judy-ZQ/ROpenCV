// 由 tools/gen/emit.py 生成，请勿手改。源：opencv2/dnn.hpp
#include "ropecv.h"
#include "ropecv_structs.h"
#include <opencv2/dnn/dnn.hpp>

// [[Rcpp::export]]
SEXP cv_NMSBoxes(SEXP bboxes, SEXP scores, double score_threshold, double nms_threshold, double eta, int top_k) {
  try {
    std::vector<cv::Rect2d> _a0 = ropecv::as_rects2d(bboxes);
    std::vector<float> _a1 = ropecv::as_flt_vector(scores);
    std::vector<int> _o0;
    ::cv::dnn::NMSBoxes(_a0, _a1, (float)score_threshold, (float)nms_threshold, _o0, (float)eta, top_k);
    return Rcpp::wrap(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("NMSBoxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("NMSBoxes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_NMSBoxesBatched(SEXP bboxes, SEXP scores, SEXP class_ids, double score_threshold, double nms_threshold, double eta, int top_k) {
  try {
    std::vector<cv::Rect2d> _a0 = ropecv::as_rects2d(bboxes);
    std::vector<float> _a1 = ropecv::as_flt_vector(scores);
    std::vector<int> _a2 = ropecv::as_int_vector(class_ids);
    std::vector<int> _o0;
    ::cv::dnn::NMSBoxesBatched(_a0, _a1, _a2, (float)score_threshold, (float)nms_threshold, _o0, (float)eta, top_k);
    return Rcpp::wrap(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("NMSBoxesBatched: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("NMSBoxesBatched: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blobFromImage(SEXP image, double scalefactor, SEXP size, SEXP mean, bool swapRB, bool crop, int ddepth) {
  try {
    ropecv::InArg _i0(image);
    cv::Mat _rv = ::cv::dnn::blobFromImage(_i0.ia(), scalefactor, ropecv::as_size(size), ropecv::as_scalar(mean), swapRB, crop, ddepth);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobFromImage: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobFromImage: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blobFromImageWithParams__0(SEXP image, SEXP param) {
  try {
    ropecv::InArg _i0(image);
    cv::dnn::Image2BlobParams _s1 = Rf_isNull(param) ? cv::dnn::Image2BlobParams() : *ropecv::obj_as<cv::dnn::Image2BlobParams>(param);
    cv::Mat _rv = ::cv::dnn::blobFromImageWithParams(_i0.ia(), _s1);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobFromImageWithParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobFromImageWithParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blobFromImageWithParams__1(SEXP image, SEXP param, SEXP dst) {
  try {
    ropecv::InArg _i0(image);
    cv::dnn::Image2BlobParams _s1 = Rf_isNull(param) ? cv::dnn::Image2BlobParams() : *ropecv::obj_as<cv::dnn::Image2BlobParams>(param);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::dnn::blobFromImageWithParams(_i0.ia(), cv::_OutputArray(*_p0), _s1);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobFromImageWithParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobFromImageWithParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blobFromImages(SEXP images, double scalefactor, SEXP size, SEXP mean, bool swapRB, bool crop, int ddepth) {
  try {
    ropecv::InArg _i0(images);
    cv::Mat _rv = ::cv::dnn::blobFromImages(_i0.ia(), scalefactor, ropecv::as_size(size), ropecv::as_scalar(mean), swapRB, crop, ddepth);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobFromImages: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobFromImages: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blobFromImagesWithParams__0(SEXP images, SEXP param) {
  try {
    ropecv::InArg _i0(images);
    cv::dnn::Image2BlobParams _s1 = Rf_isNull(param) ? cv::dnn::Image2BlobParams() : *ropecv::obj_as<cv::dnn::Image2BlobParams>(param);
    cv::Mat _rv = ::cv::dnn::blobFromImagesWithParams(_i0.ia(), _s1);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobFromImagesWithParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobFromImagesWithParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_blobFromImagesWithParams__1(SEXP images, SEXP param, SEXP dst) {
  try {
    ropecv::InArg _i0(images);
    cv::dnn::Image2BlobParams _s1 = Rf_isNull(param) ? cv::dnn::Image2BlobParams() : *ropecv::obj_as<cv::dnn::Image2BlobParams>(param);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ::cv::dnn::blobFromImagesWithParams(_i0.ia(), cv::_OutputArray(*_p0), _s1);
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobFromImagesWithParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobFromImagesWithParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_enableModelDiagnostics(bool isDiagnosticsMode) {
  try {
    ::cv::dnn::enableModelDiagnostics(isDiagnosticsMode);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("enableModelDiagnostics: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("enableModelDiagnostics: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getAvailableBackends() {
  try {
    std::vector<std::pair<cv::dnn::Backend, cv::dnn::Target> > _rv = ::cv::dnn::getAvailableBackends();
    return ropecv::wrap_backend_target_pairs(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAvailableBackends: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAvailableBackends: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_getAvailableTargets(int be) {
  try {
    std::vector<cv::dnn::Target> _rv = ::cv::dnn::getAvailableTargets((cv::dnn::Backend)be);
    return ropecv::wrap_enum_vector(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getAvailableTargets: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getAvailableTargets: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_imagesFromBlob(SEXP blob_, SEXP images_) {
  try {
    cv::Mat _m0 = Rf_isNull(blob_) ? cv::Mat() : *ropecv::mat_ptr(blob_);
    std::vector<cv::Mat> _o0;
    ::cv::dnn::imagesFromBlob(_m0, cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("imagesFromBlob: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("imagesFromBlob: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNet__0(std::string model, std::string config, std::string framework) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNet(model, config, framework);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNet__1(std::string framework, SEXP bufferModel, SEXP bufferConfig) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferModel);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferConfig);
    cv::dnn::Net _rv = ::cv::dnn::readNet(framework, _a0, _a1);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromCaffe__0(std::string prototxt, std::string caffeModel) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNetFromCaffe(prototxt, caffeModel);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromCaffe: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromCaffe: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromCaffe__1(SEXP bufferProto, SEXP bufferModel) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferProto);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferModel);
    cv::dnn::Net _rv = ::cv::dnn::readNetFromCaffe(_a0, _a1);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromCaffe: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromCaffe: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromDarknet__0(std::string cfgFile, std::string darknetModel) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNetFromDarknet(cfgFile, darknetModel);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromDarknet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromDarknet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromDarknet__1(SEXP bufferCfg, SEXP bufferModel) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferCfg);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferModel);
    cv::dnn::Net _rv = ::cv::dnn::readNetFromDarknet(_a0, _a1);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromDarknet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromDarknet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromModelOptimizer__0(std::string xml, std::string bin) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNetFromModelOptimizer(xml, bin);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromModelOptimizer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromModelOptimizer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromModelOptimizer__1(SEXP bufferModelConfig, SEXP bufferWeights) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferModelConfig);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferWeights);
    cv::dnn::Net _rv = ::cv::dnn::readNetFromModelOptimizer(_a0, _a1);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromModelOptimizer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromModelOptimizer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromONNX__0(std::string onnxFile) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNetFromONNX(onnxFile);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromONNX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromONNX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromONNX__1(SEXP buffer) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(buffer);
    cv::dnn::Net _rv = ::cv::dnn::readNetFromONNX(_a0);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromONNX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromONNX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromTFLite__0(std::string model) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNetFromTFLite(model);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromTFLite: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromTFLite: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromTFLite__1(SEXP bufferModel) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferModel);
    cv::dnn::Net _rv = ::cv::dnn::readNetFromTFLite(_a0);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromTFLite: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromTFLite: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromTensorflow__0(std::string model, std::string config) {
  try {
    cv::dnn::Net _rv = ::cv::dnn::readNetFromTensorflow(model, config);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromTensorflow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromTensorflow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readNetFromTensorflow__1(SEXP bufferModel, SEXP bufferConfig) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferModel);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferConfig);
    cv::dnn::Net _rv = ::cv::dnn::readNetFromTensorflow(_a0, _a1);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readNetFromTensorflow: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readNetFromTensorflow: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_readTensorFromONNX(std::string path) {
  try {
    cv::Mat _rv = ::cv::dnn::readTensorFromONNX(path);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("readTensorFromONNX: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readTensorFromONNX: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_shrinkCaffeModel(std::string src, std::string dst, SEXP layersTypes) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(layersTypes);
    ::cv::dnn::shrinkCaffeModel(src, dst, _a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("shrinkCaffeModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("shrinkCaffeModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_softNMSBoxes(SEXP bboxes, SEXP scores, double score_threshold, double nms_threshold, int top_k, double sigma, int method) {
  try {
    std::vector<cv::Rect> _a0 = ropecv::as_rects(bboxes);
    std::vector<float> _a1 = ropecv::as_flt_vector(scores);
    std::vector<float> _o0;
    std::vector<int> _o1;
    ::cv::dnn::softNMSBoxes(_a0, _a1, _o0, (float)score_threshold, (float)nms_threshold, _o1, (size_t)top_k, (float)sigma, (cv::dnn::SoftNMSMethod)method);
    return Rcpp::List::create(Rcpp::Named("updated_scores") = Rcpp::wrap(_o0),
                                Rcpp::Named("indices") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("softNMSBoxes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("softNMSBoxes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_writeTextGraph(std::string model, std::string output) {
  try {
    ::cv::dnn::writeTextGraph(model, output);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("writeTextGraph: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("writeTextGraph: %s", e.what());
  }
}
