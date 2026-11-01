# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_PyRotationWarper_PyRotationWarper_new__0 <- function() .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_new__0`)
.ropecv_cv_PyRotationWarper_PyRotationWarper_new__1 <- function(type, scale) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_new__1`, type, scale)
.ropecv_cv_PyRotationWarper_PyRotationWarper_buildMaps__0 <- function(self, src_size, K, R, xmap = NULL, ymap = NULL) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_buildMaps__0`, self, src_size, K, R, xmap, ymap)
.ropecv_cv_PyRotationWarper_PyRotationWarper_getScale__0 <- function(self) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_getScale__0`, self)
.ropecv_cv_PyRotationWarper_PyRotationWarper_setScale__0 <- function(self, float_) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_setScale__0`, self, float_)
.ropecv_cv_PyRotationWarper_PyRotationWarper_warp__0 <- function(self, src, K, R, interp_mode, border_mode, dst = NULL) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_warp__0`, self, src, K, R, interp_mode, border_mode, dst)
.ropecv_cv_PyRotationWarper_PyRotationWarper_warpBackward__0 <- function(self, src, K, R, interp_mode, border_mode, dst_size, dst = NULL) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_warpBackward__0`, self, src, K, R, interp_mode, border_mode, dst_size, dst)
.ropecv_cv_PyRotationWarper_PyRotationWarper_warpPoint__0 <- function(self, pt, K, R) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_warpPoint__0`, self, pt, K, R)
.ropecv_cv_PyRotationWarper_PyRotationWarper_warpPointBackward__0 <- function(self, pt, K, R) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_warpPointBackward__0`, self, pt, K, R)
.ropecv_cv_PyRotationWarper_PyRotationWarper_warpRoi__0 <- function(self, src_size, K, R) .Call(`_ROpenCV_cv_PyRotationWarper_PyRotationWarper_warpRoi__0`, self, src_size, K, R)

cvPyRotationWarper <- function(...) .ropecv_new("cvPyRotationWarper", "cvPyRotationWarper", list(...))
