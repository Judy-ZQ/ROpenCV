# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_quality_QualitySSIM_QualitySSIM_create__0 <- function(ref) .Call(`_ROpenCV_cv_quality_QualitySSIM_QualitySSIM_create__0`, ref)
.ropecv_cv_quality_QualitySSIM_QualitySSIM_compute__1 <- function(ref, cmp, dst = NULL) .Call(`_ROpenCV_cv_quality_QualitySSIM_QualitySSIM_compute__1`, ref, cmp, dst)
.ropecv_cv_quality_QualitySSIM_QualitySSIM_clear__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualitySSIM_QualitySSIM_clear__0`, self)
.ropecv_cv_quality_QualitySSIM_QualitySSIM_compute__0 <- function(self, cmp) .Call(`_ROpenCV_cv_quality_QualitySSIM_QualitySSIM_compute__0`, self, cmp)
.ropecv_cv_quality_QualitySSIM_QualitySSIM_empty__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualitySSIM_QualitySSIM_empty__0`, self)

cvQualitySSIM <- function(...) .ropecv_new("cvQualitySSIM", "cvQualitySSIM", list(...))

# cv::quality::QualitySSIM::compute
cvQualitySSIM_compute <- function(ref, cmp, dst = NULL) .Call(`_ROpenCV_cv_quality_QualitySSIM_QualitySSIM_compute__1`, ref, cmp, dst)
