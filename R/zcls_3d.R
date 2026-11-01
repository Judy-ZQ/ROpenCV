# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::Octree
.ropecv_reg("cvOctree",
  new = list(

  ),
  m = list(
    KNNSearch = list(
      list(f = .ropecv_cv_Octree_Octree_KNNSearch__0, p = c(query = "any", K = "int", points = "mat", squareDists = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "query, K, points = NULL, squareDists = NULL"),
      list(f = .ropecv_cv_Octree_Octree_KNNSearch__1, p = c(query = "any", K = "int", points = "mat", colors = "mat", squareDists = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "query, K, points = NULL, colors = NULL, squareDists = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Octree_Octree_clear__0, p = c(), r = c(), s = "")
    ),
    deletePoint = list(
      list(f = .ropecv_cv_Octree_Octree_deletePoint__0, p = c(point = "any"), r = c(TRUE), s = "point")
    ),
    empty = list(
      list(f = .ropecv_cv_Octree_Octree_empty__0, p = c(), r = c(), s = "")
    ),
    getPointCloudByOctree = list(
      list(f = .ropecv_cv_Octree_Octree_getPointCloudByOctree__0, p = c(restoredPointCloud = "mat", restoredColor = "mat"), r = c(FALSE, FALSE), s = "restoredPointCloud = NULL, restoredColor = NULL")
    ),
    insertPoint = list(
      list(f = .ropecv_cv_Octree_Octree_insertPoint__0, p = c(point = "any", color = "any"), r = c(TRUE, TRUE), s = "point, color")
    ),
    isPointInBound = list(
      list(f = .ropecv_cv_Octree_Octree_isPointInBound__0, p = c(point = "any"), r = c(TRUE), s = "point")
    ),
    radiusNNSearch = list(
      list(f = .ropecv_cv_Octree_Octree_radiusNNSearch__0, p = c(query = "any", radius = "dbl", points = "mat", squareDists = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "query, radius, points = NULL, squareDists = NULL"),
      list(f = .ropecv_cv_Octree_Octree_radiusNNSearch__1, p = c(query = "any", radius = "dbl", points = "mat", colors = "mat", squareDists = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "query, radius, points = NULL, colors = NULL, squareDists = NULL")
    )
  )
)

# cv::TriangleRasterizeSettings
.ropecv_reg("cvTriangleRasterizeSettings",
  new = list(

  ),
  m = list(
    setCullingMode = list(
      list(f = .ropecv_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setCullingMode__0, p = c(cm = "any"), r = c(TRUE), s = "cm")
    ),
    setGlCompatibleMode = list(
      list(f = .ropecv_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setGlCompatibleMode__0, p = c(gm = "any"), r = c(TRUE), s = "gm")
    ),
    setShadingType = list(
      list(f = .ropecv_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setShadingType__0, p = c(st = "any"), r = c(TRUE), s = "st")
    )
  )
)

# cv::UsacParams
.ropecv_reg("cvUsacParams",
  new = list(
    list(f = .ropecv_cv_UsacParams_UsacParams_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
