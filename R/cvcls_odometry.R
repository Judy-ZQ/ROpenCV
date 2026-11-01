# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_Odometry_Odometry_new__0 <- function() .Call(`_ROpenCV_cv_Odometry_Odometry_new__0`)
.ropecv_cv_Odometry_Odometry_new__1 <- function(otype) .Call(`_ROpenCV_cv_Odometry_Odometry_new__1`, otype)
.ropecv_cv_Odometry_Odometry_new__2 <- function(otype, settings, algtype) .Call(`_ROpenCV_cv_Odometry_Odometry_new__2`, otype, settings, algtype)
.ropecv_cv_Odometry_Odometry_compute__0 <- function(self, srcFrame, dstFrame, dst = NULL) .Call(`_ROpenCV_cv_Odometry_Odometry_compute__0`, self, srcFrame, dstFrame, dst)
.ropecv_cv_Odometry_Odometry_compute__1 <- function(self, srcDepth, dstDepth, dst = NULL) .Call(`_ROpenCV_cv_Odometry_Odometry_compute__1`, self, srcDepth, dstDepth, dst)
.ropecv_cv_Odometry_Odometry_compute__2 <- function(self, srcDepth, srcRGB, dstDepth, dstRGB, dst = NULL) .Call(`_ROpenCV_cv_Odometry_Odometry_compute__2`, self, srcDepth, srcRGB, dstDepth, dstRGB, dst)
.ropecv_cv_Odometry_Odometry_getNormalsComputer__0 <- function(self) .Call(`_ROpenCV_cv_Odometry_Odometry_getNormalsComputer__0`, self)
.ropecv_cv_Odometry_Odometry_prepareFrame__0 <- function(self, frame) .Call(`_ROpenCV_cv_Odometry_Odometry_prepareFrame__0`, self, frame)
.ropecv_cv_Odometry_Odometry_prepareFrames__0 <- function(self, srcFrame, dstFrame) .Call(`_ROpenCV_cv_Odometry_Odometry_prepareFrames__0`, self, srcFrame, dstFrame)

cvOdometry <- function(...) .ropecv_new("cvOdometry", "cvOdometry", list(...))
