# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_kinfu_KinFu_KinFu_create__0 <- function(params) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_create__0`, params)
.ropecv_cv_kinfu_KinFu_KinFu_getCloud__0 <- function(self, points = NULL, normals = NULL) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_getCloud__0`, self, points, normals)
.ropecv_cv_kinfu_KinFu_KinFu_getNormals__0 <- function(self, points, dst = NULL) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_getNormals__0`, self, points, dst)
.ropecv_cv_kinfu_KinFu_KinFu_getPoints__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_getPoints__0`, self, dst)
.ropecv_cv_kinfu_KinFu_KinFu_render__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_render__0`, self, dst)
.ropecv_cv_kinfu_KinFu_KinFu_render__1 <- function(self, dst = NULL, cameraPose) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_render__1`, self, dst, cameraPose)
.ropecv_cv_kinfu_KinFu_KinFu_reset__0 <- function(self) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_reset__0`, self)
.ropecv_cv_kinfu_KinFu_KinFu_update__0 <- function(self, depth) .Call(`_ROpenCV_cv_kinfu_KinFu_KinFu_update__0`, self, depth)
.ropecv_cv_kinfu_Params_Params_new__0 <- function() .Call(`_ROpenCV_cv_kinfu_Params_Params_new__0`)
.ropecv_cv_kinfu_Params_Params_new__1 <- function(volumeInitialPose) .Call(`_ROpenCV_cv_kinfu_Params_Params_new__1`, volumeInitialPose)
.ropecv_cv_kinfu_Params_Params_new__2 <- function(volumeInitialPoseRot, volumeInitialPoseTransl) .Call(`_ROpenCV_cv_kinfu_Params_Params_new__2`, volumeInitialPoseRot, volumeInitialPoseTransl)
.ropecv_cv_kinfu_Params_Params_defaultParams__0 <- function() .Call(`_ROpenCV_cv_kinfu_Params_Params_defaultParams__0`)
.ropecv_cv_kinfu_Params_Params_coarseParams__1 <- function() .Call(`_ROpenCV_cv_kinfu_Params_Params_coarseParams__1`)
.ropecv_cv_kinfu_Params_Params_hashTSDFParams__2 <- function(isCoarse) .Call(`_ROpenCV_cv_kinfu_Params_Params_hashTSDFParams__2`, isCoarse)
.ropecv_cv_kinfu_Params_Params_coloredTSDFParams__3 <- function(isCoarse) .Call(`_ROpenCV_cv_kinfu_Params_Params_coloredTSDFParams__3`, isCoarse)
.ropecv_cv_kinfu_Params_Params_setInitialVolumePose__0 <- function(self, homogen_tf) .Call(`_ROpenCV_cv_kinfu_Params_Params_setInitialVolumePose__0`, self, homogen_tf)
.ropecv_cv_kinfu_Params_Params_setInitialVolumePose__1 <- function(self, R, t) .Call(`_ROpenCV_cv_kinfu_Params_Params_setInitialVolumePose__1`, self, R, t)

cvKinFu <- function(...) .ropecv_new("cvKinFu", "cvKinFu", list(...))

cvKinfuParams <- function(...) .ropecv_new("cvKinfuParams", "cvKinfuParams", list(...))

# cv::kinfu::Params::defaultParams
cvKinfuParams_defaultParams <- function() .Call(`_ROpenCV_cv_kinfu_Params_Params_defaultParams__0`)

# cv::kinfu::Params::coarseParams
cvKinfuParams_coarseParams <- function() .Call(`_ROpenCV_cv_kinfu_Params_Params_coarseParams__1`)

# cv::kinfu::Params::hashTSDFParams
cvKinfuParams_hashTSDFParams <- function(isCoarse) .Call(`_ROpenCV_cv_kinfu_Params_Params_hashTSDFParams__2`, isCoarse)

# cv::kinfu::Params::coloredTSDFParams
cvKinfuParams_coloredTSDFParams <- function(isCoarse) .Call(`_ROpenCV_cv_kinfu_Params_Params_coloredTSDFParams__3`, isCoarse)
