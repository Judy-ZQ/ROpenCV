# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_RgbdNormals_RgbdNormals_create__0 <- function(rows = 0, cols = 0, depth = 0, K = NULL, window_size = 5, diff_threshold = 50, method) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_create__0`, rows, cols, depth, K, window_size, diff_threshold, method)
.ropecv_cv_RgbdNormals_RgbdNormals_apply__0 <- function(self, points, dst = NULL) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_apply__0`, self, points, dst)
.ropecv_cv_RgbdNormals_RgbdNormals_cache__0 <- function(self) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_cache__0`, self)
.ropecv_cv_RgbdNormals_RgbdNormals_getCols__0 <- function(self) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_getCols__0`, self)
.ropecv_cv_RgbdNormals_RgbdNormals_getDepth__0 <- function(self) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_getDepth__0`, self)
.ropecv_cv_RgbdNormals_RgbdNormals_getK__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_getK__0`, self, dst)
.ropecv_cv_RgbdNormals_RgbdNormals_getMethod__0 <- function(self) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_getMethod__0`, self)
.ropecv_cv_RgbdNormals_RgbdNormals_getRows__0 <- function(self) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_getRows__0`, self)
.ropecv_cv_RgbdNormals_RgbdNormals_getWindowSize__0 <- function(self) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_getWindowSize__0`, self)
.ropecv_cv_RgbdNormals_RgbdNormals_setCols__0 <- function(self, val) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_setCols__0`, self, val)
.ropecv_cv_RgbdNormals_RgbdNormals_setK__0 <- function(self, val) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_setK__0`, self, val)
.ropecv_cv_RgbdNormals_RgbdNormals_setRows__0 <- function(self, val) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_setRows__0`, self, val)
.ropecv_cv_RgbdNormals_RgbdNormals_setWindowSize__0 <- function(self, val) .Call(`_ROpenCV_cv_RgbdNormals_RgbdNormals_setWindowSize__0`, self, val)

cvRgbdNormals <- function(...) .ropecv_new("cvRgbdNormals", "cvRgbdNormals", list(...))
