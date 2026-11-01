# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_quality_QualityMSE_QualityMSE_create__0 <- function(ref) .Call(`_ROpenCV_cv_quality_QualityMSE_QualityMSE_create__0`, ref)
.ropecv_cv_quality_QualityMSE_QualityMSE_compute__1 <- function(ref, cmp, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityMSE_QualityMSE_compute__1`, ref, cmp, dst)
.ropecv_cv_quality_QualityMSE_QualityMSE_clear__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityMSE_QualityMSE_clear__0`, self)
.ropecv_cv_quality_QualityMSE_QualityMSE_compute__0 <- function(self, cmpImgs) .Call(`_ROpenCV_cv_quality_QualityMSE_QualityMSE_compute__0`, self, cmpImgs)
.ropecv_cv_quality_QualityMSE_QualityMSE_empty__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityMSE_QualityMSE_empty__0`, self)

cvQualityMSE <- function(...) .ropecv_new("cvQualityMSE", "cvQualityMSE", list(...))

# cv::quality::QualityMSE::compute
cvQualityMSE_compute <- function(ref, cmp, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityMSE_QualityMSE_compute__1`, ref, cmp, dst)
