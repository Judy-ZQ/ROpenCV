# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_new__0 <- function() .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_new__0`)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_new__1 <- function(prototxt_path, model_path) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_new__1`, prototxt_path, model_path)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_decodeWithType__0 <- function(self, img, points) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_decodeWithType__0`, self, img, points)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_detectAndDecodeWithType__0 <- function(self, img, points = NULL) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_detectAndDecodeWithType__0`, self, img, points)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_getDetectorScales__0 <- function(self) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_getDetectorScales__0`, self)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_getDownsamplingThreshold__0 <- function(self) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_getDownsamplingThreshold__0`, self)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_getGradientThreshold__0 <- function(self) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_getGradientThreshold__0`, self)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_setDetectorScales__0 <- function(self, sizes) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_setDetectorScales__0`, self, sizes)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_setDownsamplingThreshold__0 <- function(self, thresh) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_setDownsamplingThreshold__0`, self, thresh)
.ropecv_cv_barcode_BarcodeDetector_BarcodeDetector_setGradientThreshold__0 <- function(self, thresh) .Call(`_ROpenCV_cv_barcode_BarcodeDetector_BarcodeDetector_setGradientThreshold__0`, self, thresh)

cvBarcodeDetector <- function(...) .ropecv_new("cvBarcodeDetector", "cvBarcodeDetector", list(...))
