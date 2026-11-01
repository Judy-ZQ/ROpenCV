# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::Volume
.ropecv_reg("cvVolume",
  new = list(
    list(f = .ropecv_cv_Volume_Volume_new__0, p = c(vtype = "any", settings = "any"), r = c(FALSE, FALSE), s = "vtype = TSDF, settings = NULL")
  ),
  m = list(
    fetchNormals = list(
      list(f = .ropecv_cv_Volume_Volume_fetchNormals__0, p = c(points = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "points, dst = NULL")
    ),
    fetchPointsNormals = list(
      list(f = .ropecv_cv_Volume_Volume_fetchPointsNormals__0, p = c(points = "mat", normals = "mat"), r = c(FALSE, FALSE), s = "points = NULL, normals = NULL")
    ),
    fetchPointsNormalsColors = list(
      list(f = .ropecv_cv_Volume_Volume_fetchPointsNormalsColors__0, p = c(points = "mat", normals = "mat", colors = "mat"), r = c(FALSE, FALSE, FALSE), s = "points = NULL, normals = NULL, colors = NULL")
    ),
    getBoundingBox = list(
      list(f = .ropecv_cv_Volume_Volume_getBoundingBox__0, p = c(dst = "mat", precision = "int"), r = c(FALSE, TRUE), s = "dst = NULL, precision")
    ),
    getEnableGrowth = list(
      list(f = .ropecv_cv_Volume_Volume_getEnableGrowth__0, p = c(), r = c(), s = "")
    ),
    getTotalVolumeUnits = list(
      list(f = .ropecv_cv_Volume_Volume_getTotalVolumeUnits__0, p = c(), r = c(), s = "")
    ),
    getVisibleBlocks = list(
      list(f = .ropecv_cv_Volume_Volume_getVisibleBlocks__0, p = c(), r = c(), s = "")
    ),
    raycast = list(
      list(f = .ropecv_cv_Volume_Volume_raycast__0, p = c(cameraPose = "mat", points = "mat", normals = "mat"), r = c(TRUE, FALSE, FALSE), s = "cameraPose, points = NULL, normals = NULL")
    ),
    reset = list(
      list(f = .ropecv_cv_Volume_Volume_reset__0, p = c(), r = c(), s = "")
    ),
    setEnableGrowth = list(
      list(f = .ropecv_cv_Volume_Volume_setEnableGrowth__0, p = c(v = "lgl"), r = c(TRUE), s = "v")
    )
  )
)
