# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_create__0 <- function(model_file_path, range_file_path) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_create__0`, model_file_path, range_file_path)
.ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_create__1 <- function(model, range) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_create__1`, model, range)
.ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_computeFeatures__2 <- function(img, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_computeFeatures__2`, img, dst)
.ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_compute__3 <- function(img, model_file_path, range_file_path) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_compute__3`, img, model_file_path, range_file_path)
.ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_compute__0 <- function(self, img) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_compute__0`, self, img)

cvQualityBRISQUE <- function(...) .ropecv_new("cvQualityBRISQUE", "cvQualityBRISQUE", list(...))

# cv::quality::QualityBRISQUE::computeFeatures
cvQualityBRISQUE_computeFeatures <- function(img, dst = NULL) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_computeFeatures__2`, img, dst)

# cv::quality::QualityBRISQUE::compute
cvQualityBRISQUE_compute <- function(img, model_file_path, range_file_path) .Call(`_ROpenCV_cv_quality_QualityBRISQUE_QualityBRISQUE_compute__3`, img, model_file_path, range_file_path)
