# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_Mapper_Mapper_calculate__0 <- function(self, img1, img2, init = NULL) .Call(`_ROpenCV_cv_reg_Mapper_Mapper_calculate__0`, self, img1, img2, init)
.ropecv_cv_reg_Mapper_Mapper_getMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_Mapper_Mapper_getMap__0`, self)

cvMapper <- function(...) .ropecv_new("cvMapper", "cvMapper", list(...))
