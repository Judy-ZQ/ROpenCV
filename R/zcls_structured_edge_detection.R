# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ximgproc::RFFeatureGetter
.ropecv_reg("cvRFFeatureGetter",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getFeatures = list(
      list(f = .ropecv_cv_ximgproc_RFFeatureGetter_RFFeatureGetter_getFeatures__0, p = c(src = "any", features = "any", gnrmRad = "int", gsmthRad = "int", shrink = "int", outNum = "int", gradNum = "int"), r = c(TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE), s = "src, features = NULL, gnrmRad, gsmthRad, shrink, outNum, gradNum")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::StructuredEdgeDetection
.ropecv_reg("cvStructuredEdgeDetection",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeOrientation = list(
      list(f = .ropecv_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_computeOrientation__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    detectEdges = list(
      list(f = .ropecv_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_detectEdges__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    edgesNms = list(
      list(f = .ropecv_cv_ximgproc_StructuredEdgeDetection_StructuredEdgeDetection_edgesNms__0, p = c(edge_image = "mat", orientation_image = "mat", r = "int", s = "int", m = "dbl", isParallel = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "edge_image, orientation_image, r = 2, s = 0, m = 1, isParallel = TRUE, dst = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
