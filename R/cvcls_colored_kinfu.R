# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_create__0 <- function(params) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_create__0`, params)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_getCloud__0 <- function(self, points = NULL, normals = NULL) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_getCloud__0`, self, points, normals)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_getNormals__0 <- function(self, points, dst = NULL) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_getNormals__0`, self, points, dst)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_getPoints__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_getPoints__0`, self, dst)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_render__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_render__0`, self, dst)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_render__1 <- function(self, dst = NULL, cameraPose) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_render__1`, self, dst, cameraPose)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_reset__0 <- function(self) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_reset__0`, self)
.ropecv_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_update__0 <- function(self, depth, rgb) .Call(`_ROpenCV_cv_colored_kinfu_ColoredKinFu_ColoredKinFu_update__0`, self, depth, rgb)
.ropecv_cv_colored_kinfu_Params_Params_new__0 <- function() .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_new__0`)
.ropecv_cv_colored_kinfu_Params_Params_new__1 <- function(volumeInitialPose) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_new__1`, volumeInitialPose)
.ropecv_cv_colored_kinfu_Params_Params_new__2 <- function(volumeInitialPoseRot, volumeInitialPoseTransl) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_new__2`, volumeInitialPoseRot, volumeInitialPoseTransl)
.ropecv_cv_colored_kinfu_Params_Params_defaultParams__0 <- function() .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_defaultParams__0`)
.ropecv_cv_colored_kinfu_Params_Params_coarseParams__1 <- function() .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_coarseParams__1`)
.ropecv_cv_colored_kinfu_Params_Params_hashTSDFParams__2 <- function(isCoarse) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_hashTSDFParams__2`, isCoarse)
.ropecv_cv_colored_kinfu_Params_Params_coloredTSDFParams__3 <- function(isCoarse) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_coloredTSDFParams__3`, isCoarse)
.ropecv_cv_colored_kinfu_Params_Params_setInitialVolumePose__0 <- function(self, homogen_tf) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_setInitialVolumePose__0`, self, homogen_tf)
.ropecv_cv_colored_kinfu_Params_Params_setInitialVolumePose__1 <- function(self, R, t) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_setInitialVolumePose__1`, self, R, t)

cvColoredKinFu <- function(...) .ropecv_new("cvColoredKinFu", "cvColoredKinFu", list(...))

cvColoredKinfuParams <- function(...) .ropecv_new("cvColoredKinfuParams", "cvColoredKinfuParams", list(...))

# cv::colored_kinfu::Params::defaultParams
cvColoredKinfuParams_defaultParams <- function() .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_defaultParams__0`)

# cv::colored_kinfu::Params::coarseParams
cvColoredKinfuParams_coarseParams <- function() .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_coarseParams__1`)

# cv::colored_kinfu::Params::hashTSDFParams
cvColoredKinfuParams_hashTSDFParams <- function(isCoarse) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_hashTSDFParams__2`, isCoarse)

# cv::colored_kinfu::Params::coloredTSDFParams
cvColoredKinfuParams_coloredTSDFParams <- function(isCoarse) .Call(`_ROpenCV_cv_colored_kinfu_Params_Params_coloredTSDFParams__3`, isCoarse)
