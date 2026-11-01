# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_enforceLabelConnectivity__0 <- function(self, min_element_size = 25) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_enforceLabelConnectivity__0`, self, min_element_size)
.ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getLabelContourMask__0 <- function(self, dst = NULL, thick_line = TRUE) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getLabelContourMask__0`, self, dst, thick_line)
.ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getLabels__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getLabels__0`, self, dst)
.ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getNumberOfSuperpixels__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getNumberOfSuperpixels__0`, self)
.ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_iterate__0 <- function(self, num_iterations = 10) .Call(`_ROpenCV_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_iterate__0`, self, num_iterations)

cvSuperpixelSLIC <- function(...) .ropecv_new("cvSuperpixelSLIC", "cvSuperpixelSLIC", list(...))
