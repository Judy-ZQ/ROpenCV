# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0 <- function(self, img, points, dst = NULL) .Call(`_ROpenCV_cv_GraphicalCodeDetector_GraphicalCodeDetector_decode__0`, self, img, points, dst)
.ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0 <- function(self, img, points, straight_code = NULL) .Call(`_ROpenCV_cv_GraphicalCodeDetector_GraphicalCodeDetector_decodeMulti__0`, self, img, points, straight_code)
.ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detect__0 <- function(self, img, dst = NULL) .Call(`_ROpenCV_cv_GraphicalCodeDetector_GraphicalCodeDetector_detect__0`, self, img, dst)
.ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecode__0 <- function(self, img, points = NULL, straight_code = NULL) .Call(`_ROpenCV_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecode__0`, self, img, points, straight_code)
.ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecodeMulti__0 <- function(self, img, points = NULL, straight_code = NULL) .Call(`_ROpenCV_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectAndDecodeMulti__0`, self, img, points, straight_code)
.ropecv_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0 <- function(self, img, dst = NULL) .Call(`_ROpenCV_cv_GraphicalCodeDetector_GraphicalCodeDetector_detectMulti__0`, self, img, dst)

cvGraphicalCodeDetector <- function(...) .ropecv_new("cvGraphicalCodeDetector", "cvGraphicalCodeDetector", list(...))
