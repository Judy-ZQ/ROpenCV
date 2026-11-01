# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_DisparityFilter_DisparityFilter_filter__0 <- function(self, disparity_map_left, left_view, disparity_map_right = NULL, ROI = NULL, right_view = NULL, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_DisparityFilter_DisparityFilter_filter__0`, self, disparity_map_left, left_view, disparity_map_right, ROI, right_view, dst)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getConfidenceMap__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getConfidenceMap__0`, self)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getDepthDiscontinuityRadius__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getDepthDiscontinuityRadius__0`, self)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLRCthresh__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLRCthresh__0`, self)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLambda__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getLambda__0`, self)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getROI__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getROI__0`, self)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getSigmaColor__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_getSigmaColor__0`, self)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setDepthDiscontinuityRadius__0 <- function(self, disc_radius) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setDepthDiscontinuityRadius__0`, self, disc_radius)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLRCthresh__0 <- function(self, LRC_thresh) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLRCthresh__0`, self, LRC_thresh)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLambda__0 <- function(self, lambda) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setLambda__0`, self, lambda)
.ropecv_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setSigmaColor__0 <- function(self, sigma_color) .Call(`_ROpenCV_cv_ximgproc_DisparityWLSFilter_DisparityWLSFilter_setSigmaColor__0`, self, sigma_color)

cvDisparityFilter <- function(...) .ropecv_new("cvDisparityFilter", "cvDisparityFilter", list(...))

cvDisparityWLSFilter <- function(...) .ropecv_new("cvDisparityWLSFilter", "cvDisparityWLSFilter", list(...))
