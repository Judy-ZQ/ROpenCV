# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::dynafu::DynaFu
.ropecv_reg("cvDynaFu",
  new = list(
    list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_create__0, p = c(params = "obj"), r = c(TRUE), s = "params")
  ),
  m = list(
    getCloud = list(
      list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_getCloud__0, p = c(points = "mat", normals = "mat"), r = c(FALSE, FALSE), s = "points = NULL, normals = NULL")
    ),
    getNormals = list(
      list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_getNormals__0, p = c(points = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "points, dst = NULL")
    ),
    getPoints = list(
      list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_getPoints__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    render = list(
      list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_render__0, p = c(dst = "mat", cameraPose = "any"), r = c(FALSE, TRUE), s = "dst = NULL, cameraPose")
    ),
    reset = list(
      list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_reset__0, p = c(), r = c(), s = "")
    ),
    update = list(
      list(f = .ropecv_cv_dynafu_DynaFu_DynaFu_update__0, p = c(depth = "mat"), r = c(TRUE), s = "depth")
    )
  )
)
