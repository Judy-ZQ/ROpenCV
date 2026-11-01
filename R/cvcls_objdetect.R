# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_QRCodeDetector_QRCodeDetector_new__0 <- function() .Call(`_ROpenCV_cv_QRCodeDetector_QRCodeDetector_new__0`)
.ropecv_cv_QRCodeDetector_QRCodeDetector_decodeCurved__0 <- function(self, img, points, dst = NULL) .Call(`_ROpenCV_cv_QRCodeDetector_QRCodeDetector_decodeCurved__0`, self, img, points, dst)
.ropecv_cv_QRCodeDetector_QRCodeDetector_detectAndDecodeCurved__0 <- function(self, img, points = NULL, straight_qrcode = NULL) .Call(`_ROpenCV_cv_QRCodeDetector_QRCodeDetector_detectAndDecodeCurved__0`, self, img, points, straight_qrcode)
.ropecv_cv_QRCodeDetector_QRCodeDetector_setEpsX__0 <- function(self, epsX) .Call(`_ROpenCV_cv_QRCodeDetector_QRCodeDetector_setEpsX__0`, self, epsX)
.ropecv_cv_QRCodeDetector_QRCodeDetector_setEpsY__0 <- function(self, epsY) .Call(`_ROpenCV_cv_QRCodeDetector_QRCodeDetector_setEpsY__0`, self, epsY)
.ropecv_cv_QRCodeDetector_QRCodeDetector_setUseAlignmentMarkers__0 <- function(self, useAlignmentMarkers) .Call(`_ROpenCV_cv_QRCodeDetector_QRCodeDetector_setUseAlignmentMarkers__0`, self, useAlignmentMarkers)
.ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__0 <- function() .Call(`_ROpenCV_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__0`)
.ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__1 <- function(params) .Call(`_ROpenCV_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__1`, params)
.ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getArucoParameters__0 <- function(self) .Call(`_ROpenCV_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getArucoParameters__0`, self)
.ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getDetectorParameters__0 <- function(self) .Call(`_ROpenCV_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getDetectorParameters__0`, self)
.ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setArucoParameters__0 <- function(self, params) .Call(`_ROpenCV_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setArucoParameters__0`, self, params)
.ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setDetectorParameters__0 <- function(self, params) .Call(`_ROpenCV_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setDetectorParameters__0`, self, params)
.ropecv_cv_QRCodeDetectorAruco_Params_Params_new__0 <- function() .Call(`_ROpenCV_cv_QRCodeDetectorAruco_Params_Params_new__0`)
.ropecv_cv_QRCodeEncoder_QRCodeEncoder_create__0 <- function(parameters = list()) .Call(`_ROpenCV_cv_QRCodeEncoder_QRCodeEncoder_create__0`, parameters)
.ropecv_cv_QRCodeEncoder_QRCodeEncoder_encode__0 <- function(self, encoded_info, dst = NULL) .Call(`_ROpenCV_cv_QRCodeEncoder_QRCodeEncoder_encode__0`, self, encoded_info, dst)
.ropecv_cv_QRCodeEncoder_QRCodeEncoder_encodeStructuredAppend__0 <- function(self, encoded_info, qrcodes = NULL) .Call(`_ROpenCV_cv_QRCodeEncoder_QRCodeEncoder_encodeStructuredAppend__0`, self, encoded_info, qrcodes)
.ropecv_cv_QRCodeEncoder_Params_Params_new__0 <- function() .Call(`_ROpenCV_cv_QRCodeEncoder_Params_Params_new__0`)

cvQRCodeDetector <- function(...) .ropecv_new("cvQRCodeDetector", "cvQRCodeDetector", list(...))

cvQRCodeDetectorAruco <- function(...) .ropecv_new("cvQRCodeDetectorAruco", "cvQRCodeDetectorAruco", list(...))

cvQRCodeDetectorArucoParams <- function(...) .ropecv_new("cvQRCodeDetectorArucoParams", "cvQRCodeDetectorArucoParams", list(...))

cvQRCodeEncoder <- function(...) .ropecv_new("cvQRCodeEncoder", "cvQRCodeEncoder", list(...))

cvQRCodeEncoderParams <- function(...) .ropecv_new("cvQRCodeEncoderParams", "cvQRCodeEncoderParams", list(...))
