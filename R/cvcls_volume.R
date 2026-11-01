# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_Volume_Volume_new__0 <- function(vtype = TSDF, settings = NULL) .Call(`_ROpenCV_cv_Volume_Volume_new__0`, vtype, settings)
.ropecv_cv_Volume_Volume_fetchNormals__0 <- function(self, points, dst = NULL) .Call(`_ROpenCV_cv_Volume_Volume_fetchNormals__0`, self, points, dst)
.ropecv_cv_Volume_Volume_fetchPointsNormals__0 <- function(self, points = NULL, normals = NULL) .Call(`_ROpenCV_cv_Volume_Volume_fetchPointsNormals__0`, self, points, normals)
.ropecv_cv_Volume_Volume_fetchPointsNormalsColors__0 <- function(self, points = NULL, normals = NULL, colors = NULL) .Call(`_ROpenCV_cv_Volume_Volume_fetchPointsNormalsColors__0`, self, points, normals, colors)
.ropecv_cv_Volume_Volume_getBoundingBox__0 <- function(self, dst = NULL, precision) .Call(`_ROpenCV_cv_Volume_Volume_getBoundingBox__0`, self, dst, precision)
.ropecv_cv_Volume_Volume_getEnableGrowth__0 <- function(self) .Call(`_ROpenCV_cv_Volume_Volume_getEnableGrowth__0`, self)
.ropecv_cv_Volume_Volume_getTotalVolumeUnits__0 <- function(self) .Call(`_ROpenCV_cv_Volume_Volume_getTotalVolumeUnits__0`, self)
.ropecv_cv_Volume_Volume_getVisibleBlocks__0 <- function(self) .Call(`_ROpenCV_cv_Volume_Volume_getVisibleBlocks__0`, self)
.ropecv_cv_Volume_Volume_raycast__0 <- function(self, cameraPose, points = NULL, normals = NULL) .Call(`_ROpenCV_cv_Volume_Volume_raycast__0`, self, cameraPose, points, normals)
.ropecv_cv_Volume_Volume_reset__0 <- function(self) .Call(`_ROpenCV_cv_Volume_Volume_reset__0`, self)
.ropecv_cv_Volume_Volume_setEnableGrowth__0 <- function(self, v) .Call(`_ROpenCV_cv_Volume_Volume_setEnableGrowth__0`, self, v)

cvVolume <- function(...) .ropecv_new("cvVolume", "cvVolume", list(...))
