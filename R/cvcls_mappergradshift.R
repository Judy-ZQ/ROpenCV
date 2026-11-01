# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_MapperGradShift_MapperGradShift_new__0 <- function() .Call(`_ROpenCV_cv_reg_MapperGradShift_MapperGradShift_new__0`)
.ropecv_cv_reg_MapperGradShift_MapperGradShift_calculate__0 <- function(self, img1, img2, init = NULL) .Call(`_ROpenCV_cv_reg_MapperGradShift_MapperGradShift_calculate__0`, self, img1, img2, init)
.ropecv_cv_reg_MapperGradShift_MapperGradShift_getMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_MapperGradShift_MapperGradShift_getMap__0`, self)

cvMapperGradShift <- function(...) .ropecv_new("cvMapperGradShift", "cvMapperGradShift", list(...))
