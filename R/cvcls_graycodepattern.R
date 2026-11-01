# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_create__0 <- function(width, height) .Call(`_ROpenCV_cv_structured_light_GrayCodePattern_GrayCodePattern_create__0`, width, height)
.ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_getImagesForShadowMasks__0 <- function(self, blackImage = NULL, whiteImage = NULL) .Call(`_ROpenCV_cv_structured_light_GrayCodePattern_GrayCodePattern_getImagesForShadowMasks__0`, self, blackImage, whiteImage)
.ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_getNumberOfPatternImages__0 <- function(self) .Call(`_ROpenCV_cv_structured_light_GrayCodePattern_GrayCodePattern_getNumberOfPatternImages__0`, self)
.ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_getProjPixel__0 <- function(self, patternImages, x, y) .Call(`_ROpenCV_cv_structured_light_GrayCodePattern_GrayCodePattern_getProjPixel__0`, self, patternImages, x, y)
.ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_setBlackThreshold__0 <- function(self, value) .Call(`_ROpenCV_cv_structured_light_GrayCodePattern_GrayCodePattern_setBlackThreshold__0`, self, value)
.ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_setWhiteThreshold__0 <- function(self, value) .Call(`_ROpenCV_cv_structured_light_GrayCodePattern_GrayCodePattern_setWhiteThreshold__0`, self, value)

cvGrayCodePattern <- function(...) .ropecv_new("cvGrayCodePattern", "cvGrayCodePattern", list(...))
