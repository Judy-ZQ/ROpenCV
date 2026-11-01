# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::flann::Index
.ropecv_reg("cvIndex",
  new = list(
    list(f = .ropecv_cv_flann_Index_Index_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_flann_Index_Index_new__1, p = c(features = "mat", params = "any", distType = "int"), r = c(TRUE, FALSE, FALSE), s = "features, params = list(), distType = FLANN_DIST_L2")
  ),
  m = list(
    build = list(
      list(f = .ropecv_cv_flann_Index_Index_build__0, p = c(features = "mat", params = "any", distType = "int"), r = c(TRUE, FALSE, FALSE), s = "features, params = list(), distType = FLANN_DIST_L2")
    ),
    getAlgorithm = list(
      list(f = .ropecv_cv_flann_Index_Index_getAlgorithm__0, p = c(), r = c(), s = "")
    ),
    getDistance = list(
      list(f = .ropecv_cv_flann_Index_Index_getDistance__0, p = c(), r = c(), s = "")
    ),
    knnSearch = list(
      list(f = .ropecv_cv_flann_Index_Index_knnSearch__0, p = c(query = "mat", knn = "int", params = "any", indices = "mat", dists = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "query, knn, params = list(), indices = NULL, dists = NULL")
    ),
    load = list(
      list(f = .ropecv_cv_flann_Index_Index_load__0, p = c(features = "mat", filename = "chr"), r = c(TRUE, TRUE), s = "features, filename")
    ),
    radiusSearch = list(
      list(f = .ropecv_cv_flann_Index_Index_radiusSearch__0, p = c(query = "mat", radius = "dbl", maxResults = "int", params = "any", indices = "mat", dists = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "query, radius, maxResults, params = list(), indices = NULL, dists = NULL")
    ),
    release = list(
      list(f = .ropecv_cv_flann_Index_Index_release__0, p = c(), r = c(), s = "")
    ),
    save = list(
      list(f = .ropecv_cv_flann_Index_Index_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    )
  )
)
