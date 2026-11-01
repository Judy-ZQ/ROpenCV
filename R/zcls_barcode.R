# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::barcode::BarcodeDetector
.ropecv_reg("cvBarcodeDetector",
  new = list(
    list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_new__1, p = c(prototxt_path = "chr", model_path = "chr"), r = c(TRUE, TRUE), s = "prototxt_path, model_path")
  ),
  m = list(
    decode = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0, p = c(img = "mat", points = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "img, points, dst = NULL")
    ),
    decodeMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0, p = c(img = "mat", points = "mat", straight_code = "lst"), r = c(TRUE, TRUE, FALSE), s = "img, points, straight_code = NULL")
    ),
    decodeWithType = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_decodeWithType__0, p = c(img = "mat", points = "mat"), r = c(TRUE, TRUE), s = "img, points")
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
    detectAndDecodeWithType = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_detectAndDecodeWithType__0, p = c(img = "mat", points = "mat"), r = c(TRUE, FALSE), s = "img, points = NULL")
    ),
    detectMulti = list(
      list(f = .ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0, p = c(img = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "img, dst = NULL")
    ),
    getDetectorScales = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_getDetectorScales__0, p = c(), r = c(), s = "")
    ),
    getDownsamplingThreshold = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_getDownsamplingThreshold__0, p = c(), r = c(), s = "")
    ),
    getGradientThreshold = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_getGradientThreshold__0, p = c(), r = c(), s = "")
    ),
    setDetectorScales = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_setDetectorScales__0, p = c(sizes = "dbl"), r = c(TRUE), s = "sizes")
    ),
    setDownsamplingThreshold = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_setDownsamplingThreshold__0, p = c(thresh = "dbl"), r = c(TRUE), s = "thresh")
    ),
    setGradientThreshold = list(
      list(f = .ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_setGradientThreshold__0, p = c(thresh = "dbl"), r = c(TRUE), s = "thresh")
    )
  )
)
