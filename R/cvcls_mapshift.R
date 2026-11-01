# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_MapShift_MapShift_new__0 <- function() .Call(`_ROpenCV_cv_reg_MapShift_MapShift_new__0`)
.ropecv_cv_reg_MapShift_MapShift_new__1 <- function(shift) .Call(`_ROpenCV_cv_reg_MapShift_MapShift_new__1`, shift)
.ropecv_cv_reg_MapShift_MapShift_compose__0 <- function(self, map) .Call(`_ROpenCV_cv_reg_MapShift_MapShift_compose__0`, self, map)
.ropecv_cv_reg_MapShift_MapShift_getShift__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_reg_MapShift_MapShift_getShift__0`, self, dst)
.ropecv_cv_reg_MapShift_MapShift_inverseMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_MapShift_MapShift_inverseMap__0`, self)
.ropecv_cv_reg_MapShift_MapShift_inverseWarp__0 <- function(self, img1, dst = NULL) .Call(`_ROpenCV_cv_reg_MapShift_MapShift_inverseWarp__0`, self, img1, dst)
.ropecv_cv_reg_MapShift_MapShift_scale__0 <- function(self, factor) .Call(`_ROpenCV_cv_reg_MapShift_MapShift_scale__0`, self, factor)

cvMapShift <- function(...) .ropecv_new("cvMapShift", "cvMapShift", list(...))
