# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_Map_Map_compose__0 <- function(self, map) .Call(`_ROpenCV_cv_reg_Map_Map_compose__0`, self, map)
.ropecv_cv_reg_Map_Map_inverseMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_Map_Map_inverseMap__0`, self)
.ropecv_cv_reg_Map_Map_inverseWarp__0 <- function(self, img1, dst = NULL) .Call(`_ROpenCV_cv_reg_Map_Map_inverseWarp__0`, self, img1, dst)
.ropecv_cv_reg_Map_Map_scale__0 <- function(self, factor) .Call(`_ROpenCV_cv_reg_Map_Map_scale__0`, self, factor)
.ropecv_cv_reg_Map_Map_warp__0 <- function(self, img1, dst = NULL) .Call(`_ROpenCV_cv_reg_Map_Map_warp__0`, self, img1, dst)

cvMap <- function(...) .ropecv_new("cvMap", "cvMap", list(...))
