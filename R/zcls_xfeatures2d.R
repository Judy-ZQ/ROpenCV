# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::xfeatures2d::BEBLID
.ropecv_reg("cvBEBLID",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_BEBLID_BEBLID_create__0, p = c(scale_factor = "dbl", n_bits = "int"), r = c(TRUE, FALSE), s = "scale_factor, n_bits = SIZE_512_BITS")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_BEBLID_BEBLID_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_BEBLID_BEBLID_getScaleFactor__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_BEBLID_BEBLID_setScaleFactor__0, p = c(scale_factor = "dbl"), r = c(TRUE), s = "scale_factor")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::BoostDesc
.ropecv_reg("cvBoostDesc",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_BoostDesc_BoostDesc_create__0, p = c(desc = "int", use_scale_orientation = "lgl", scale_factor = "dbl"), r = c(FALSE, FALSE, FALSE), s = "desc = BINBOOST_256, use_scale_orientation = TRUE, scale_factor = 6.25")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_BoostDesc_BoostDesc_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_BoostDesc_BoostDesc_getScaleFactor__0, p = c(), r = c(), s = "")
    ),
    getUseScaleOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_BoostDesc_BoostDesc_getUseScaleOrientation__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_BoostDesc_BoostDesc_setScaleFactor__0, p = c(scale_factor = "dbl"), r = c(TRUE), s = "scale_factor")
    ),
    setUseScaleOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_BoostDesc_BoostDesc_setUseScaleOrientation__0, p = c(use_scale_orientation = "lgl"), r = c(TRUE), s = "use_scale_orientation")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::BriefDescriptorExtractor
.ropecv_reg("cvBriefDescriptorExtractor",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_create__0, p = c(bytes = "int", use_orientation = "lgl"), r = c(FALSE, FALSE), s = "bytes = 32, use_orientation = FALSE")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDescriptorSize = list(
      list(f = .ropecv_cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_getDescriptorSize__0, p = c(), r = c(), s = "")
    ),
    getUseOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_getUseOrientation__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDescriptorSize = list(
      list(f = .ropecv_cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_setDescriptorSize__0, p = c(bytes = "int"), r = c(TRUE), s = "bytes")
    ),
    setUseOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_BriefDescriptorExtractor_BriefDescriptorExtractor_setUseOrientation__0, p = c(use_orientation = "lgl"), r = c(TRUE), s = "use_orientation")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::DAISY
.ropecv_reg("cvDAISY",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_create__0, p = c(radius = "dbl", q_radius = "int", q_theta = "int", q_hist = "int", norm = "any", H = "mat", interpolation = "lgl", use_orientation = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "radius = 15, q_radius = 3, q_theta = 8, q_hist = 8, norm = NRM_NONE, H = NULL, interpolation = TRUE, use_orientation = FALSE")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getH = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getH__0, p = c(), r = c(), s = "")
    ),
    getInterpolation = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getInterpolation__0, p = c(), r = c(), s = "")
    ),
    getNorm = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getNorm__0, p = c(), r = c(), s = "")
    ),
    getQHist = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getQHist__0, p = c(), r = c(), s = "")
    ),
    getQRadius = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getQRadius__0, p = c(), r = c(), s = "")
    ),
    getQTheta = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getQTheta__0, p = c(), r = c(), s = "")
    ),
    getRadius = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getRadius__0, p = c(), r = c(), s = "")
    ),
    getUseOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_getUseOrientation__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setH = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setH__0, p = c(H = "mat"), r = c(TRUE), s = "H")
    ),
    setInterpolation = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setInterpolation__0, p = c(interpolation = "lgl"), r = c(TRUE), s = "interpolation")
    ),
    setNorm = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setNorm__0, p = c(norm = "int"), r = c(TRUE), s = "norm")
    ),
    setQHist = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setQHist__0, p = c(q_hist = "int"), r = c(TRUE), s = "q_hist")
    ),
    setQRadius = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setQRadius__0, p = c(q_radius = "int"), r = c(TRUE), s = "q_radius")
    ),
    setQTheta = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setQTheta__0, p = c(q_theta = "int"), r = c(TRUE), s = "q_theta")
    ),
    setRadius = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setRadius__0, p = c(radius = "dbl"), r = c(TRUE), s = "radius")
    ),
    setUseOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_DAISY_DAISY_setUseOrientation__0, p = c(use_orientation = "lgl"), r = c(TRUE), s = "use_orientation")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::FREAK
.ropecv_reg("cvFREAK",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_create__0, p = c(orientationNormalized = "lgl", scaleNormalized = "lgl", patternScale = "dbl", nOctaves = "int", selectedPairs = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "orientationNormalized = TRUE, scaleNormalized = TRUE, patternScale = 22.0, nOctaves = 4, selectedPairs = NULL")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getNOctaves = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_getNOctaves__0, p = c(), r = c(), s = "")
    ),
    getOrientationNormalized = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_getOrientationNormalized__0, p = c(), r = c(), s = "")
    ),
    getPatternScale = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_getPatternScale__0, p = c(), r = c(), s = "")
    ),
    getScaleNormalized = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_getScaleNormalized__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setNOctaves = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_setNOctaves__0, p = c(nOctaves = "int"), r = c(TRUE), s = "nOctaves")
    ),
    setOrientationNormalized = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_setOrientationNormalized__0, p = c(orientationNormalized = "lgl"), r = c(TRUE), s = "orientationNormalized")
    ),
    setPatternScale = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_setPatternScale__0, p = c(patternScale = "dbl"), r = c(TRUE), s = "patternScale")
    ),
    setScaleNormalized = list(
      list(f = .ropecv_cv_xfeatures2d_FREAK_FREAK_setScaleNormalized__0, p = c(scaleNormalized = "lgl"), r = c(TRUE), s = "scaleNormalized")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::HarrisLaplaceFeatureDetector
.ropecv_reg("cvHarrisLaplaceFeatureDetector",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_create__0, p = c(numOctaves = "int", corn_thresh = "dbl", DOG_thresh = "dbl", maxCorners = "int", num_layers = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "numOctaves = 6, corn_thresh = 0.01, DOG_thresh = 0.01, maxCorners = 5000, num_layers = 4")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getCornThresh = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getCornThresh__0, p = c(), r = c(), s = "")
    ),
    getDOGThresh = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getDOGThresh__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMaxCorners = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getMaxCorners__0, p = c(), r = c(), s = "")
    ),
    getNumLayers = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getNumLayers__0, p = c(), r = c(), s = "")
    ),
    getNumOctaves = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_getNumOctaves__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setCornThresh = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setCornThresh__0, p = c(corn_thresh_ = "dbl"), r = c(TRUE), s = "corn_thresh_")
    ),
    setDOGThresh = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setDOGThresh__0, p = c(DOG_thresh_ = "dbl"), r = c(TRUE), s = "DOG_thresh_")
    ),
    setMaxCorners = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setMaxCorners__0, p = c(maxCorners_ = "int"), r = c(TRUE), s = "maxCorners_")
    ),
    setNumLayers = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setNumLayers__0, p = c(num_layers_ = "int"), r = c(TRUE), s = "num_layers_")
    ),
    setNumOctaves = list(
      list(f = .ropecv_cv_xfeatures2d_HarrisLaplaceFeatureDetector_HarrisLaplaceFeatureDetector_setNumOctaves__0, p = c(numOctaves_ = "int"), r = c(TRUE), s = "numOctaves_")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::LATCH
.ropecv_reg("cvLATCH",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_create__0, p = c(bytes = "int", rotationInvariance = "lgl", half_ssd_size = "int", sigma = "dbl"), r = c(FALSE, FALSE, FALSE, FALSE), s = "bytes = 32, rotationInvariance = TRUE, half_ssd_size = 3, sigma = 2.0")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getBytes = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_getBytes__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getHalfSSDsize = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_getHalfSSDsize__0, p = c(), r = c(), s = "")
    ),
    getRotationInvariance = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_getRotationInvariance__0, p = c(), r = c(), s = "")
    ),
    getSigma = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_getSigma__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBytes = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_setBytes__0, p = c(bytes = "int"), r = c(TRUE), s = "bytes")
    ),
    setHalfSSDsize = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_setHalfSSDsize__0, p = c(half_ssd_size = "int"), r = c(TRUE), s = "half_ssd_size")
    ),
    setRotationInvariance = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_setRotationInvariance__0, p = c(rotationInvariance = "lgl"), r = c(TRUE), s = "rotationInvariance")
    ),
    setSigma = list(
      list(f = .ropecv_cv_xfeatures2d_LATCH_LATCH_setSigma__0, p = c(sigma = "dbl"), r = c(TRUE), s = "sigma")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::LUCID
.ropecv_reg("cvLUCID",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_LUCID_LUCID_create__0, p = c(lucid_kernel = "int", blur_kernel = "int"), r = c(FALSE, FALSE), s = "lucid_kernel = 1, blur_kernel = 2")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getBlurKernel = list(
      list(f = .ropecv_cv_xfeatures2d_LUCID_LUCID_getBlurKernel__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_LUCID_LUCID_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getLucidKernel = list(
      list(f = .ropecv_cv_xfeatures2d_LUCID_LUCID_getLucidKernel__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBlurKernel = list(
      list(f = .ropecv_cv_xfeatures2d_LUCID_LUCID_setBlurKernel__0, p = c(blur_kernel = "int"), r = c(TRUE), s = "blur_kernel")
    ),
    setLucidKernel = list(
      list(f = .ropecv_cv_xfeatures2d_LUCID_LUCID_setLucidKernel__0, p = c(lucid_kernel = "int"), r = c(TRUE), s = "lucid_kernel")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::MSDDetector
.ropecv_reg("cvMSDDetector",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_create__0, p = c(m_patch_radius = "int", m_search_area_radius = "int", m_nms_radius = "int", m_nms_scale_radius = "int", m_th_saliency = "dbl", m_kNN = "int", m_scale_factor = "dbl", m_n_scales = "int", m_compute_orientation = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "m_patch_radius = 3, m_search_area_radius = 5, m_nms_radius = 5, m_nms_scale_radius = 0, m_th_saliency = 250.0, m_kNN = 4, m_scale_factor = 1.25, m_n_scales = -1, m_compute_orientation = FALSE")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getComputeOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getComputeOrientation__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getKNN = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getKNN__0, p = c(), r = c(), s = "")
    ),
    getNScales = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getNScales__0, p = c(), r = c(), s = "")
    ),
    getNmsRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getNmsRadius__0, p = c(), r = c(), s = "")
    ),
    getNmsScaleRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getNmsScaleRadius__0, p = c(), r = c(), s = "")
    ),
    getPatchRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getPatchRadius__0, p = c(), r = c(), s = "")
    ),
    getScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getScaleFactor__0, p = c(), r = c(), s = "")
    ),
    getSearchAreaRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getSearchAreaRadius__0, p = c(), r = c(), s = "")
    ),
    getThSaliency = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_getThSaliency__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setComputeOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setComputeOrientation__0, p = c(compute_orientation = "lgl"), r = c(TRUE), s = "compute_orientation")
    ),
    setKNN = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setKNN__0, p = c(kNN = "int"), r = c(TRUE), s = "kNN")
    ),
    setNScales = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setNScales__0, p = c(use_orientation = "int"), r = c(TRUE), s = "use_orientation")
    ),
    setNmsRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setNmsRadius__0, p = c(nms_radius = "int"), r = c(TRUE), s = "nms_radius")
    ),
    setNmsScaleRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setNmsScaleRadius__0, p = c(nms_scale_radius = "int"), r = c(TRUE), s = "nms_scale_radius")
    ),
    setPatchRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setPatchRadius__0, p = c(patch_radius = "int"), r = c(TRUE), s = "patch_radius")
    ),
    setScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setScaleFactor__0, p = c(scale_factor = "dbl"), r = c(TRUE), s = "scale_factor")
    ),
    setSearchAreaRadius = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setSearchAreaRadius__0, p = c(use_orientation = "int"), r = c(TRUE), s = "use_orientation")
    ),
    setThSaliency = list(
      list(f = .ropecv_cv_xfeatures2d_MSDDetector_MSDDetector_setThSaliency__0, p = c(th_saliency = "dbl"), r = c(TRUE), s = "th_saliency")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::PCTSignatures
.ropecv_reg("cvPCTSignatures",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_create__0, p = c(initSamplingPoints = "lst", initSeedCount = "int"), r = c(TRUE, TRUE), s = "initSamplingPoints, initSeedCount"),
    list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_create__1, p = c(initSamplingPoints = "lst", initClusterSeedIndexes = "int"), r = c(TRUE, TRUE), s = "initSamplingPoints, initClusterSeedIndexes"),
    list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_create__2, p = c(initSampleCount = "int", initSeedCount = "int", pointDistribution = "int"), r = c(FALSE, FALSE, FALSE), s = "initSampleCount = 2000, initSeedCount = 400, pointDistribution = 0")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeSignature = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_computeSignature__0, p = c(image = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "image, dst = NULL")
    ),
    computeSignatures = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_computeSignatures__0, p = c(images = "lst", signatures = "lst"), r = c(TRUE, FALSE), s = "images, signatures = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getClusterMinSize = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getClusterMinSize__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDistanceFunction = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getDistanceFunction__0, p = c(), r = c(), s = "")
    ),
    getDropThreshold = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getDropThreshold__0, p = c(), r = c(), s = "")
    ),
    getGrayscaleBits = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getGrayscaleBits__0, p = c(), r = c(), s = "")
    ),
    getInitSeedCount = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getInitSeedCount__0, p = c(), r = c(), s = "")
    ),
    getInitSeedIndexes = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getInitSeedIndexes__0, p = c(), r = c(), s = "")
    ),
    getIterationCount = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getIterationCount__0, p = c(), r = c(), s = "")
    ),
    getJoiningDistance = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getJoiningDistance__0, p = c(), r = c(), s = "")
    ),
    getMaxClustersCount = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getMaxClustersCount__0, p = c(), r = c(), s = "")
    ),
    getSampleCount = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getSampleCount__0, p = c(), r = c(), s = "")
    ),
    getSamplingPoints = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getSamplingPoints__0, p = c(), r = c(), s = "")
    ),
    getWeightA = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightA__0, p = c(), r = c(), s = "")
    ),
    getWeightB = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightB__0, p = c(), r = c(), s = "")
    ),
    getWeightContrast = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightContrast__0, p = c(), r = c(), s = "")
    ),
    getWeightEntropy = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightEntropy__0, p = c(), r = c(), s = "")
    ),
    getWeightL = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightL__0, p = c(), r = c(), s = "")
    ),
    getWeightX = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightX__0, p = c(), r = c(), s = "")
    ),
    getWeightY = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWeightY__0, p = c(), r = c(), s = "")
    ),
    getWindowRadius = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_getWindowRadius__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setClusterMinSize = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setClusterMinSize__0, p = c(clusterMinSize = "int"), r = c(TRUE), s = "clusterMinSize")
    ),
    setDistanceFunction = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setDistanceFunction__0, p = c(distanceFunction = "int"), r = c(TRUE), s = "distanceFunction")
    ),
    setDropThreshold = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setDropThreshold__0, p = c(dropThreshold = "dbl"), r = c(TRUE), s = "dropThreshold")
    ),
    setGrayscaleBits = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setGrayscaleBits__0, p = c(grayscaleBits = "int"), r = c(TRUE), s = "grayscaleBits")
    ),
    setInitSeedIndexes = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setInitSeedIndexes__0, p = c(initSeedIndexes = "int"), r = c(TRUE), s = "initSeedIndexes")
    ),
    setIterationCount = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setIterationCount__0, p = c(iterationCount = "int"), r = c(TRUE), s = "iterationCount")
    ),
    setJoiningDistance = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setJoiningDistance__0, p = c(joiningDistance = "dbl"), r = c(TRUE), s = "joiningDistance")
    ),
    setMaxClustersCount = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setMaxClustersCount__0, p = c(maxClustersCount = "int"), r = c(TRUE), s = "maxClustersCount")
    ),
    setSamplingPoints = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setSamplingPoints__0, p = c(samplingPoints = "lst"), r = c(TRUE), s = "samplingPoints")
    ),
    setTranslation = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setTranslation__0, p = c(idx = "int", value = "dbl"), r = c(TRUE, TRUE), s = "idx, value")
    ),
    setTranslations = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setTranslations__0, p = c(translations = "dbl"), r = c(TRUE), s = "translations")
    ),
    setWeight = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeight__0, p = c(idx = "int", value = "dbl"), r = c(TRUE, TRUE), s = "idx, value")
    ),
    setWeightA = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightA__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeightB = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightB__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeightContrast = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightContrast__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeightEntropy = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightEntropy__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeightL = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightL__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeightX = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightX__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeightY = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeightY__0, p = c(weight = "dbl"), r = c(TRUE), s = "weight")
    ),
    setWeights = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWeights__0, p = c(weights = "dbl"), r = c(TRUE), s = "weights")
    ),
    setWindowRadius = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignatures_PCTSignatures_setWindowRadius__0, p = c(radius = "int"), r = c(TRUE), s = "radius")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::PCTSignaturesSQFD
.ropecv_reg("cvPCTSignaturesSQFD",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_PCTSignaturesSQFD_PCTSignaturesSQFD_create__0, p = c(distanceFunction = "int", similarityFunction = "int", similarityParameter = "dbl"), r = c(FALSE, FALSE, FALSE), s = "distanceFunction = 3, similarityFunction = 2, similarityParameter = 1.0")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeQuadraticFormDistance = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignaturesSQFD_PCTSignaturesSQFD_computeQuadraticFormDistance__0, p = c(signature0 = "mat", signature1 = "mat"), r = c(TRUE, TRUE), s = "signature0, signature1")
    ),
    computeQuadraticFormDistances = list(
      list(f = .ropecv_cv_xfeatures2d_PCTSignaturesSQFD_PCTSignaturesSQFD_computeQuadraticFormDistances__0, p = c(sourceSignature = "any", imageSignatures = "lst", distances = "dbl"), r = c(TRUE, TRUE, FALSE), s = "sourceSignature, imageSignatures, distances = NULL")
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

# cv::xfeatures2d::StarDetector
.ropecv_reg("cvStarDetector",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_create__0, p = c(maxSize = "int", responseThreshold = "int", lineThresholdProjected = "int", lineThresholdBinarized = "int", suppressNonmaxSize = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "maxSize = 45, responseThreshold = 30, lineThresholdProjected = 10, lineThresholdBinarized = 8, suppressNonmaxSize = 5")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getLineThresholdBinarized = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_getLineThresholdBinarized__0, p = c(), r = c(), s = "")
    ),
    getLineThresholdProjected = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_getLineThresholdProjected__0, p = c(), r = c(), s = "")
    ),
    getMaxSize = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_getMaxSize__0, p = c(), r = c(), s = "")
    ),
    getResponseThreshold = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_getResponseThreshold__0, p = c(), r = c(), s = "")
    ),
    getSuppressNonmaxSize = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_getSuppressNonmaxSize__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setLineThresholdBinarized = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_setLineThresholdBinarized__0, p = c(lineThresholdBinarized = "int"), r = c(TRUE), s = "lineThresholdBinarized")
    ),
    setLineThresholdProjected = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_setLineThresholdProjected__0, p = c(lineThresholdProjected = "int"), r = c(TRUE), s = "lineThresholdProjected")
    ),
    setMaxSize = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_setMaxSize__0, p = c(maxSize = "int"), r = c(TRUE), s = "maxSize")
    ),
    setResponseThreshold = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_setResponseThreshold__0, p = c(responseThreshold = "int"), r = c(TRUE), s = "responseThreshold")
    ),
    setSuppressNonmaxSize = list(
      list(f = .ropecv_cv_xfeatures2d_StarDetector_StarDetector_setSuppressNonmaxSize__0, p = c(suppressNonmaxSize = "int"), r = c(TRUE), s = "suppressNonmaxSize")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::TBMR
.ropecv_reg("cvTBMR",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_create__0, p = c(min_area = "int", max_area_relative = "dbl", scale_factor = "dbl", n_scales = "int"), r = c(FALSE, FALSE, FALSE, FALSE), s = "min_area = 60, max_area_relative = 0.01, scale_factor = 1.25, n_scales = -1")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMaxAreaRelative = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_getMaxAreaRelative__0, p = c(), r = c(), s = "")
    ),
    getMinArea = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_getMinArea__0, p = c(), r = c(), s = "")
    ),
    getNScales = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_getNScales__0, p = c(), r = c(), s = "")
    ),
    getScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_getScaleFactor__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setMaxAreaRelative = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_setMaxAreaRelative__0, p = c(maxArea = "dbl"), r = c(TRUE), s = "maxArea")
    ),
    setMinArea = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_setMinArea__0, p = c(minArea = "int"), r = c(TRUE), s = "minArea")
    ),
    setNScales = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_setNScales__0, p = c(n_scales = "int"), r = c(TRUE), s = "n_scales")
    ),
    setScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_TBMR_TBMR_setScaleFactor__0, p = c(scale_factor = "dbl"), r = c(TRUE), s = "scale_factor")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::TEBLID
.ropecv_reg("cvTEBLID",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_TEBLID_TEBLID_create__0, p = c(scale_factor = "dbl", n_bits = "int"), r = c(TRUE, FALSE), s = "scale_factor, n_bits = SIZE_256_BITS")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_TEBLID_TEBLID_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xfeatures2d::VGG
.ropecv_reg("cvVGG",
  new = list(
    list(f = .ropecv_cv_xfeatures2d_VGG_VGG_create__0, p = c(desc = "int", isigma = "dbl", img_normalize = "lgl", use_scale_orientation = "lgl", scale_factor = "dbl", dsc_normalize = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "desc = VGG_120, isigma = 1.4, img_normalize = TRUE, use_scale_orientation = TRUE, scale_factor = 6.25, dsc_normalize = FALSE")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__0, p = c(image = "mat", descriptors = "mat"), r = c(TRUE, FALSE), s = "image, descriptors = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_compute__1, p = c(images = "matlist", descriptors = "lst"), r = c(TRUE, FALSE), s = "images, descriptors = NULL")
    ),
    defaultNorm = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_defaultNorm__0, p = c(), r = c(), s = "")
    ),
    descriptorSize = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_descriptorType__0, p = c(), r = c(), s = "")
    ),
    detect = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__0, p = c(image = "mat", mask = "mat"), r = c(TRUE, FALSE), s = "image, mask = NULL"),
      list(f = .ropecv_cv_Feature2D_Feature2D_detect__1, p = c(images = "matlist", masks = "matlist"), r = c(TRUE, FALSE), s = "images, masks = NULL")
    ),
    detectAndCompute = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_detectAndCompute__0, p = c(image = "mat", mask = "mat", useProvidedKeypoints = "lgl", descriptors = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_getScaleFactor__0, p = c(), r = c(), s = "")
    ),
    getSigma = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_getSigma__0, p = c(), r = c(), s = "")
    ),
    getUseNormalizeDescriptor = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_getUseNormalizeDescriptor__0, p = c(), r = c(), s = "")
    ),
    getUseNormalizeImage = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_getUseNormalizeImage__0, p = c(), r = c(), s = "")
    ),
    getUseScaleOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_getUseScaleOrientation__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setScaleFactor = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_setScaleFactor__0, p = c(scale_factor = "dbl"), r = c(TRUE), s = "scale_factor")
    ),
    setSigma = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_setSigma__0, p = c(isigma = "dbl"), r = c(TRUE), s = "isigma")
    ),
    setUseNormalizeDescriptor = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_setUseNormalizeDescriptor__0, p = c(dsc_normalize = "lgl"), r = c(TRUE), s = "dsc_normalize")
    ),
    setUseNormalizeImage = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_setUseNormalizeImage__0, p = c(img_normalize = "lgl"), r = c(TRUE), s = "img_normalize")
    ),
    setUseScaleOrientation = list(
      list(f = .ropecv_cv_xfeatures2d_VGG_VGG_setUseScaleOrientation__0, p = c(use_scale_orientation = "lgl"), r = c(TRUE), s = "use_scale_orientation")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
