# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_OdometryFrame_OdometryFrame_new__0 <- function(depth = NULL, image = NULL, mask = NULL, normals = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_new__0`, depth, image, mask, normals)
.ropecv_cv_OdometryFrame_OdometryFrame_getDepth__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getDepth__0`, self, dst)
.ropecv_cv_OdometryFrame_OdometryFrame_getGrayImage__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getGrayImage__0`, self, dst)
.ropecv_cv_OdometryFrame_OdometryFrame_getImage__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getImage__0`, self, dst)
.ropecv_cv_OdometryFrame_OdometryFrame_getMask__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getMask__0`, self, dst)
.ropecv_cv_OdometryFrame_OdometryFrame_getNormals__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getNormals__0`, self, dst)
.ropecv_cv_OdometryFrame_OdometryFrame_getProcessedDepth__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getProcessedDepth__0`, self, dst)
.ropecv_cv_OdometryFrame_OdometryFrame_getPyramidAt__0 <- function(self, dst = NULL, pyrType, level) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getPyramidAt__0`, self, dst, pyrType, level)
.ropecv_cv_OdometryFrame_OdometryFrame_getPyramidLevels__0 <- function(self) .Call(`_ROpenCV_cv_OdometryFrame_OdometryFrame_getPyramidLevels__0`, self)

cvOdometryFrame <- function(...) .ropecv_new("cvOdometryFrame", "cvOdometryFrame", list(...))
