# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_enforceLabelConnectivity__0 <- function(self, min_element_size = 25) .Call(`_ROpenCV_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_enforceLabelConnectivity__0`, self, min_element_size)
.ropecv_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_getLabelContourMask__0 <- function(self, dst = NULL, thick_line = TRUE) .Call(`_ROpenCV_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_getLabelContourMask__0`, self, dst, thick_line)
.ropecv_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_getLabels__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_getLabels__0`, self, dst)
.ropecv_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_getNumberOfSuperpixels__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_getNumberOfSuperpixels__0`, self)
.ropecv_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_iterate__0 <- function(self, num_iterations = 10) .Call(`_ROpenCV_cv_ximgproc_SuperpixelLSC_SuperpixelLSC_iterate__0`, self, num_iterations)

cvSuperpixelLSC <- function(...) .ropecv_new("cvSuperpixelLSC", "cvSuperpixelLSC", list(...))
