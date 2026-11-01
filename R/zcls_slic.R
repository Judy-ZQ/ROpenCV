# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ximgproc::SuperpixelSLIC
.ropecv_reg("cvSuperpixelSLIC",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    enforceLabelConnectivity = list(
      list(f = .ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_enforceLabelConnectivity__0, p = c(min_element_size = "int"), r = c(FALSE), s = "min_element_size = 25")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getLabelContourMask = list(
      list(f = .ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getLabelContourMask__0, p = c(dst = "mat", thick_line = "lgl"), r = c(FALSE, FALSE), s = "dst = NULL, thick_line = TRUE")
    ),
    getLabels = list(
      list(f = .ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getLabels__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getNumberOfSuperpixels = list(
      list(f = .ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_getNumberOfSuperpixels__0, p = c(), r = c(), s = "")
    ),
    iterate = list(
      list(f = .ropecv_cv_ximgproc_SuperpixelSLIC_SuperpixelSLIC_iterate__0, p = c(num_iterations = "int"), r = c(FALSE), s = "num_iterations = 10")
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
