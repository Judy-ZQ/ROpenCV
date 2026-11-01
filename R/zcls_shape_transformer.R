# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::AffineTransformer
.ropecv_reg("cvAffineTransformer",
  new = list(

  ),
  m = list(
    applyTransformation = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_applyTransformation__0, p = c(input = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "input, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    estimateTransformation = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_estimateTransformation__0, p = c(transformingShape = "mat", targetShape = "mat", matches = "lst"), r = c(TRUE, TRUE, FALSE), s = "transformingShape, targetShape, matches = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getFullAffine = list(
      list(f = .ropecv_cv_AffineTransformer_AffineTransformer_getFullAffine__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setFullAffine = list(
      list(f = .ropecv_cv_AffineTransformer_AffineTransformer_setFullAffine__0, p = c(fullAffine = "lgl"), r = c(TRUE), s = "fullAffine")
    ),
    warpImage = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_warpImage__0, p = c(transformingImage = "mat", flags = "int", borderMode = "int", borderValue = "scalar", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "transformingImage, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ShapeTransformer
.ropecv_reg("cvShapeTransformer",
  new = list(

  ),
  m = list(
    applyTransformation = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_applyTransformation__0, p = c(input = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "input, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    estimateTransformation = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_estimateTransformation__0, p = c(transformingShape = "mat", targetShape = "mat", matches = "lst"), r = c(TRUE, TRUE, FALSE), s = "transformingShape, targetShape, matches = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    warpImage = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_warpImage__0, p = c(transformingImage = "mat", flags = "int", borderMode = "int", borderValue = "scalar", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "transformingImage, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ThinPlateSplineShapeTransformer
.ropecv_reg("cvThinPlateSplineShapeTransformer",
  new = list(

  ),
  m = list(
    applyTransformation = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_applyTransformation__0, p = c(input = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "input, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    estimateTransformation = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_estimateTransformation__0, p = c(transformingShape = "mat", targetShape = "mat", matches = "lst"), r = c(TRUE, TRUE, FALSE), s = "transformingShape, targetShape, matches = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getRegularizationParameter = list(
      list(f = .ropecv_cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_getRegularizationParameter__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setRegularizationParameter = list(
      list(f = .ropecv_cv_ThinPlateSplineShapeTransformer_ThinPlateSplineShapeTransformer_setRegularizationParameter__0, p = c(beta = "dbl"), r = c(TRUE), s = "beta")
    ),
    warpImage = list(
      list(f = .ropecv_cv_ShapeTransformer_ShapeTransformer_warpImage__0, p = c(transformingImage = "mat", flags = "int", borderMode = "int", borderValue = "scalar", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "transformingImage, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
