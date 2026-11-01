# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_create__0 <- function() .Call(`_ROpenCV_cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_create__0`)
.ropecv_cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_collectGarbage__0 <- function(self) .Call(`_ROpenCV_cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_collectGarbage__0`, self)
.ropecv_cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_filter__0 <- function(self, src, joint = NULL, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_AdaptiveManifoldFilter_AdaptiveManifoldFilter_filter__0`, self, src, joint, dst)
.ropecv_cv_ximgproc_DTFilter_DTFilter_filter__0 <- function(self, src, dDepth = -1, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_DTFilter_DTFilter_filter__0`, self, src, dDepth, dst)
.ropecv_cv_ximgproc_FastBilateralSolverFilter_FastBilateralSolverFilter_filter__0 <- function(self, src, confidence, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_FastBilateralSolverFilter_FastBilateralSolverFilter_filter__0`, self, src, confidence, dst)
.ropecv_cv_ximgproc_FastGlobalSmootherFilter_FastGlobalSmootherFilter_filter__0 <- function(self, src, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_FastGlobalSmootherFilter_FastGlobalSmootherFilter_filter__0`, self, src, dst)
.ropecv_cv_ximgproc_GuidedFilter_GuidedFilter_filter__0 <- function(self, src, dDepth = -1, dst = NULL) .Call(`_ROpenCV_cv_ximgproc_GuidedFilter_GuidedFilter_filter__0`, self, src, dDepth, dst)

cvAdaptiveManifoldFilter <- function(...) .ropecv_new("cvAdaptiveManifoldFilter", "cvAdaptiveManifoldFilter", list(...))

cvDTFilter <- function(...) .ropecv_new("cvDTFilter", "cvDTFilter", list(...))

cvFastBilateralSolverFilter <- function(...) .ropecv_new("cvFastBilateralSolverFilter", "cvFastBilateralSolverFilter", list(...))

cvFastGlobalSmootherFilter <- function(...) .ropecv_new("cvFastGlobalSmootherFilter", "cvFastGlobalSmootherFilter", list(...))

cvGuidedFilter <- function(...) .ropecv_new("cvGuidedFilter", "cvGuidedFilter", list(...))
