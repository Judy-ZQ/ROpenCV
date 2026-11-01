# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::RgbdNormals
.ropecv_reg("cvRgbdNormals",
  new = list(
    list(f = .ropecv_cv_RgbdNormals_RgbdNormals_create__0, p = c(rows = "int", cols = "int", depth = "int", K = "mat", window_size = "int", diff_threshold = "dbl", method = "any"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE), s = "rows = 0, cols = 0, depth = 0, K = NULL, window_size = 5, diff_threshold = 50, method")
  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_apply__0, p = c(points = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "points, dst = NULL")
    ),
    cache = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_cache__0, p = c(), r = c(), s = "")
    ),
    getCols = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_getCols__0, p = c(), r = c(), s = "")
    ),
    getDepth = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_getDepth__0, p = c(), r = c(), s = "")
    ),
    getK = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_getK__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getMethod = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_getMethod__0, p = c(), r = c(), s = "")
    ),
    getRows = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_getRows__0, p = c(), r = c(), s = "")
    ),
    getWindowSize = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_getWindowSize__0, p = c(), r = c(), s = "")
    ),
    setCols = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_setCols__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setK = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_setK__0, p = c(val = "mat"), r = c(TRUE), s = "val")
    ),
    setRows = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_setRows__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setWindowSize = list(
      list(f = .ropecv_cv_RgbdNormals_RgbdNormals_setWindowSize__0, p = c(val = "int"), r = c(TRUE), s = "val")
    )
  )
)
