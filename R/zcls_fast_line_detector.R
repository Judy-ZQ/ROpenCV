# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ximgproc::FastLineDetector
.ropecv_reg("cvFastLineDetector",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_ximgproc_FastLineDetector_FastLineDetector_detect__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    drawSegments = list(
      list(f = .ropecv_cv_ximgproc_FastLineDetector_FastLineDetector_drawSegments__0, p = c(image = "mat", lines = "mat", draw_arrow = "lgl", linecolor = "scalar", linethickness = "int"), r = c(FALSE, TRUE, FALSE, FALSE, FALSE), s = "image = NULL, lines, draw_arrow = FALSE, linecolor = c(0, 0, 255), linethickness = 1")
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
