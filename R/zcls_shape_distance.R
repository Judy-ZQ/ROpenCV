# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::HausdorffDistanceExtractor
.ropecv_reg("cvHausdorffDistanceExtractor",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeDistance = list(
      list(f = .ropecv_cv_ShapeDistanceExtractor_ShapeDistanceExtractor_computeDistance__0, p = c(contour1 = "mat", contour2 = "mat"), r = c(TRUE, TRUE), s = "contour1, contour2")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDistanceFlag = list(
      list(f = .ropecv_cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_getDistanceFlag__0, p = c(), r = c(), s = "")
    ),
    getRankProportion = list(
      list(f = .ropecv_cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_getRankProportion__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDistanceFlag = list(
      list(f = .ropecv_cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_setDistanceFlag__0, p = c(distanceFlag = "int"), r = c(TRUE), s = "distanceFlag")
    ),
    setRankProportion = list(
      list(f = .ropecv_cv_HausdorffDistanceExtractor_HausdorffDistanceExtractor_setRankProportion__0, p = c(rankProportion = "dbl"), r = c(TRUE), s = "rankProportion")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ShapeContextDistanceExtractor
.ropecv_reg("cvShapeContextDistanceExtractor",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeDistance = list(
      list(f = .ropecv_cv_ShapeDistanceExtractor_ShapeDistanceExtractor_computeDistance__0, p = c(contour1 = "mat", contour2 = "mat"), r = c(TRUE, TRUE), s = "contour1, contour2")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getAngularBins = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getAngularBins__0, p = c(), r = c(), s = "")
    ),
    getBendingEnergyWeight = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getBendingEnergyWeight__0, p = c(), r = c(), s = "")
    ),
    getCostExtractor = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getCostExtractor__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getImageAppearanceWeight = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getImageAppearanceWeight__0, p = c(), r = c(), s = "")
    ),
    getImages = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getImages__0, p = c(image1 = "mat", image2 = "mat"), r = c(FALSE, FALSE), s = "image1 = NULL, image2 = NULL")
    ),
    getInnerRadius = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getInnerRadius__0, p = c(), r = c(), s = "")
    ),
    getIterations = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getIterations__0, p = c(), r = c(), s = "")
    ),
    getOuterRadius = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getOuterRadius__0, p = c(), r = c(), s = "")
    ),
    getRadialBins = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getRadialBins__0, p = c(), r = c(), s = "")
    ),
    getRotationInvariant = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getRotationInvariant__0, p = c(), r = c(), s = "")
    ),
    getShapeContextWeight = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getShapeContextWeight__0, p = c(), r = c(), s = "")
    ),
    getStdDev = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getStdDev__0, p = c(), r = c(), s = "")
    ),
    getTransformAlgorithm = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_getTransformAlgorithm__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setAngularBins = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setAngularBins__0, p = c(nAngularBins = "int"), r = c(TRUE), s = "nAngularBins")
    ),
    setBendingEnergyWeight = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setBendingEnergyWeight__0, p = c(bendingEnergyWeight = "dbl"), r = c(TRUE), s = "bendingEnergyWeight")
    ),
    setCostExtractor = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setCostExtractor__0, p = c(comparer = "obj"), r = c(TRUE), s = "comparer")
    ),
    setImageAppearanceWeight = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setImageAppearanceWeight__0, p = c(imageAppearanceWeight = "dbl"), r = c(TRUE), s = "imageAppearanceWeight")
    ),
    setImages = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setImages__0, p = c(image1 = "mat", image2 = "mat"), r = c(TRUE, TRUE), s = "image1, image2")
    ),
    setInnerRadius = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setInnerRadius__0, p = c(innerRadius = "dbl"), r = c(TRUE), s = "innerRadius")
    ),
    setIterations = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setIterations__0, p = c(iterations = "int"), r = c(TRUE), s = "iterations")
    ),
    setOuterRadius = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setOuterRadius__0, p = c(outerRadius = "dbl"), r = c(TRUE), s = "outerRadius")
    ),
    setRadialBins = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setRadialBins__0, p = c(nRadialBins = "int"), r = c(TRUE), s = "nRadialBins")
    ),
    setRotationInvariant = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setRotationInvariant__0, p = c(rotationInvariant = "lgl"), r = c(TRUE), s = "rotationInvariant")
    ),
    setShapeContextWeight = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setShapeContextWeight__0, p = c(shapeContextWeight = "dbl"), r = c(TRUE), s = "shapeContextWeight")
    ),
    setStdDev = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setStdDev__0, p = c(sigma = "dbl"), r = c(TRUE), s = "sigma")
    ),
    setTransformAlgorithm = list(
      list(f = .ropecv_cv_ShapeContextDistanceExtractor_ShapeContextDistanceExtractor_setTransformAlgorithm__0, p = c(transformer = "obj"), r = c(TRUE), s = "transformer")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ShapeDistanceExtractor
.ropecv_reg("cvShapeDistanceExtractor",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeDistance = list(
      list(f = .ropecv_cv_ShapeDistanceExtractor_ShapeDistanceExtractor_computeDistance__0, p = c(contour1 = "mat", contour2 = "mat"), r = c(TRUE, TRUE), s = "contour1, contour2")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
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
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
