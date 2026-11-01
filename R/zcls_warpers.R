# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::PyRotationWarper
.ropecv_reg("cvPyRotationWarper",
  new = list(
    list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_new__1, p = c(type = "chr", scale = "dbl"), r = c(TRUE, TRUE), s = "type, scale")
  ),
  m = list(
    buildMaps = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_buildMaps__0, p = c(src_size = "size", K = "mat", R = "mat", xmap = "mat", ymap = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "src_size, K, R, xmap = NULL, ymap = NULL")
    ),
    getScale = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_getScale__0, p = c(), r = c(), s = "")
    ),
    setScale = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_setScale__0, p = c(float_ = "dbl"), r = c(TRUE), s = "float_")
    ),
    warp = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_warp__0, p = c(src = "mat", K = "mat", R = "mat", interp_mode = "int", border_mode = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "src, K, R, interp_mode, border_mode, dst = NULL")
    ),
    warpBackward = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_warpBackward__0, p = c(src = "mat", K = "mat", R = "mat", interp_mode = "int", border_mode = "int", dst_size = "size", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "src, K, R, interp_mode, border_mode, dst_size, dst = NULL")
    ),
    warpPoint = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_warpPoint__0, p = c(pt = "pt", K = "mat", R = "mat"), r = c(TRUE, TRUE, TRUE), s = "pt, K, R")
    ),
    warpPointBackward = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_warpPointBackward__0, p = c(pt = "pt", K = "mat", R = "mat"), r = c(TRUE, TRUE, TRUE), s = "pt, K, R")
    ),
    warpRoi = list(
      list(f = .ropecv_cv_PyRotationWarper_PyRotationWarper_warpRoi__0, p = c(src_size = "size", K = "mat", R = "mat"), r = c(TRUE, TRUE, TRUE), s = "src_size, K, R")
    )
  )
)
