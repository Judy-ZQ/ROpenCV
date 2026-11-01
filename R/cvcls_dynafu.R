# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_dynafu_DynaFu_DynaFu_create__0 <- function(params) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_create__0`, params)
.ropecv_cv_dynafu_DynaFu_DynaFu_getCloud__0 <- function(self, points = NULL, normals = NULL) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_getCloud__0`, self, points, normals)
.ropecv_cv_dynafu_DynaFu_DynaFu_getNormals__0 <- function(self, points, dst = NULL) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_getNormals__0`, self, points, dst)
.ropecv_cv_dynafu_DynaFu_DynaFu_getPoints__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_getPoints__0`, self, dst)
.ropecv_cv_dynafu_DynaFu_DynaFu_render__0 <- function(self, dst = NULL, cameraPose) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_render__0`, self, dst, cameraPose)
.ropecv_cv_dynafu_DynaFu_DynaFu_reset__0 <- function(self) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_reset__0`, self)
.ropecv_cv_dynafu_DynaFu_DynaFu_update__0 <- function(self, depth) .Call(`_ROpenCV_cv_dynafu_DynaFu_DynaFu_update__0`, self, depth)

cvDynaFu <- function(...) .ropecv_new("cvDynaFu", "cvDynaFu", list(...))
