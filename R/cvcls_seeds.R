# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getLabelContourMask__0 <- function(self, dst = NULL, thick_line = FALSE) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getLabelContourMask__0`, self, dst, thick_line)
.ropecv_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getLabels__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getLabels__0`, self, dst)
.ropecv_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getNumberOfSuperpixels__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_getNumberOfSuperpixels__0`, self)
.ropecv_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_iterate__0 <- function(self, img, num_iterations = 4) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSEEDS_SuperpixelSEEDS_iterate__0`, self, img, num_iterations)

cvSuperpixelSEEDS <- function(...) .ropecv_new("cvSuperpixelSEEDS", "cvSuperpixelSEEDS", list(...))
