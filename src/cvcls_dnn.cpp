// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include "ropecv_bag.h"
#include "ropecv_structs.h"
#include <opencv2/dnn/dnn.hpp>

// [[Rcpp::export]]
SEXP cv_dnn_ClassificationModel_ClassificationModel_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::ClassificationModel> _rv(new cv::dnn::ClassificationModel(_s0));
    return ropecv::wrap_obj(_rv, "cvClassificationModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvClassificationModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvClassificationModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_ClassificationModel_ClassificationModel_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::ClassificationModel> _rv(new cv::dnn::ClassificationModel(model, config));
    return ropecv::wrap_obj(_rv, "cvClassificationModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvClassificationModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvClassificationModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_ClassificationModel_ClassificationModel_classify__0(SEXP ropecv_self_, SEXP frame) {
  try {
    ropecv::InArg _i0(frame);
    int _o0 = 0;
    float _o1 = 0;
    ropecv::obj_as<cv::dnn::ClassificationModel>(ropecv_self_)->classify(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("classId") = Rf_ScalarInteger(_o0),
                                Rcpp::Named("conf") = Rf_ScalarReal((double)_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("classify: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("classify: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_ClassificationModel_ClassificationModel_getEnableSoftmaxPostProcessing__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::dnn::ClassificationModel>(ropecv_self_)->getEnableSoftmaxPostProcessing();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getEnableSoftmaxPostProcessing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getEnableSoftmaxPostProcessing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_ClassificationModel_ClassificationModel_setEnableSoftmaxPostProcessing__0(SEXP ropecv_self_, bool enable) {
  try {
    ropecv::obj_as<cv::dnn::ClassificationModel>(ropecv_self_)->setEnableSoftmaxPostProcessing(enable);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setEnableSoftmaxPostProcessing: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setEnableSoftmaxPostProcessing: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DetectionModel_DetectionModel_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::DetectionModel> _rv(new cv::dnn::DetectionModel(_s0));
    return ropecv::wrap_obj(_rv, "cvDetectionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDetectionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDetectionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DetectionModel_DetectionModel_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::DetectionModel> _rv(new cv::dnn::DetectionModel(model, config));
    return ropecv::wrap_obj(_rv, "cvDetectionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvDetectionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvDetectionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DetectionModel_DetectionModel_detect__0(SEXP ropecv_self_, SEXP frame, double confThreshold, double nmsThreshold) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<int> _o0;
    std::vector<float> _o1;
    std::vector<cv::Rect> _o2;
    ropecv::obj_as<cv::dnn::DetectionModel>(ropecv_self_)->detect(_i0.ia(), _o0, _o1, _o2, (float)confThreshold, (float)nmsThreshold);
    return Rcpp::List::create(Rcpp::Named("classIds") = Rcpp::wrap(_o0),
                                Rcpp::Named("confidences") = Rcpp::wrap(_o1),
                                Rcpp::Named("boxes") = ropecv::wrap_rects(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DetectionModel_DetectionModel_getNmsAcrossClasses__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::dnn::DetectionModel>(ropecv_self_)->getNmsAcrossClasses();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNmsAcrossClasses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNmsAcrossClasses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_DetectionModel_DetectionModel_setNmsAcrossClasses__0(SEXP ropecv_self_, bool value) {
  try {
    ropecv::obj_as<cv::dnn::DetectionModel>(ropecv_self_)->setNmsAcrossClasses(value);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNmsAcrossClasses: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNmsAcrossClasses: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Image2BlobParams_Image2BlobParams_new__0() {
  try {
    cv::Ptr<cv::dnn::Image2BlobParams> _rv(new cv::dnn::Image2BlobParams());
    return ropecv::wrap_obj(_rv, "cvImage2BlobParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvImage2BlobParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvImage2BlobParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Image2BlobParams_Image2BlobParams_new__1(SEXP scalefactor, SEXP size, SEXP mean, bool swapRB, int ddepth, int datalayout, int mode, SEXP borderValue) {
  try {
    cv::Ptr<cv::dnn::Image2BlobParams> _rv(new cv::dnn::Image2BlobParams(ropecv::as_scalar(scalefactor), ropecv::as_size(size), ropecv::as_scalar(mean), swapRB, ddepth, (cv::dnn::DataLayout)datalayout, (cv::dnn::ImagePaddingMode)mode, ropecv::as_scalar(borderValue)));
    return ropecv::wrap_obj(_rv, "cvImage2BlobParams");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvImage2BlobParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvImage2BlobParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Image2BlobParams_Image2BlobParams_blobRectToImageRect__0(SEXP ropecv_self_, SEXP rBlob, SEXP size) {
  try {
    cv::Rect _rv = ropecv::obj_as<cv::dnn::Image2BlobParams>(ropecv_self_)->blobRectToImageRect(ropecv::as_rect(rBlob), ropecv::as_size(size));
    return ropecv::wrap_rect(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobRectToImageRect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobRectToImageRect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Image2BlobParams_Image2BlobParams_blobRectsToImageRects__0(SEXP ropecv_self_, SEXP rBlob, SEXP size) {
  try {
    std::vector<cv::Rect> _a0 = ropecv::as_rects(rBlob);
    std::vector<cv::Rect> _o0;
    ropecv::obj_as<cv::dnn::Image2BlobParams>(ropecv_self_)->blobRectsToImageRects(_a0, _o0, ropecv::as_size(size));
    return ropecv::wrap_rects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("blobRectsToImageRects: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("blobRectsToImageRects: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_KeypointsModel_KeypointsModel_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::KeypointsModel> _rv(new cv::dnn::KeypointsModel(_s0));
    return ropecv::wrap_obj(_rv, "cvKeypointsModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKeypointsModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKeypointsModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_KeypointsModel_KeypointsModel_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::KeypointsModel> _rv(new cv::dnn::KeypointsModel(model, config));
    return ropecv::wrap_obj(_rv, "cvKeypointsModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvKeypointsModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvKeypointsModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_KeypointsModel_KeypointsModel_estimate__0(SEXP ropecv_self_, SEXP frame, double thresh) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<cv::Point2f> _rv = ropecv::obj_as<cv::dnn::KeypointsModel>(ropecv_self_)->estimate(_i0.ia(), (float)thresh);
    return ropecv::wrap_points2f(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("estimate: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("estimate: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Layer_Layer_finalize__0(SEXP ropecv_self_, SEXP inputs, SEXP outputs) {
  try {
    ropecv::InArg _i0(inputs);
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::dnn::Layer>(ropecv_self_)->finalize(_i0.ia(), cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("finalize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("finalize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Layer_Layer_outputNameToIndex__0(SEXP ropecv_self_, std::string outputName) {
  try {
    int _rv = ropecv::obj_as<cv::dnn::Layer>(ropecv_self_)->outputNameToIndex(outputName);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("outputNameToIndex: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("outputNameToIndex: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Layer_Layer_run__0(SEXP ropecv_self_, SEXP inputs, SEXP internals) {
  try {
    std::vector<cv::Mat> _a0 = ropecv::as_mat_vector(inputs);
    std::vector<cv::Mat> _o0;
    std::vector<cv::Mat> _o1;
    if (!Rf_isNull(internals)) _o1 = ropecv::as_mat_vector(internals);
    ropecv::obj_as<cv::dnn::Layer>(ropecv_self_)->run(_a0, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("outputs") = ropecv::wrap_mat_vector(_o0),
                                Rcpp::Named("internals") = ropecv::wrap_mat_vector(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("run: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("run: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::Model> _rv(new cv::dnn::Model(_s0));
    return ropecv::wrap_obj(_rv, "cvModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::Model> _rv(new cv::dnn::Model(model, config));
    return ropecv::wrap_obj(_rv, "cvModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_enableWinograd__0(SEXP ropecv_self_, bool useWinograd) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->enableWinograd(useWinograd);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("enableWinograd: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("enableWinograd: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_predict__0(SEXP ropecv_self_, SEXP frame, SEXP outs) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->predict(_i0.ia(), cv::_OutputArray(_o0));
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("predict: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("predict: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputCrop__0(SEXP ropecv_self_, bool crop) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputCrop(crop);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputCrop: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputCrop: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputMean__0(SEXP ropecv_self_, SEXP mean) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputMean(ropecv::as_scalar(mean));
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputMean: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputMean: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputParams__0(SEXP ropecv_self_, double scale, SEXP size, SEXP mean, bool swapRB, bool crop) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputParams(scale, ropecv::as_size(size), ropecv::as_scalar(mean), swapRB, crop);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputParams: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputParams: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputScale__0(SEXP ropecv_self_, SEXP scale) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputScale(ropecv::as_scalar(scale));
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputScale: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputScale: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputSize__0(SEXP ropecv_self_, SEXP size) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputSize(ropecv::as_size(size));
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputSize__1(SEXP ropecv_self_, int width, int height) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputSize(width, height);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputSize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputSize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setInputSwapRB__0(SEXP ropecv_self_, bool swapRB) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setInputSwapRB(swapRB);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputSwapRB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputSwapRB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setOutputNames__0(SEXP ropecv_self_, SEXP outNames) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(outNames);
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setOutputNames(_a0);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setOutputNames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setOutputNames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setPreferableBackend__0(SEXP ropecv_self_, int backendId) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setPreferableBackend((cv::dnn::Backend)backendId);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreferableBackend: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreferableBackend: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Model_Model_setPreferableTarget__0(SEXP ropecv_self_, int targetId) {
  try {
    ropecv::obj_as<cv::dnn::Model>(ropecv_self_)->setPreferableTarget((cv::dnn::Target)targetId);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreferableTarget: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreferableTarget: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_new__0() {
  try {
    cv::Ptr<cv::dnn::Net> _rv(new cv::dnn::Net());
    return ropecv::wrap_obj(_rv, "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvNet: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvNet: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_readFromModelOptimizer__0(std::string xml, std::string bin) {
  try {
    cv::dnn::Net _rv = cv::dnn::Net::readFromModelOptimizer(xml, bin);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readFromModelOptimizer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readFromModelOptimizer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_readFromModelOptimizer__1(SEXP bufferModelConfig, SEXP bufferWeights) {
  try {
    std::vector<uchar> _a0 = ropecv::as_raw_vector(bufferModelConfig);
    std::vector<uchar> _a1 = ropecv::as_raw_vector(bufferWeights);
    cv::dnn::Net _rv = cv::dnn::Net::readFromModelOptimizer(_a0, _a1);
    return ropecv::wrap_obj(cv::Ptr<cv::dnn::Net>(std::make_shared<cv::dnn::Net>(_rv)), "cvNet");
  } catch (const cv::Exception& e) {
    Rcpp::stop("readFromModelOptimizer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("readFromModelOptimizer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_addLayer__0(SEXP ropecv_self_, std::string name, std::string type, int dtype, SEXP params) {
  try {
    cv::dnn::LayerParams _b0 = ropecv::as_bag_dnn_LayerParams(params);
    int _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->addLayer(name, type, dtype, _b0);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("addLayer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addLayer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_addLayerToPrev__0(SEXP ropecv_self_, std::string name, std::string type, int dtype, SEXP params) {
  try {
    cv::dnn::LayerParams _b0 = ropecv::as_bag_dnn_LayerParams(params);
    int _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->addLayerToPrev(name, type, dtype, _b0);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("addLayerToPrev: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("addLayerToPrev: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_connect__0(SEXP ropecv_self_, std::string outPin, std::string inpPin) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->connect(outPin, inpPin);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("connect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("connect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_dump__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->dump();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("dump: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dump: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_dumpToFile__0(SEXP ropecv_self_, std::string path) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->dumpToFile(path);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpToFile: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpToFile: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_dumpToPbtxt__0(SEXP ropecv_self_, std::string path) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->dumpToPbtxt(path);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("dumpToPbtxt: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("dumpToPbtxt: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_empty__0(SEXP ropecv_self_) {
  try {
    bool _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->empty();
    return Rf_ScalarLogical(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("empty: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("empty: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_enableFusion__0(SEXP ropecv_self_, bool fusion) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->enableFusion(fusion);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("enableFusion: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("enableFusion: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_enableWinograd__0(SEXP ropecv_self_, bool useWinograd) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->enableWinograd(useWinograd);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("enableWinograd: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("enableWinograd: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_forward__0(SEXP ropecv_self_, std::string outputName) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->forward(outputName);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("forward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("forward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_forward__1(SEXP ropecv_self_, std::string outputName, SEXP outputBlobs) {
  try {
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->forward(cv::_OutputArray(_o0), outputName);
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("forward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("forward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_forward__2(SEXP ropecv_self_, SEXP outBlobNames, SEXP outputBlobs) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(outBlobNames);
    std::vector<cv::Mat> _o0;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->forward(cv::_OutputArray(_o0), _a0);
    return ropecv::wrap_mat_vector(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("forward: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("forward: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_forwardAsync__0(SEXP ropecv_self_, std::string outputName) {
  try {
    cv::AsyncArray _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->forwardAsync(outputName);
    return ropecv::wrap_obj(cv::Ptr<cv::AsyncArray>(std::make_shared<cv::AsyncArray>(_rv)), "cvAsyncArray");
  } catch (const cv::Exception& e) {
    Rcpp::stop("forwardAsync: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("forwardAsync: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getFLOPS__0(SEXP ropecv_self_, SEXP netInputShapes, SEXP netInputTypes) {
  try {
    std::vector<std::vector<int> > _a0 = Rcpp::as<std::vector<std::vector<int> > >(netInputShapes);
    std::vector<int> _a1 = ropecv::as_int_vector(netInputTypes);
    double _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getFLOPS(_a0, _a1);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getFLOPS__1(SEXP ropecv_self_, SEXP netInputShape, int netInputType) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(netInputShape);
    double _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getFLOPS(_a0, netInputType);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getFLOPS__2(SEXP ropecv_self_, int layerId, SEXP netInputShapes, SEXP netInputTypes) {
  try {
    std::vector<std::vector<int> > _a0 = Rcpp::as<std::vector<std::vector<int> > >(netInputShapes);
    std::vector<int> _a1 = ropecv::as_int_vector(netInputTypes);
    double _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getFLOPS(layerId, _a0, _a1);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getFLOPS__3(SEXP ropecv_self_, int layerId, SEXP netInputShape, int netInputType) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(netInputShape);
    double _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getFLOPS(layerId, _a0, netInputType);
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getFLOPS: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayer__0(SEXP ropecv_self_, int layerId) {
  try {
    cv::Ptr<cv::dnn::Layer> _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayer(layerId);
    return ropecv::wrap_obj(_rv, "cvLayer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayer__1(SEXP ropecv_self_, std::string layerName) {
  try {
    cv::Ptr<cv::dnn::Layer> _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayer(layerName);
    return ropecv::wrap_obj(_rv, "cvLayer");
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayer: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayer: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayerId__0(SEXP ropecv_self_, std::string layer) {
  try {
    int _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayerId(layer);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayerId: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayerId: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayerNames__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::String> _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayerNames();
    return Rcpp::wrap(std::vector<std::string>(_rv.begin(), _rv.end()));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayerNames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayerNames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayerShapes__0(SEXP ropecv_self_, SEXP netInputShape, int netInputType, int layerId) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(netInputShape);
    std::vector<std::vector<int> > _o0;
    std::vector<std::vector<int> > _o1;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayerShapes(_a0, netInputType, layerId, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("inLayerShapes") = Rcpp::wrap(_o0),
                                Rcpp::Named("outLayerShapes") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayerShapes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayerShapes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayerTypes__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::String> _o0;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayerTypes(_o0);
    return Rcpp::wrap(std::vector<std::string>(_o0.begin(), _o0.end()));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayerTypes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayerTypes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayersCount__0(SEXP ropecv_self_, std::string layerType) {
  try {
    int _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayersCount(layerType);
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayersCount: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayersCount: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayersShapes__0(SEXP ropecv_self_, SEXP netInputShapes, SEXP netInputTypes) {
  try {
    std::vector<std::vector<int> > _a0 = Rcpp::as<std::vector<std::vector<int> > >(netInputShapes);
    std::vector<int> _a1 = ropecv::as_int_vector(netInputTypes);
    std::vector<int> _o0;
    std::vector<std::vector<std::vector<int> > > _o1;
    std::vector<std::vector<std::vector<int> > > _o2;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayersShapes(_a0, _a1, _o0, _o1, _o2);
    return Rcpp::List::create(Rcpp::Named("layersIds") = Rcpp::wrap(_o0),
                                Rcpp::Named("inLayersShapes") = Rcpp::wrap(_o1),
                                Rcpp::Named("outLayersShapes") = Rcpp::wrap(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayersShapes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayersShapes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getLayersShapes__1(SEXP ropecv_self_, SEXP netInputShape, int netInputType) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(netInputShape);
    std::vector<int> _o0;
    std::vector<std::vector<std::vector<int> > > _o1;
    std::vector<std::vector<std::vector<int> > > _o2;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getLayersShapes(_a0, netInputType, _o0, _o1, _o2);
    return Rcpp::List::create(Rcpp::Named("layersIds") = Rcpp::wrap(_o0),
                                Rcpp::Named("inLayersShapes") = Rcpp::wrap(_o1),
                                Rcpp::Named("outLayersShapes") = Rcpp::wrap(_o2));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getLayersShapes: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getLayersShapes: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getMemoryConsumption__0(SEXP ropecv_self_, SEXP netInputShape, int netInputType) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(netInputShape);
    size_t _o0;
    size_t _o1;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getMemoryConsumption(_a0, netInputType, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("weights") = Rf_ScalarInteger((int)_o0),
                                Rcpp::Named("blobs") = Rf_ScalarInteger((int)_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMemoryConsumption: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMemoryConsumption: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getMemoryConsumption__1(SEXP ropecv_self_, int layerId, SEXP netInputShapes, SEXP netInputTypes) {
  try {
    std::vector<std::vector<int> > _a0 = Rcpp::as<std::vector<std::vector<int> > >(netInputShapes);
    std::vector<int> _a1 = ropecv::as_int_vector(netInputTypes);
    size_t _o0;
    size_t _o1;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getMemoryConsumption(layerId, _a0, _a1, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("weights") = Rf_ScalarInteger((int)_o0),
                                Rcpp::Named("blobs") = Rf_ScalarInteger((int)_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMemoryConsumption: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMemoryConsumption: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getMemoryConsumption__2(SEXP ropecv_self_, int layerId, SEXP netInputShape, int netInputType) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(netInputShape);
    size_t _o0;
    size_t _o1;
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getMemoryConsumption(layerId, _a0, netInputType, _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("weights") = Rf_ScalarInteger((int)_o0),
                                Rcpp::Named("blobs") = Rf_ScalarInteger((int)_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMemoryConsumption: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMemoryConsumption: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getParam__0(SEXP ropecv_self_, int layer, int numParam) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getParam(layer, numParam);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getParam: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getParam: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getParam__1(SEXP ropecv_self_, std::string layerName, int numParam) {
  try {
    cv::Mat _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getParam(layerName, numParam);
    return ropecv::wrap_mat(std::move(_rv));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getParam: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getParam: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getPerfProfile__0(SEXP ropecv_self_) {
  try {
    std::vector<double> _o0;
    double _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getPerfProfile(_o0);
    return Rcpp::List::create(Rcpp::Named("value") = Rf_ScalarReal((double)_rv),
                                Rcpp::Named("timings") = Rcpp::wrap(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPerfProfile: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPerfProfile: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getUnconnectedOutLayers__0(SEXP ropecv_self_) {
  try {
    std::vector<int> _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getUnconnectedOutLayers();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUnconnectedOutLayers: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUnconnectedOutLayers: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_getUnconnectedOutLayersNames__0(SEXP ropecv_self_) {
  try {
    std::vector<cv::String> _rv = ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->getUnconnectedOutLayersNames();
    return Rcpp::wrap(std::vector<std::string>(_rv.begin(), _rv.end()));
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUnconnectedOutLayersNames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUnconnectedOutLayersNames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setInput__0(SEXP ropecv_self_, SEXP blob, std::string name, double scalefactor, SEXP mean) {
  try {
    ropecv::InArg _i0(blob);
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setInput(_i0.ia(), name, scalefactor, ropecv::as_scalar(mean));
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInput: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInput: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setInputShape__0(SEXP ropecv_self_, std::string inputName, SEXP shape) {
  try {
    std::vector<int> _a0 = Rcpp::as<std::vector<int> >(shape);
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setInputShape(inputName, _a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputShape: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputShape: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setInputsNames__0(SEXP ropecv_self_, SEXP inputBlobNames) {
  try {
    std::vector<cv::String> _a0 = ropecv::as_vec_string(inputBlobNames);
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setInputsNames(_a0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setInputsNames: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setInputsNames: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setParam__0(SEXP ropecv_self_, int layer, int numParam, SEXP blob) {
  try {
    cv::Mat _m0 = Rf_isNull(blob) ? cv::Mat() : *ropecv::mat_ptr(blob);
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setParam(layer, numParam, _m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setParam: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setParam: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setParam__1(SEXP ropecv_self_, std::string layerName, int numParam, SEXP blob) {
  try {
    cv::Mat _m0 = Rf_isNull(blob) ? cv::Mat() : *ropecv::mat_ptr(blob);
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setParam(layerName, numParam, _m0);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setParam: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setParam: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setPreferableBackend__0(SEXP ropecv_self_, int backendId) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setPreferableBackend(backendId);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreferableBackend: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreferableBackend: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_Net_Net_setPreferableTarget__0(SEXP ropecv_self_, int targetId) {
  try {
    ropecv::obj_as<cv::dnn::Net>(ropecv_self_)->setPreferableTarget(targetId);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPreferableTarget: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPreferableTarget: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_SegmentationModel_SegmentationModel_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::SegmentationModel> _rv(new cv::dnn::SegmentationModel(_s0));
    return ropecv::wrap_obj(_rv, "cvSegmentationModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSegmentationModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSegmentationModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_SegmentationModel_SegmentationModel_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::SegmentationModel> _rv(new cv::dnn::SegmentationModel(model, config));
    return ropecv::wrap_obj(_rv, "cvSegmentationModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvSegmentationModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvSegmentationModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_SegmentationModel_SegmentationModel_segment__0(SEXP ropecv_self_, SEXP frame, SEXP dst) {
  try {
    ropecv::InArg _i0(frame);
    cv::Mat _owned0;
    cv::Mat* _p0 = Rf_isNull(dst) ? &_owned0 : ropecv::mat_ptr(dst);
    ropecv::obj_as<cv::dnn::SegmentationModel>(ropecv_self_)->segment(_i0.ia(), cv::_OutputArray(*_p0));
    return Rf_isNull(dst) ? ropecv::wrap_mat(std::move(_owned0)) : dst;
  } catch (const cv::Exception& e) {
    Rcpp::stop("segment: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("segment: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_TextDetectionModel_detect__0(SEXP ropecv_self_, SEXP frame) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<std::vector<cv::Point>> _o0;
    ropecv::obj_as<cv::dnn::TextDetectionModel>(ropecv_self_)->detect(_i0.ia(), _o0);
    return ropecv::wrap_points_list(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_TextDetectionModel_detect__1(SEXP ropecv_self_, SEXP frame) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<std::vector<cv::Point>> _o0;
    std::vector<float> _o1;
    ropecv::obj_as<cv::dnn::TextDetectionModel>(ropecv_self_)->detect(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("detections") = ropecv::wrap_points_list(_o0),
                                Rcpp::Named("confidences") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detect: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detect: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__0(SEXP ropecv_self_, SEXP frame) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<cv::RotatedRect> _o0;
    ropecv::obj_as<cv::dnn::TextDetectionModel>(ropecv_self_)->detectTextRectangles(_i0.ia(), _o0);
    return ropecv::wrap_rotatedrects(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectTextRectangles: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectTextRectangles: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_TextDetectionModel_detectTextRectangles__1(SEXP ropecv_self_, SEXP frame) {
  try {
    ropecv::InArg _i0(frame);
    std::vector<cv::RotatedRect> _o0;
    std::vector<float> _o1;
    ropecv::obj_as<cv::dnn::TextDetectionModel>(ropecv_self_)->detectTextRectangles(_i0.ia(), _o0, _o1);
    return Rcpp::List::create(Rcpp::Named("detections") = ropecv::wrap_rotatedrects(_o0),
                                Rcpp::Named("confidences") = Rcpp::wrap(_o1));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectTextRectangles: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectTextRectangles: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::TextDetectionModel_DB> _rv(new cv::dnn::TextDetectionModel_DB(_s0));
    return ropecv::wrap_obj(_rv, "cvTextDetectionModel_DB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTextDetectionModel_DB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTextDetectionModel_DB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::TextDetectionModel_DB> _rv(new cv::dnn::TextDetectionModel_DB(model, config));
    return ropecv::wrap_obj(_rv, "cvTextDetectionModel_DB");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTextDetectionModel_DB: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTextDetectionModel_DB: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getBinaryThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->getBinaryThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getBinaryThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getBinaryThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getMaxCandidates__0(SEXP ropecv_self_) {
  try {
    int _rv = ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->getMaxCandidates();
    return Rf_ScalarInteger(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getMaxCandidates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getMaxCandidates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getPolygonThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->getPolygonThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getPolygonThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getPolygonThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_getUnclipRatio__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->getUnclipRatio();
    return Rf_ScalarReal(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getUnclipRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getUnclipRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setBinaryThreshold__0(SEXP ropecv_self_, double binaryThreshold) {
  try {
    ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->setBinaryThreshold((float)binaryThreshold);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setBinaryThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setBinaryThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setMaxCandidates__0(SEXP ropecv_self_, int maxCandidates) {
  try {
    ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->setMaxCandidates(maxCandidates);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setMaxCandidates: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setMaxCandidates: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setPolygonThreshold__0(SEXP ropecv_self_, double polygonThreshold) {
  try {
    ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->setPolygonThreshold((float)polygonThreshold);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setPolygonThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setPolygonThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_DB_TextDetectionModel_DB_setUnclipRatio__0(SEXP ropecv_self_, double unclipRatio) {
  try {
    ropecv::obj_as<cv::dnn::TextDetectionModel_DB>(ropecv_self_)->setUnclipRatio(unclipRatio);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setUnclipRatio: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setUnclipRatio: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::TextDetectionModel_EAST> _rv(new cv::dnn::TextDetectionModel_EAST(_s0));
    return ropecv::wrap_obj(_rv, "cvTextDetectionModel_EAST");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTextDetectionModel_EAST: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTextDetectionModel_EAST: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::TextDetectionModel_EAST> _rv(new cv::dnn::TextDetectionModel_EAST(model, config));
    return ropecv::wrap_obj(_rv, "cvTextDetectionModel_EAST");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTextDetectionModel_EAST: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTextDetectionModel_EAST: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_getConfidenceThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::dnn::TextDetectionModel_EAST>(ropecv_self_)->getConfidenceThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getConfidenceThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getConfidenceThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_getNMSThreshold__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::dnn::TextDetectionModel_EAST>(ropecv_self_)->getNMSThreshold();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getNMSThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getNMSThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_setConfidenceThreshold__0(SEXP ropecv_self_, double confThreshold) {
  try {
    ropecv::obj_as<cv::dnn::TextDetectionModel_EAST>(ropecv_self_)->setConfidenceThreshold((float)confThreshold);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setConfidenceThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setConfidenceThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextDetectionModel_EAST_TextDetectionModel_EAST_setNMSThreshold__0(SEXP ropecv_self_, double nmsThreshold) {
  try {
    ropecv::obj_as<cv::dnn::TextDetectionModel_EAST>(ropecv_self_)->setNMSThreshold((float)nmsThreshold);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setNMSThreshold: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setNMSThreshold: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_new__0(SEXP network) {
  try {
    cv::dnn::Net _s0 = Rf_isNull(network) ? cv::dnn::Net() : *ropecv::obj_as<cv::dnn::Net>(network);
    cv::Ptr<cv::dnn::TextRecognitionModel> _rv(new cv::dnn::TextRecognitionModel(_s0));
    return ropecv::wrap_obj(_rv, "cvTextRecognitionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTextRecognitionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTextRecognitionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_new__1(std::string model, std::string config) {
  try {
    cv::Ptr<cv::dnn::TextRecognitionModel> _rv(new cv::dnn::TextRecognitionModel(model, config));
    return ropecv::wrap_obj(_rv, "cvTextRecognitionModel");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvTextRecognitionModel: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvTextRecognitionModel: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_getDecodeType__0(SEXP ropecv_self_) {
  try {
    std::string _rv = ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->getDecodeType();
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("getDecodeType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getDecodeType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_getVocabulary__0(SEXP ropecv_self_) {
  try {
    std::vector<std::string> _rv = ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->getVocabulary();
    return Rcpp::wrap(_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getVocabulary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getVocabulary: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_recognize__0(SEXP ropecv_self_, SEXP frame) {
  try {
    ropecv::InArg _i0(frame);
    std::string _rv = ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->recognize(_i0.ia());
    return Rf_mkString(_rv.c_str());
  } catch (const cv::Exception& e) {
    Rcpp::stop("recognize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("recognize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_recognize__1(SEXP ropecv_self_, SEXP frame, SEXP roiRects) {
  try {
    ropecv::InArg _i0(frame);
    ropecv::InArg _i1(roiRects);
    std::vector<std::string> _o0;
    ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->recognize(_i0.ia(), _i1.ia(), _o0);
    return Rcpp::wrap(_o0);
  } catch (const cv::Exception& e) {
    Rcpp::stop("recognize: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("recognize: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_setDecodeOptsCTCPrefixBeamSearch__0(SEXP ropecv_self_, int beamSize, int vocPruneSize) {
  try {
    ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->setDecodeOptsCTCPrefixBeamSearch(beamSize, vocPruneSize);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDecodeOptsCTCPrefixBeamSearch: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDecodeOptsCTCPrefixBeamSearch: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_setDecodeType__0(SEXP ropecv_self_, std::string decodeType) {
  try {
    ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->setDecodeType(decodeType);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setDecodeType: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setDecodeType: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_dnn_TextRecognitionModel_TextRecognitionModel_setVocabulary__0(SEXP ropecv_self_, SEXP vocabulary) {
  try {
    std::vector<std::string> _a0 = ropecv::as_vec_string(vocabulary);
    ropecv::obj_as<cv::dnn::TextRecognitionModel>(ropecv_self_)->setVocabulary(_a0);
    return ropecv_self_;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setVocabulary: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setVocabulary: %s", e.what());
  }
}
