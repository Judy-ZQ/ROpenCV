# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_new__0 <- function(detector_prototxt_path = '', detector_caffe_model_path = '', super_resolution_prototxt_path = '', super_resolution_caffe_model_path = '') .Call(`_ROpenCV_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_new__0`, detector_prototxt_path, detector_caffe_model_path, super_resolution_prototxt_path, super_resolution_caffe_model_path)
.ropecv_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_detectAndDecode__0 <- function(self, img, points = NULL) .Call(`_ROpenCV_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_detectAndDecode__0`, self, img, points)
.ropecv_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_getScaleFactor__0 <- function(self) .Call(`_ROpenCV_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_getScaleFactor__0`, self)
.ropecv_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_setScaleFactor__0 <- function(self, scalingFactor) .Call(`_ROpenCV_cv_wechat_qrcode_WeChatQRCode_WeChatQRCode_setScaleFactor__0`, self, scalingFactor)

cvWeChatQRCode <- function(...) .ropecv_new("cvWeChatQRCode", "cvWeChatQRCode", list(...))
