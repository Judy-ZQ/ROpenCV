# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_flann_Index_Index_new__0 <- function() .Call(`_ROpenCV_cv_flann_Index_Index_new__0`)
.ropecv_cv_flann_Index_Index_new__1 <- function(features, params = list(), distType = FLANN_DIST_L2) .Call(`_ROpenCV_cv_flann_Index_Index_new__1`, features, params, distType)
.ropecv_cv_flann_Index_Index_build__0 <- function(self, features, params = list(), distType = FLANN_DIST_L2) .Call(`_ROpenCV_cv_flann_Index_Index_build__0`, self, features, params, distType)
.ropecv_cv_flann_Index_Index_getAlgorithm__0 <- function(self) .Call(`_ROpenCV_cv_flann_Index_Index_getAlgorithm__0`, self)
.ropecv_cv_flann_Index_Index_getDistance__0 <- function(self) .Call(`_ROpenCV_cv_flann_Index_Index_getDistance__0`, self)
.ropecv_cv_flann_Index_Index_knnSearch__0 <- function(self, query, knn, params = list(), indices = NULL, dists = NULL) .Call(`_ROpenCV_cv_flann_Index_Index_knnSearch__0`, self, query, knn, params, indices, dists)
.ropecv_cv_flann_Index_Index_load__0 <- function(self, features, filename) .Call(`_ROpenCV_cv_flann_Index_Index_load__0`, self, features, filename)
.ropecv_cv_flann_Index_Index_radiusSearch__0 <- function(self, query, radius, maxResults, params = list(), indices = NULL, dists = NULL) .Call(`_ROpenCV_cv_flann_Index_Index_radiusSearch__0`, self, query, radius, maxResults, params, indices, dists)
.ropecv_cv_flann_Index_Index_release__0 <- function(self) .Call(`_ROpenCV_cv_flann_Index_Index_release__0`, self)
.ropecv_cv_flann_Index_Index_save__0 <- function(self, filename) .Call(`_ROpenCV_cv_flann_Index_Index_save__0`, self, filename)

cvIndex <- function(...) .ropecv_new("cvIndex", "cvIndex", list(...))
