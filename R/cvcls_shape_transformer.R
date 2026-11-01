# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_AffineTransformer_AffineTransformer_getFullAffine__0 <- function(self) .Call(`_ROpenCV_cv_AffineTransformer_AffineTransformer_getFullAffine__0`, self)
.ropecv_cv_AffineTransformer_AffineTransformer_setFullAffine__0 <- function(self, fullAffine) .Call(`_ROpenCV_cv_AffineTransformer_AffineTransformer_setFullAffine__0`, self, fullAffine)
.ropecv_cv_ShapeTransformer_ShapeTransformer_applyTransformation__0 <- function(self, input, dst = NULL) .Call(`_ROpenCV_cv_ShapeTransformer_ShapeTransformer_applyTransformation__0`, self, input, dst)
.ropecv_cv_ShapeTransformer_ShapeTransformer_estimateTransformation__0 <- function(self, transformingShape, targetShape, matches = NULL) .Call(`_ROpenCV_cv_ShapeTransformer_ShapeTransformer_estimateTransformation__0`, self, transformingShape, targetShape, matches)
.ropecv_cv_ShapeTransformer_ShapeTransformer_warpImage__0 <- function(self, transformingImage, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL) .Call(`_ROpenCV_cv_ShapeTransformer_ShapeTransformer_warpImage__0`, self, transformingImage, flags, borderMode, borderValue, dst)
.ropecv_cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_getRegularizationParameter__0 <- function(self) .Call(`_ROpenCV_cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_getRegularizationParameter__0`, self)
.ropecv_cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_setRegularizationParameter__0 <- function(self, beta) .Call(`_ROpenCV_cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_setRegularizationParameter__0`, self, beta)

cvAffineTransformer <- function(...) .ropecv_new("cvAffineTransformer", "cvAffineTransformer", list(...))

cvShapeTransformer <- function(...) .ropecv_new("cvShapeTransformer", "cvShapeTransformer", list(...))

cvThinPlateSplineShapeTransformer <- function(...) .ropecv_new("cvThinPlateSplineShapeTransformer", "cvThinPlateSplineShapeTransformer", list(...))
