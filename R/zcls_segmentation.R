# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::segmentation::IntelligentScissorsMB
.ropecv_reg("cvIntelligentScissorsMB",
  new = list(
    list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    applyImage = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_applyImage__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    ),
    applyImageFeatures = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_applyImageFeatures__0, p = c(non_edge = "mat", gradient_direction = "mat", gradient_magnitude = "mat", image = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "non_edge, gradient_direction, gradient_magnitude, image = NULL")
    ),
    buildMap = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_buildMap__0, p = c(sourcePt = "pt"), r = c(TRUE), s = "sourcePt")
    ),
    getContour = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_getContour__0, p = c(targetPt = "pt", backward = "lgl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "targetPt, backward = FALSE, dst = NULL")
    ),
    setEdgeFeatureCannyParameters = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setEdgeFeatureCannyParameters__0, p = c(threshold1 = "dbl", threshold2 = "dbl", apertureSize = "int", L2gradient = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "threshold1, threshold2, apertureSize = 3, L2gradient = FALSE")
    ),
    setEdgeFeatureZeroCrossingParameters = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setEdgeFeatureZeroCrossingParameters__0, p = c(gradient_magnitude_min_value = "dbl"), r = c(FALSE), s = "gradient_magnitude_min_value = 0.0")
    ),
    setGradientMagnitudeMaxLimit = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setGradientMagnitudeMaxLimit__0, p = c(gradient_magnitude_threshold_max = "dbl"), r = c(FALSE), s = "gradient_magnitude_threshold_max = 0.0")
    ),
    setWeights = list(
      list(f = .ropecv_cv_segmentation_IntelligentScissorsMB_IntelligentScissorsMB_setWeights__0, p = c(weight_non_edge = "dbl", weight_gradient_direction = "dbl", weight_gradient_magnitude = "dbl"), r = c(TRUE, TRUE, TRUE), s = "weight_non_edge, weight_gradient_direction, weight_gradient_magnitude")
    )
  )
)

# cv::ximgproc::segmentation::GraphSegmentation
.ropecv_reg("cvGraphSegmentation",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getK = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_getK__0, p = c(), r = c(), s = "")
    ),
    getMinSize = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_getMinSize__0, p = c(), r = c(), s = "")
    ),
    getSigma = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_getSigma__0, p = c(), r = c(), s = "")
    ),
    processImage = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_processImage__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setK = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_setK__0, p = c(k = "dbl"), r = c(TRUE), s = "k")
    ),
    setMinSize = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_setMinSize__0, p = c(min_size = "int"), r = c(TRUE), s = "min_size")
    ),
    setSigma = list(
      list(f = .ropecv_cv_ximgproc_segmentation_GraphSegmentation_GraphSegmentation_setSigma__0, p = c(sigma = "dbl"), r = c(TRUE), s = "sigma")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::segmentation::SelectiveSearchSegmentation
.ropecv_reg("cvSelectiveSearchSegmentation",
  new = list(

  ),
  m = list(
    addGraphSegmentation = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_addGraphSegmentation__0, p = c(g = "obj"), r = c(TRUE), s = "g")
    ),
    addImage = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_addImage__0, p = c(img = "mat"), r = c(TRUE), s = "img")
    ),
    addStrategy = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_addStrategy__0, p = c(s = "obj"), r = c(TRUE), s = "s")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearGraphSegmentations = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_clearGraphSegmentations__0, p = c(), r = c(), s = "")
    ),
    clearImages = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_clearImages__0, p = c(), r = c(), s = "")
    ),
    clearStrategies = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_clearStrategies__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_process__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBaseImage = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_setBaseImage__0, p = c(img = "mat"), r = c(TRUE), s = "img")
    ),
    switchToSelectiveSearchFast = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_switchToSelectiveSearchFast__0, p = c(base_k = "int", inc_k = "int", sigma = "dbl"), r = c(FALSE, FALSE, FALSE), s = "base_k = 150, inc_k = 150, sigma = 0.8")
    ),
    switchToSelectiveSearchQuality = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_switchToSelectiveSearchQuality__0, p = c(base_k = "int", inc_k = "int", sigma = "dbl"), r = c(FALSE, FALSE, FALSE), s = "base_k = 150, inc_k = 150, sigma = 0.8")
    ),
    switchToSingleStrategy = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentation_SelectiveSearchSegmentation_switchToSingleStrategy__0, p = c(k = "int", sigma = "dbl"), r = c(FALSE, FALSE), s = "k = 200, sigma = 0.8")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategy
.ropecv_reg("cvSelectiveSearchSegmentationStrategy",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    get = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_get__0, p = c(r1 = "int", r2 = "int"), r = c(TRUE, TRUE), s = "r1, r2")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    merge = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_merge__0, p = c(r1 = "int", r2 = "int"), r = c(TRUE, TRUE), s = "r1, r2")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setImage = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_setImage__0, p = c(img = "mat", regions = "mat", sizes = "mat", image_id = "int"), r = c(TRUE, TRUE, TRUE, FALSE), s = "img, regions, sizes, image_id = -1")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::segmentation::SelectiveSearchSegmentationStrategyMultiple
.ropecv_reg("cvSelectiveSearchSegmentationStrategyMultiple",
  new = list(

  ),
  m = list(
    addStrategy = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_SelectiveSearchSegmentationStrategyMultiple_addStrategy__0, p = c(g = "obj", weight = "dbl"), r = c(TRUE, TRUE), s = "g, weight")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearStrategies = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategyMultiple_SelectiveSearchSegmentationStrategyMultiple_clearStrategies__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    get = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_get__0, p = c(r1 = "int", r2 = "int"), r = c(TRUE, TRUE), s = "r1, r2")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    merge = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_merge__0, p = c(r1 = "int", r2 = "int"), r = c(TRUE, TRUE), s = "r1, r2")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setImage = list(
      list(f = .ropecv_cv_ximgproc_segmentation_SelectiveSearchSegmentationStrategy_SelectiveSearchSegmentationStrategy_setImage__0, p = c(img = "mat", regions = "mat", sizes = "mat", image_id = "int"), r = c(TRUE, TRUE, TRUE, FALSE), s = "img, regions, sizes, image_id = -1")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
