# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_quality_QualityGMSD_QualityGMSD_create__0 <- function(ref) .Call(`_ROpenCV_cv_quality_QualityGMSD_QualityGMSD_create__0`, ref)
.ropecv_cv_quality_QualityGMSD_QualityGMSD_compute__1 <- function(ref, cmp, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityGMSD_QualityGMSD_compute__1`, ref, cmp, dst)
.ropecv_cv_quality_QualityGMSD_QualityGMSD_clear__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityGMSD_QualityGMSD_clear__0`, self)
.ropecv_cv_quality_QualityGMSD_QualityGMSD_compute__0 <- function(self, cmp) .Call(`_ROpenCV_cv_quality_QualityGMSD_QualityGMSD_compute__0`, self, cmp)
.ropecv_cv_quality_QualityGMSD_QualityGMSD_empty__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityGMSD_QualityGMSD_empty__0`, self)

cvQualityGMSD <- function(...) .ropecv_new("cvQualityGMSD", "cvQualityGMSD", list(...))

# cv::quality::QualityGMSD::compute
cvQualityGMSD_compute <- function(ref, cmp, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityGMSD_QualityGMSD_compute__1`, ref, cmp, dst)
