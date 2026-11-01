# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::large_kinfu::LargeKinfu
.ropecv_reg("cvLargeKinfu",
  new = list(
    list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_create__0, p = c(params = "obj"), r = c(TRUE), s = "params")
  ),
  m = list(
    getCloud = list(
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_getCloud__0, p = c(points = "mat", normals = "mat"), r = c(FALSE, FALSE), s = "points = NULL, normals = NULL")
    ),
    getNormals = list(
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_getNormals__0, p = c(points = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "points, dst = NULL")
    ),
    getPoints = list(
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_getPoints__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    render = list(
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_render__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL"),
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_render__1, p = c(dst = "mat", cameraPose = "any"), r = c(FALSE, TRUE), s = "dst = NULL, cameraPose")
    ),
    reset = list(
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_reset__0, p = c(), r = c(), s = "")
    ),
    update = list(
      list(f = .ropecv_cv_large_kinfu_LargeKinfu_LargeKinfu_update__0, p = c(depth = "mat"), r = c(TRUE), s = "depth")
    )
  )
)
