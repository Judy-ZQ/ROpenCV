# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_create__0 <- function(ddepth = CV_32FC1, dx = 1, dy = 1, ksize = 3, out_dtype = CV_8UC1, scale = 1, delta = 0, borderType = BORDER_DEFAULT) .Call(`_ROpenCV_cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_create__0`, ddepth, dx, dy, ksize, out_dtype, scale, delta, borderType)
.ropecv_cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_getRidgeFilteredImage__0 <- function(self, img, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_RidgeDetectionFilter_RidgeDetectionFilter_getRidgeFilteredImage__0`, self, img, dst)

cvRidgeDetectionFilter <- function(...) .ropecv_new("cvRidgeDetectionFilter", "cvRidgeDetectionFilter", list(...))
