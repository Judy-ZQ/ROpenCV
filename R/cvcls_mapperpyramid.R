# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_reg_MapTypeCaster_MapTypeCaster_toAffine__0 <- function(sourceMap) .Call(`_ROpenCV_cv_reg_MapTypeCaster_MapTypeCaster_toAffine__0`, sourceMap)
.ropecv_cv_reg_MapTypeCaster_MapTypeCaster_toShift__1 <- function(sourceMap) .Call(`_ROpenCV_cv_reg_MapTypeCaster_MapTypeCaster_toShift__1`, sourceMap)
.ropecv_cv_reg_MapTypeCaster_MapTypeCaster_toProjec__2 <- function(sourceMap) .Call(`_ROpenCV_cv_reg_MapTypeCaster_MapTypeCaster_toProjec__2`, sourceMap)
.ropecv_cv_reg_MapperPyramid_MapperPyramid_new__0 <- function(baseMapper) .Call(`_ROpenCV_cv_reg_MapperPyramid_MapperPyramid_new__0`, baseMapper)
.ropecv_cv_reg_MapperPyramid_MapperPyramid_calculate__0 <- function(self, img1, img2, init = NULL) .Call(`_ROpenCV_cv_reg_MapperPyramid_MapperPyramid_calculate__0`, self, img1, img2, init)
.ropecv_cv_reg_MapperPyramid_MapperPyramid_getMap__0 <- function(self) .Call(`_ROpenCV_cv_reg_MapperPyramid_MapperPyramid_getMap__0`, self)

cvMapperPyramid <- function(...) .ropecv_new("cvMapperPyramid", "cvMapperPyramid", list(...))
