# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::QRCodeDetector
.ropecv_reg("cvQRCodeDetector",
  new = list(
    list(f = .ropecv_cv_QRCodeDetector_QRCodeDetector_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    decode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0, p = c(img = "mat", points = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "img, points, dst = NULL")
    ),
    decodeCurved = list(
      list(f = .ropecv_cv_QRCodeDetector_QRCodeDetector_decodeCurved__0, p = c(img = "mat", points = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "img, points, dst = NULL")
    ),
    decodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, TRUE, FALSE), s = "img, points, straight_code = NULL")
    ),
    detect = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detect__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    detectAndDecode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecode__0, p = c(img = "mat", points = "mat", straight_code = "mat"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_code = NULL")
    ),
    detectAndDecodeCurved = list(
      list(f = .ropecv_cv_QRCodeDetector_QRCodeDetector_detectAndDecodeCurved__0, p = c(img = "mat", points = "mat", straight_qrcode = "mat"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_qrcode = NULL")
    ),
    detectAndDecodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_code = NULL")
    ),
    detectMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    setEpsX = list(
      list(f = .ropecv_cv_QRCodeDetector_QRCodeDetector_setEpsX__0, p = c(epsX = "dbl"), r = c(TRUE), s = "epsX")
    ),
    setEpsY = list(
      list(f = .ropecv_cv_QRCodeDetector_QRCodeDetector_setEpsY__0, p = c(epsY = "dbl"), r = c(TRUE), s = "epsY")
    ),
    setUseAlignmentMarkers = list(
      list(f = .ropecv_cv_QRCodeDetector_QRCodeDetector_setUseAlignmentMarkers__0, p = c(useAlignmentMarkers = "lgl"), r = c(TRUE), s = "useAlignmentMarkers")
    )
  )
)

# cv::QRCodeDetectorAruco
.ropecv_reg("cvQRCodeDetectorAruco",
  new = list(
    list(f = .ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_new__1, p = c(params = "lst"), r = c(TRUE), s = "params")
  ),
  m = list(
    decode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0, p = c(img = "mat", points = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "img, points, dst = NULL")
    ),
    decodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, TRUE, FALSE), s = "img, points, straight_code = NULL")
    ),
    detect = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detect__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    detectAndDecode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecode__0, p = c(img = "mat", points = "mat", straight_code = "mat"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_code = NULL")
    ),
    detectAndDecodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, FALSE, FALSE), s = "img, points = NULL, straight_code = NULL")
    ),
    detectMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    getArucoParameters = list(
      list(f = .ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getArucoParameters__0, p = c(), r = c(), s = "")
    ),
    getDetectorParameters = list(
      list(f = .ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_getDetectorParameters__0, p = c(), r = c(), s = "")
    ),
    setArucoParameters = list(
      list(f = .ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setArucoParameters__0, p = c(params = "lst"), r = c(TRUE), s = "params")
    ),
    setDetectorParameters = list(
      list(f = .ropecv_cv_QRCodeDetectorAruco_QRCodeDetectorAruco_setDetectorParameters__0, p = c(params = "lst"), r = c(TRUE), s = "params")
    )
  )
)

# cv::QRCodeDetectorAruco::Params
.ropecv_reg("cvQRCodeDetectorArucoParams",
  new = list(
    list(f = .ropecv_cv_QRCodeDetectorAruco_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::QRCodeEncoder
.ropecv_reg("cvQRCodeEncoder",
  new = list(
    list(f = .ropecv_cv_QRCodeEncoder_QRCodeEncoder_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    encode = list(
      list(f = .ropecv_cv_QRCodeEncoder_QRCodeEncoder_encode__0, p = c(encoded_info = "chr", dst = "mat"), r = c(TRUE, FALSE), s = "encoded_info, dst = NULL")
    ),
    encodeStructuredAppend = list(
      list(f = .ropecv_cv_QRCodeEncoder_QRCodeEncoder_encodeStructuredAppend__0, p = c(encoded_info = "chr", qrcodes = "lst"), r = c(TRUE, FALSE), s = "encoded_info, qrcodes = NULL")
    )
  )
)

# cv::QRCodeEncoder::Params
.ropecv_reg("cvQRCodeEncoderParams",
  new = list(
    list(f = .ropecv_cv_QRCodeEncoder_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
