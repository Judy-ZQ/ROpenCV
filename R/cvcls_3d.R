# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_Octree_Octree_createWithDepth__0 <- function(maxDepth, pointCloud, colors = NULL) .Call(`_ROpenCV_cv_Octree_Octree_createWithDepth__0`, maxDepth, pointCloud, colors)
.ropecv_cv_Octree_Octree_createWithResolution__1 <- function(resolution, pointCloud, colors = NULL) .Call(`_ROpenCV_cv_Octree_Octree_createWithResolution__1`, resolution, pointCloud, colors)
.ropecv_cv_Octree_Octree_createWithDepth__2 <- function(maxDepth, size, origin, withColors = FALSE) .Call(`_ROpenCV_cv_Octree_Octree_createWithDepth__2`, maxDepth, size, origin, withColors)
.ropecv_cv_Octree_Octree_createWithResolution__3 <- function(resolution, size, origin, withColors = FALSE) .Call(`_ROpenCV_cv_Octree_Octree_createWithResolution__3`, resolution, size, origin, withColors)
.ropecv_cv_Octree_Octree_KNNSearch__0 <- function(self, query, K, points = NULL, squareDists = NULL) .Call(`_ROpenCV_cv_Octree_Octree_KNNSearch__0`, self, query, K, points, squareDists)
.ropecv_cv_Octree_Octree_KNNSearch__1 <- function(self, query, K, points = NULL, colors = NULL, squareDists = NULL) .Call(`_ROpenCV_cv_Octree_Octree_KNNSearch__1`, self, query, K, points, colors, squareDists)
.ropecv_cv_Octree_Octree_clear__0 <- function(self) .Call(`_ROpenCV_cv_Octree_Octree_clear__0`, self)
.ropecv_cv_Octree_Octree_deletePoint__0 <- function(self, point) .Call(`_ROpenCV_cv_Octree_Octree_deletePoint__0`, self, point)
.ropecv_cv_Octree_Octree_empty__0 <- function(self) .Call(`_ROpenCV_cv_Octree_Octree_empty__0`, self)
.ropecv_cv_Octree_Octree_getPointCloudByOctree__0 <- function(self, restoredPointCloud = NULL, restoredColor = NULL) .Call(`_ROpenCV_cv_Octree_Octree_getPointCloudByOctree__0`, self, restoredPointCloud, restoredColor)
.ropecv_cv_Octree_Octree_insertPoint__0 <- function(self, point, color) .Call(`_ROpenCV_cv_Octree_Octree_insertPoint__0`, self, point, color)
.ropecv_cv_Octree_Octree_isPointInBound__0 <- function(self, point) .Call(`_ROpenCV_cv_Octree_Octree_isPointInBound__0`, self, point)
.ropecv_cv_Octree_Octree_radiusNNSearch__0 <- function(self, query, radius, points = NULL, squareDists = NULL) .Call(`_ROpenCV_cv_Octree_Octree_radiusNNSearch__0`, self, query, radius, points, squareDists)
.ropecv_cv_Octree_Octree_radiusNNSearch__1 <- function(self, query, radius, points = NULL, colors = NULL, squareDists = NULL) .Call(`_ROpenCV_cv_Octree_Octree_radiusNNSearch__1`, self, query, radius, points, colors, squareDists)
.ropecv_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setCullingMode__0 <- function(self, cm) .Call(`_ROpenCV_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setCullingMode__0`, self, cm)
.ropecv_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setGlCompatibleMode__0 <- function(self, gm) .Call(`_ROpenCV_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setGlCompatibleMode__0`, self, gm)
.ropecv_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setShadingType__0 <- function(self, st) .Call(`_ROpenCV_cv_TriangleRasterizeSettings_TriangleRasterizeSettings_setShadingType__0`, self, st)
.ropecv_cv_UsacParams_UsacParams_new__0 <- function() .Call(`_ROpenCV_cv_UsacParams_UsacParams_new__0`)

cvOctree <- function(...) .ropecv_new("cvOctree", "cvOctree", list(...))

# cv::Octree::createWithDepth
cvOctree_createWithDepth <- function(maxDepth, pointCloud, colors = NULL) .Call(`_ROpenCV_cv_Octree_Octree_createWithDepth__0`, maxDepth, pointCloud, colors)

# cv::Octree::createWithResolution
cvOctree_createWithResolution <- function(resolution, pointCloud, colors = NULL) .Call(`_ROpenCV_cv_Octree_Octree_createWithResolution__1`, resolution, pointCloud, colors)

# cv::Octree::createWithDepth
cvOctree_createWithDepth <- function(maxDepth, size, origin, withColors = FALSE) .Call(`_ROpenCV_cv_Octree_Octree_createWithDepth__2`, maxDepth, size, origin, withColors)

# cv::Octree::createWithResolution
cvOctree_createWithResolution <- function(resolution, size, origin, withColors = FALSE) .Call(`_ROpenCV_cv_Octree_Octree_createWithResolution__3`, resolution, size, origin, withColors)

cvTriangleRasterizeSettings <- function(...) .ropecv_new("cvTriangleRasterizeSettings", "cvTriangleRasterizeSettings", list(...))

cvUsacParams <- function(...) .ropecv_new("cvUsacParams", "cvUsacParams", list(...))
