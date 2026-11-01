# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_quality_QualityPSNR_QualityPSNR_create__0 <- function(ref, maxPixelValue = 255) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_create__0`, ref, maxPixelValue)
.ropecv_cv_quality_QualityPSNR_QualityPSNR_compute__1 <- function(ref, cmp, maxPixelValue = 255, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_compute__1`, ref, cmp, maxPixelValue, dst)
.ropecv_cv_quality_QualityPSNR_QualityPSNR_clear__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_clear__0`, self)
.ropecv_cv_quality_QualityPSNR_QualityPSNR_compute__0 <- function(self, cmp) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_compute__0`, self, cmp)
.ropecv_cv_quality_QualityPSNR_QualityPSNR_empty__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_empty__0`, self)
.ropecv_cv_quality_QualityPSNR_QualityPSNR_getMaxPixelValue__0 <- function(self) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_getMaxPixelValue__0`, self)
.ropecv_cv_quality_QualityPSNR_QualityPSNR_setMaxPixelValue__0 <- function(self, val) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_setMaxPixelValue__0`, self, val)

cvQualityPSNR <- function(...) .ropecv_new("cvQualityPSNR", "cvQualityPSNR", list(...))

# cv::quality::QualityPSNR::compute
cvQualityPSNR_compute <- function(ref, cmp, maxPixelValue = 255, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityPSNR_QualityPSNR_compute__1`, ref, cmp, maxPixelValue, dst)
