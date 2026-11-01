# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_MapProjec_MapProjec_new__0 <- function() .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_new__0`)
.ropecv_cv_reg_MapProjec_MapProjec_new__1 <- function(projTr) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_new__1`, projTr)
.ropecv_cv_reg_MapProjec_MapProjec_compose__0 <- function(self, map) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_compose__0`, self, map)
.ropecv_cv_reg_MapProjec_MapProjec_getProjTr__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_getProjTr__0`, self, dst)
.ropecv_cv_reg_MapProjec_MapProjec_inverseMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_inverseMap__0`, self)
.ropecv_cv_reg_MapProjec_MapProjec_inverseWarp__0 <- function(self, img1, dst = NULL) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_inverseWarp__0`, self, img1, dst)
.ropecv_cv_reg_MapProjec_MapProjec_normalize__0 <- function(self) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_normalize__0`, self)
.ropecv_cv_reg_MapProjec_MapProjec_scale__0 <- function(self, factor) .Call(`_ROpenCV_cv_reg_MapProjec_MapProjec_scale__0`, self, factor)

cvMapProjec <- function(...) .ropecv_new("cvMapProjec", "cvMapProjec", list(...))
