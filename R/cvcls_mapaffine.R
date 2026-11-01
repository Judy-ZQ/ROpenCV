# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_MapAffine_MapAffine_new__0 <- function() .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_new__0`)
.ropecv_cv_reg_MapAffine_MapAffine_new__1 <- function(linTr, shift) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_new__1`, linTr, shift)
.ropecv_cv_reg_MapAffine_MapAffine_compose__0 <- function(self, map) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_compose__0`, self, map)
.ropecv_cv_reg_MapAffine_MapAffine_getLinTr__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_getLinTr__0`, self, dst)
.ropecv_cv_reg_MapAffine_MapAffine_getShift__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_getShift__0`, self, dst)
.ropecv_cv_reg_MapAffine_MapAffine_inverseMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_inverseMap__0`, self)
.ropecv_cv_reg_MapAffine_MapAffine_inverseWarp__0 <- function(self, img1, dst = NULL) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_inverseWarp__0`, self, img1, dst)
.ropecv_cv_reg_MapAffine_MapAffine_scale__0 <- function(self, factor) .Call(`_ROpenCV_cv_reg_MapAffine_MapAffine_scale__0`, self, factor)

cvMapAffine <- function(...) .ropecv_new("cvMapAffine", "cvMapAffine", list(...))
