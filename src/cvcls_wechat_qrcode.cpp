// 由 tools/gen/emit_classes.py 生成，请勿手改。
#include "ropecv.h"
#include <opencv2/wechat_qrcode.hpp>

// [[Rcpp::export]]
SEXP cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_new__0(std::string detector_prototxt_path, std::string detector_caffe_model_path, std::string super_resolution_prototxt_path, std::string super_resolution_caffe_model_path) {
  try {
    cv::Ptr<cv::wechat_qrcode::WeChatQRCode> _rv(new cv::wechat_qrcode::WeChatQRCode(detector_prototxt_path, detector_caffe_model_path, super_resolution_prototxt_path, super_resolution_caffe_model_path));
    return ropecv::wrap_obj(_rv, "cvWeChatQRCode");
  } catch (const cv::Exception& e) {
    Rcpp::stop("cvWeChatQRCode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("cvWeChatQRCode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_detectAndDecode__0(SEXP ropecv_self_, SEXP img, SEXP points) {
  try {
    ropecv::InArg _i0(img);
    std::vector<cv::Mat> _o0;
    std::vector<std::string> _rv = ropecv::obj_as<cv::wechat_qrcode::WeChatQRCode>(ropecv_self_)->detectAndDecode(_i0.ia(), cv::_OutputArray(_o0));
    return Rcpp::List::create(Rcpp::Named("value") = Rcpp::wrap(_rv),
                                Rcpp::Named("points") = ropecv::wrap_mat_vector(_o0));
  } catch (const cv::Exception& e) {
    Rcpp::stop("detectAndDecode: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("detectAndDecode: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_getScaleFactor__0(SEXP ropecv_self_) {
  try {
    double _rv = ropecv::obj_as<cv::wechat_qrcode::WeChatQRCode>(ropecv_self_)->getScaleFactor();
    return Rf_ScalarReal((double)_rv);
  } catch (const cv::Exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("getScaleFactor: %s", e.what());
  }
}

// [[Rcpp::export]]
SEXP cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_setScaleFactor__0(SEXP ropecv_self_, double scalingFactor) {
  try {
    ropecv::obj_as<cv::wechat_qrcode::WeChatQRCode>(ropecv_self_)->setScaleFactor((float)scalingFactor);
    return R_NilValue;
  } catch (const cv::Exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  } catch (const std::exception& e) {
    Rcpp::stop("setScaleFactor: %s", e.what());
  }
}
