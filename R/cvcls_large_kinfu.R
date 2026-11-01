# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_create__0 <- function(params) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_create__0`, params)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_getCloud__0 <- function(self, points = NULL, normals = NULL) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_getCloud__0`, self, points, normals)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_getNormals__0 <- function(self, points, dst = NULL) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_getNormals__0`, self, points, dst)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_getPoints__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_getPoints__0`, self, dst)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_render__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_render__0`, self, dst)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_render__1 <- function(self, dst = NULL, cameraPose) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_render__1`, self, dst, cameraPose)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_reset__0 <- function(self) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_reset__0`, self)
.ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_update__0 <- function(self, depth) .Call(`_ROpenCV_cv_large_kinfu_LargeKinfu_LargeKinfu_update__0`, self, depth)
.ropecv_cv_large_kinfu_Params_Params_defaultParams__0 <- function() .Call(`_ROpenCV_cv_large_kinfu_Params_Params_defaultParams__0`)
.ropecv_cv_large_kinfu_Params_Params_coarseParams__1 <- function() .Call(`_ROpenCV_cv_large_kinfu_Params_Params_coarseParams__1`)
.ropecv_cv_large_kinfu_Params_Params_hashTSDFParams__2 <- function(isCoarse) .Call(`_ROpenCV_cv_large_kinfu_Params_Params_hashTSDFParams__2`, isCoarse)
.ropecv_cv_large_kinfu_VolumeParams_VolumeParams_defaultParams__0 <- function(volumeType) .Call(`_ROpenCV_cv_large_kinfu_VolumeParams_VolumeParams_defaultParams__0`, volumeType)
.ropecv_cv_large_kinfu_VolumeParams_VolumeParams_coarseParams__1 <- function(volumeType) .Call(`_ROpenCV_cv_large_kinfu_VolumeParams_VolumeParams_coarseParams__1`, volumeType)

cvLargeKinfu <- function(...) .ropecv_new("cvLargeKinfu", "cvLargeKinfu", list(...))
