# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::quality::QualityBRISQUE
.ropecv_reg("cvQualityBRISQUE",
  new = list(
    list(f = .ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_create__0, p = c(model_file_path = "chr", range_file_path = "chr"), r = c(TRUE, TRUE), s = "model_file_path, range_file_path"),
    list(f = .ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_create__1, p = c(model = "obj", range = "any"), r = c(TRUE, TRUE), s = "model, range")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_quality_QualityBase_QualityBase_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_quality_QualityBRISQUE_QualityBRISQUE_compute__0, p = c(img = "mat"), r = c(TRUE), s = "img")
    ),
    empty = list(
      list(f = .ropecv_cv_quality_QualityBase_QualityBase_empty__0, p = c(), r = c(), s = "")
    ),
    getQualityMap = list(
      list(f = .ropecv_cv_quality_QualityBase_QualityBase_getQualityMap__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    )
  )
)
