# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::AKAZE
.ropecv_reg("cvAKAZE",
  new = list(
    list(f = .ropecv_cv_AKAZE_AKAZE_create__0, p = c(descriptor_type = "any", descriptor_size = "int", descriptor_channels = "int", threshold = "dbl", nOctaves = "int", nOctaveLayers = "int", diffusivity = "any", max_points = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "descriptor_type = DESCRIPTOR_MLDB, descriptor_size = 0, descriptor_channels = 3, threshold = 0.001, nOctaves = 4, nOctaveLayers = 4, diffusivity = DIFF_PM_G2, max_points = -1")
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
      list(f = .ropecv_cv_AKAZE_AKAZE_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDescriptorChannels = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getDescriptorChannels__0, p = c(), r = c(), s = "")
    ),
    getDescriptorSize = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getDescriptorSize__0, p = c(), r = c(), s = "")
    ),
    getDescriptorType = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getDescriptorType__0, p = c(), r = c(), s = "")
    ),
    getDiffusivity = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getDiffusivity__0, p = c(), r = c(), s = "")
    ),
    getMaxPoints = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getMaxPoints__0, p = c(), r = c(), s = "")
    ),
    getNOctaveLayers = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getNOctaveLayers__0, p = c(), r = c(), s = "")
    ),
    getNOctaves = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getNOctaves__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_getThreshold__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDescriptorChannels = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setDescriptorChannels__0, p = c(dch = "int"), r = c(TRUE), s = "dch")
    ),
    setDescriptorSize = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setDescriptorSize__0, p = c(dsize = "int"), r = c(TRUE), s = "dsize")
    ),
    setDescriptorType = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setDescriptorType__0, p = c(dtype = "any"), r = c(TRUE), s = "dtype")
    ),
    setDiffusivity = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setDiffusivity__0, p = c(diff = "any"), r = c(TRUE), s = "diff")
    ),
    setMaxPoints = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setMaxPoints__0, p = c(max_points = "int"), r = c(TRUE), s = "max_points")
    ),
    setNOctaveLayers = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setNOctaveLayers__0, p = c(octaveLayers = "int"), r = c(TRUE), s = "octaveLayers")
    ),
    setNOctaves = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setNOctaves__0, p = c(octaves = "int"), r = c(TRUE), s = "octaves")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_AKAZE_AKAZE_setThreshold__0, p = c(threshold = "dbl"), r = c(TRUE), s = "threshold")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::AffineFeature
.ropecv_reg("cvAffineFeature",
  new = list(
    list(f = .ropecv_cv_AffineFeature_AffineFeature_create__0, p = c(backend = "obj", maxTilt = "int", minTilt = "int", tiltStep = "dbl", rotateStepBase = "dbl"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "backend, maxTilt = 5, minTilt = 0, tiltStep = 1.4142135623730951, rotateStepBase = 72")
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
      list(f = .ropecv_cv_AffineFeature_AffineFeature_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getViewParams = list(
      list(f = .ropecv_cv_AffineFeature_AffineFeature_getViewParams__0, p = c(tilts = "dbl", rolls = "dbl"), r = c(FALSE, FALSE), s = "tilts = NULL, rolls = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setViewParams = list(
      list(f = .ropecv_cv_AffineFeature_AffineFeature_setViewParams__0, p = c(tilts = "dbl", rolls = "dbl"), r = c(TRUE, TRUE), s = "tilts, rolls")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::AgastFeatureDetector
.ropecv_reg("cvAgastFeatureDetector",
  new = list(
    list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_create__0, p = c(threshold = "int", nonmaxSuppression = "lgl", type = "any"), r = c(FALSE, FALSE, FALSE), s = "threshold = 10, nonmaxSuppression = TRUE, type = OAST_9_16")
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
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getNonmaxSuppression = list(
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_getNonmaxSuppression__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_getThreshold__0, p = c(), r = c(), s = "")
    ),
    getType = list(
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_getType__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setNonmaxSuppression = list(
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_setNonmaxSuppression__0, p = c(f = "lgl"), r = c(TRUE), s = "f")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_setThreshold__0, p = c(threshold = "int"), r = c(TRUE), s = "threshold")
    ),
    setType = list(
      list(f = .ropecv_cv_AgastFeatureDetector_AgastFeatureDetector_setType__0, p = c(type = "any"), r = c(TRUE), s = "type")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::BFMatcher
.ropecv_reg("cvBFMatcher",
  new = list(
    list(f = .ropecv_cv_BFMatcher_BFMatcher_new__0, p = c(normType = "int", crossCheck = "lgl"), r = c(FALSE, FALSE), s = "normType = NORM_L2, crossCheck = FALSE"),
    list(f = .ropecv_cv_BFMatcher_BFMatcher_create__0, p = c(normType = "int", crossCheck = "lgl"), r = c(FALSE, FALSE), s = "normType = NORM_L2, crossCheck = FALSE")
  ),
  m = list(
    add = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_add__0, p = c(descriptors = "matlist"), r = c(TRUE), s = "descriptors")
    ),
    clear = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_clear__0, p = c(), r = c(), s = "")
    ),
    clone = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_clone__0, p = c(emptyTrainData = "lgl"), r = c(FALSE), s = "emptyTrainData = FALSE")
    ),
    empty = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getTrainDescriptors = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_getTrainDescriptors__0, p = c(), r = c(), s = "")
    ),
    isMaskSupported = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_isMaskSupported__0, p = c(), r = c(), s = "")
    ),
    knnMatch = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_knnMatch__0, p = c(queryDescriptors = "mat", k = "int", masks = "matlist", compactResult = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, k, masks = NULL, compactResult = FALSE"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_knnMatch__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", k = "int", mask = "mat", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE")
    ),
    match = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_match__0, p = c(queryDescriptors = "mat", masks = "matlist"), r = c(TRUE, FALSE), s = "queryDescriptors, masks = NULL"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_match__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", mask = "mat"), r = c(TRUE, TRUE, FALSE), s = "queryDescriptors, trainDescriptors, mask = NULL")
    ),
    radiusMatch = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__0, p = c(queryDescriptors = "mat", maxDistance = "dbl", masks = "matlist", compactResult = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, maxDistance, masks = NULL, compactResult = FALSE"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", maxDistance = "dbl", mask = "mat", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, maxDistance, mask = NULL, compactResult = FALSE")
    ),
    read = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    train = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_train__0, p = c(), r = c(), s = "")
    ),
    write = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::BOWImgDescriptorExtractor
.ropecv_reg("cvBOWImgDescriptorExtractor",
  new = list(
    list(f = .ropecv_cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_new__0, p = c(dextractor = "obj", dmatcher = "obj"), r = c(TRUE, TRUE), s = "dextractor, dmatcher")
  ),
  m = list(
    descriptorSize = list(
      list(f = .ropecv_cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_descriptorSize__0, p = c(), r = c(), s = "")
    ),
    descriptorType = list(
      list(f = .ropecv_cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_descriptorType__0, p = c(), r = c(), s = "")
    ),
    getVocabulary = list(
      list(f = .ropecv_cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_getVocabulary__0, p = c(), r = c(), s = "")
    ),
    setVocabulary = list(
      list(f = .ropecv_cv_BOWImgDescriptorExtractor_BOWImgDescriptorExtractor_setVocabulary__0, p = c(vocabulary = "any"), r = c(TRUE), s = "vocabulary")
    )
  )
)

# cv::BOWKMeansTrainer
.ropecv_reg("cvBOWKMeansTrainer",
  new = list(
    list(f = .ropecv_cv_BOWKMeansTrainer_BOWKMeansTrainer_new__0, p = c(clusterCount = "int", termcrit = "tc", attempts = "int", flags = "int"), r = c(TRUE, TRUE, FALSE, FALSE), s = "clusterCount, termcrit, attempts = 3, flags = KMEANS_PP_CENTERS")
  ),
  m = list(
    add = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_add__0, p = c(descriptors = "any"), r = c(TRUE), s = "descriptors")
    ),
    clear = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_clear__0, p = c(), r = c(), s = "")
    ),
    cluster = list(
      list(f = .ropecv_cv_BOWKMeansTrainer_BOWKMeansTrainer_cluster__0, p = c(), r = c(), s = ""),
      list(f = .ropecv_cv_BOWKMeansTrainer_BOWKMeansTrainer_cluster__1, p = c(descriptors = "any"), r = c(TRUE), s = "descriptors")
    ),
    descriptorsCount = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_descriptorsCount__0, p = c(), r = c(), s = "")
    ),
    getDescriptors = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_getDescriptors__0, p = c(), r = c(), s = "")
    )
  )
)

# cv::BOWTrainer
.ropecv_reg("cvBOWTrainer",
  new = list(

  ),
  m = list(
    add = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_add__0, p = c(descriptors = "any"), r = c(TRUE), s = "descriptors")
    ),
    clear = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_clear__0, p = c(), r = c(), s = "")
    ),
    cluster = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_cluster__0, p = c(), r = c(), s = ""),
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_cluster__1, p = c(descriptors = "any"), r = c(TRUE), s = "descriptors")
    ),
    descriptorsCount = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_descriptorsCount__0, p = c(), r = c(), s = "")
    ),
    getDescriptors = list(
      list(f = .ropecv_cv_BOWTrainer_BOWTrainer_getDescriptors__0, p = c(), r = c(), s = "")
    )
  )
)

# cv::BRISK
.ropecv_reg("cvBRISK",
  new = list(
    list(f = .ropecv_cv_BRISK_BRISK_create__0, p = c(thresh = "int", octaves = "int", patternScale = "dbl"), r = c(FALSE, FALSE, FALSE), s = "thresh = 30, octaves = 3, patternScale = 1.0"),
    list(f = .ropecv_cv_BRISK_BRISK_create__1, p = c(radiusList = "dbl", numberList = "int", dMax = "dbl", dMin = "dbl", indexChange = "int"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "radiusList, numberList, dMax = 5.85, dMin = 8.2, indexChange = NULL"),
    list(f = .ropecv_cv_BRISK_BRISK_create__2, p = c(thresh = "int", octaves = "int", radiusList = "dbl", numberList = "int", dMax = "dbl", dMin = "dbl", indexChange = "int"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "thresh, octaves, radiusList, numberList, dMax = 5.85, dMin = 8.2, indexChange = NULL")
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
      list(f = .ropecv_cv_BRISK_BRISK_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getOctaves = list(
      list(f = .ropecv_cv_BRISK_BRISK_getOctaves__0, p = c(), r = c(), s = "")
    ),
    getPatternScale = list(
      list(f = .ropecv_cv_BRISK_BRISK_getPatternScale__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_BRISK_BRISK_getThreshold__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setOctaves = list(
      list(f = .ropecv_cv_BRISK_BRISK_setOctaves__0, p = c(octaves = "int"), r = c(TRUE), s = "octaves")
    ),
    setPatternScale = list(
      list(f = .ropecv_cv_BRISK_BRISK_setPatternScale__0, p = c(patternScale = "dbl"), r = c(TRUE), s = "patternScale")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_BRISK_BRISK_setThreshold__0, p = c(threshold = "int"), r = c(TRUE), s = "threshold")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::DescriptorMatcher
.ropecv_reg("cvDescriptorMatcher",
  new = list(
    list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_create__0, p = c(descriptorMatcherType = "chr"), r = c(TRUE), s = "descriptorMatcherType"),
    list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_create__1, p = c(matcherType = "any"), r = c(TRUE), s = "matcherType")
  ),
  m = list(
    add = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_add__0, p = c(descriptors = "matlist"), r = c(TRUE), s = "descriptors")
    ),
    clear = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_clear__0, p = c(), r = c(), s = "")
    ),
    clone = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_clone__0, p = c(emptyTrainData = "lgl"), r = c(FALSE), s = "emptyTrainData = FALSE")
    ),
    empty = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getTrainDescriptors = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_getTrainDescriptors__0, p = c(), r = c(), s = "")
    ),
    isMaskSupported = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_isMaskSupported__0, p = c(), r = c(), s = "")
    ),
    knnMatch = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_knnMatch__0, p = c(queryDescriptors = "mat", k = "int", masks = "matlist", compactResult = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, k, masks = NULL, compactResult = FALSE"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_knnMatch__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", k = "int", mask = "mat", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE")
    ),
    match = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_match__0, p = c(queryDescriptors = "mat", masks = "matlist"), r = c(TRUE, FALSE), s = "queryDescriptors, masks = NULL"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_match__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", mask = "mat"), r = c(TRUE, TRUE, FALSE), s = "queryDescriptors, trainDescriptors, mask = NULL")
    ),
    radiusMatch = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__0, p = c(queryDescriptors = "mat", maxDistance = "dbl", masks = "matlist", compactResult = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, maxDistance, masks = NULL, compactResult = FALSE"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", maxDistance = "dbl", mask = "mat", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, maxDistance, mask = NULL, compactResult = FALSE")
    ),
    read = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    train = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_train__0, p = c(), r = c(), s = "")
    ),
    write = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::FastFeatureDetector
.ropecv_reg("cvFastFeatureDetector",
  new = list(
    list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_create__0, p = c(threshold = "int", nonmaxSuppression = "lgl", type = "any"), r = c(FALSE, FALSE, FALSE), s = "threshold = 10, nonmaxSuppression = TRUE, type = TYPE_9_16")
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
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getNonmaxSuppression = list(
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_getNonmaxSuppression__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_getThreshold__0, p = c(), r = c(), s = "")
    ),
    getType = list(
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_getType__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setNonmaxSuppression = list(
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_setNonmaxSuppression__0, p = c(f = "lgl"), r = c(TRUE), s = "f")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_setThreshold__0, p = c(threshold = "int"), r = c(TRUE), s = "threshold")
    ),
    setType = list(
      list(f = .ropecv_cv_FastFeatureDetector_FastFeatureDetector_setType__0, p = c(type = "any"), r = c(TRUE), s = "type")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::Feature2D
.ropecv_reg("cvFeature2D",
  new = list(

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

# cv::FlannBasedMatcher
.ropecv_reg("cvFlannBasedMatcher",
  new = list(
    list(f = .ropecv_cv_FlannBasedMatcher_FlannBasedMatcher_new__0, p = c(indexParams = "obj", searchParams = "obj"), r = c(FALSE, FALSE), s = "indexParams = list(), searchParams = list()"),
    list(f = .ropecv_cv_FlannBasedMatcher_FlannBasedMatcher_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    add = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_add__0, p = c(descriptors = "matlist"), r = c(TRUE), s = "descriptors")
    ),
    clear = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_clear__0, p = c(), r = c(), s = "")
    ),
    clone = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_clone__0, p = c(emptyTrainData = "lgl"), r = c(FALSE), s = "emptyTrainData = FALSE")
    ),
    empty = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getTrainDescriptors = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_getTrainDescriptors__0, p = c(), r = c(), s = "")
    ),
    isMaskSupported = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_isMaskSupported__0, p = c(), r = c(), s = "")
    ),
    knnMatch = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_knnMatch__0, p = c(queryDescriptors = "mat", k = "int", masks = "matlist", compactResult = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, k, masks = NULL, compactResult = FALSE"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_knnMatch__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", k = "int", mask = "mat", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE")
    ),
    match = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_match__0, p = c(queryDescriptors = "mat", masks = "matlist"), r = c(TRUE, FALSE), s = "queryDescriptors, masks = NULL"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_match__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", mask = "mat"), r = c(TRUE, TRUE, FALSE), s = "queryDescriptors, trainDescriptors, mask = NULL")
    ),
    radiusMatch = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__0, p = c(queryDescriptors = "mat", maxDistance = "dbl", masks = "matlist", compactResult = "lgl"), r = c(TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, maxDistance, masks = NULL, compactResult = FALSE"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_radiusMatch__1, p = c(queryDescriptors = "mat", trainDescriptors = "mat", maxDistance = "dbl", mask = "mat", compactResult = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "queryDescriptors, trainDescriptors, maxDistance, mask = NULL, compactResult = FALSE")
    ),
    read = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    train = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_train__0, p = c(), r = c(), s = "")
    ),
    write = list(
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_DescriptorMatcher_DescriptorMatcher_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::GFTTDetector
.ropecv_reg("cvGFTTDetector",
  new = list(
    list(f = .ropecv_cv_GFTTDetector_GFTTDetector_create__0, p = c(maxCorners = "int", qualityLevel = "dbl", minDistance = "dbl", blockSize = "int", useHarrisDetector = "lgl", k = "dbl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "maxCorners = 1000, qualityLevel = 0.01, minDistance = 1, blockSize = 3, useHarrisDetector = FALSE, k = 0.04"),
    list(f = .ropecv_cv_GFTTDetector_GFTTDetector_create__1, p = c(maxCorners = "int", qualityLevel = "dbl", minDistance = "dbl", blockSize = "int", gradiantSize = "int", useHarrisDetector = "lgl", k = "dbl"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), s = "maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector = FALSE, k = 0.04")
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
    getBlockSize = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getBlockSize__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getGradientSize = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getGradientSize__0, p = c(), r = c(), s = "")
    ),
    getHarrisDetector = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getHarrisDetector__0, p = c(), r = c(), s = "")
    ),
    getK = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getK__0, p = c(), r = c(), s = "")
    ),
    getMaxFeatures = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getMaxFeatures__0, p = c(), r = c(), s = "")
    ),
    getMinDistance = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getMinDistance__0, p = c(), r = c(), s = "")
    ),
    getQualityLevel = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_getQualityLevel__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBlockSize = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setBlockSize__0, p = c(blockSize = "int"), r = c(TRUE), s = "blockSize")
    ),
    setGradientSize = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setGradientSize__0, p = c(gradientSize_ = "int"), r = c(TRUE), s = "gradientSize_")
    ),
    setHarrisDetector = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setHarrisDetector__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setK = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setK__0, p = c(k = "dbl"), r = c(TRUE), s = "k")
    ),
    setMaxFeatures = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setMaxFeatures__0, p = c(maxFeatures = "int"), r = c(TRUE), s = "maxFeatures")
    ),
    setMinDistance = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setMinDistance__0, p = c(minDistance = "dbl"), r = c(TRUE), s = "minDistance")
    ),
    setQualityLevel = list(
      list(f = .ropecv_cv_GFTTDetector_GFTTDetector_setQualityLevel__0, p = c(qlevel = "dbl"), r = c(TRUE), s = "qlevel")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::KAZE
.ropecv_reg("cvKAZE",
  new = list(
    list(f = .ropecv_cv_KAZE_KAZE_create__0, p = c(extended = "lgl", upright = "lgl", threshold = "dbl", nOctaves = "int", nOctaveLayers = "int", diffusivity = "any"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "extended = FALSE, upright = FALSE, threshold = 0.001, nOctaves = 4, nOctaveLayers = 4, diffusivity = DIFF_PM_G2")
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
      list(f = .ropecv_cv_KAZE_KAZE_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDiffusivity = list(
      list(f = .ropecv_cv_KAZE_KAZE_getDiffusivity__0, p = c(), r = c(), s = "")
    ),
    getExtended = list(
      list(f = .ropecv_cv_KAZE_KAZE_getExtended__0, p = c(), r = c(), s = "")
    ),
    getNOctaveLayers = list(
      list(f = .ropecv_cv_KAZE_KAZE_getNOctaveLayers__0, p = c(), r = c(), s = "")
    ),
    getNOctaves = list(
      list(f = .ropecv_cv_KAZE_KAZE_getNOctaves__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_KAZE_KAZE_getThreshold__0, p = c(), r = c(), s = "")
    ),
    getUpright = list(
      list(f = .ropecv_cv_KAZE_KAZE_getUpright__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDiffusivity = list(
      list(f = .ropecv_cv_KAZE_KAZE_setDiffusivity__0, p = c(diff = "any"), r = c(TRUE), s = "diff")
    ),
    setExtended = list(
      list(f = .ropecv_cv_KAZE_KAZE_setExtended__0, p = c(extended = "lgl"), r = c(TRUE), s = "extended")
    ),
    setNOctaveLayers = list(
      list(f = .ropecv_cv_KAZE_KAZE_setNOctaveLayers__0, p = c(octaveLayers = "int"), r = c(TRUE), s = "octaveLayers")
    ),
    setNOctaves = list(
      list(f = .ropecv_cv_KAZE_KAZE_setNOctaves__0, p = c(octaves = "int"), r = c(TRUE), s = "octaves")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_KAZE_KAZE_setThreshold__0, p = c(threshold = "dbl"), r = c(TRUE), s = "threshold")
    ),
    setUpright = list(
      list(f = .ropecv_cv_KAZE_KAZE_setUpright__0, p = c(upright = "lgl"), r = c(TRUE), s = "upright")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::MSER
.ropecv_reg("cvMSER",
  new = list(
    list(f = .ropecv_cv_MSER_MSER_create__0, p = c(delta = "int", min_area = "int", max_area = "int", max_variation = "dbl", min_diversity = "dbl", max_evolution = "int", area_threshold = "dbl", min_margin = "dbl", edge_blur_size = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "delta = 5, min_area = 60, max_area = 14400, max_variation = 0.25, min_diversity = 0.2, max_evolution = 200, area_threshold = 1.01, min_margin = 0.003, edge_blur_size = 5")
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
    detectRegions = list(
      list(f = .ropecv_cv_MSER_MSER_detectRegions__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    ),
    empty = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_empty__0, p = c(), r = c(), s = "")
    ),
    getAreaThreshold = list(
      list(f = .ropecv_cv_MSER_MSER_getAreaThreshold__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_MSER_MSER_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDelta = list(
      list(f = .ropecv_cv_MSER_MSER_getDelta__0, p = c(), r = c(), s = "")
    ),
    getEdgeBlurSize = list(
      list(f = .ropecv_cv_MSER_MSER_getEdgeBlurSize__0, p = c(), r = c(), s = "")
    ),
    getMaxArea = list(
      list(f = .ropecv_cv_MSER_MSER_getMaxArea__0, p = c(), r = c(), s = "")
    ),
    getMaxEvolution = list(
      list(f = .ropecv_cv_MSER_MSER_getMaxEvolution__0, p = c(), r = c(), s = "")
    ),
    getMaxVariation = list(
      list(f = .ropecv_cv_MSER_MSER_getMaxVariation__0, p = c(), r = c(), s = "")
    ),
    getMinArea = list(
      list(f = .ropecv_cv_MSER_MSER_getMinArea__0, p = c(), r = c(), s = "")
    ),
    getMinDiversity = list(
      list(f = .ropecv_cv_MSER_MSER_getMinDiversity__0, p = c(), r = c(), s = "")
    ),
    getMinMargin = list(
      list(f = .ropecv_cv_MSER_MSER_getMinMargin__0, p = c(), r = c(), s = "")
    ),
    getPass2Only = list(
      list(f = .ropecv_cv_MSER_MSER_getPass2Only__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setAreaThreshold = list(
      list(f = .ropecv_cv_MSER_MSER_setAreaThreshold__0, p = c(areaThreshold = "dbl"), r = c(TRUE), s = "areaThreshold")
    ),
    setDelta = list(
      list(f = .ropecv_cv_MSER_MSER_setDelta__0, p = c(delta = "int"), r = c(TRUE), s = "delta")
    ),
    setEdgeBlurSize = list(
      list(f = .ropecv_cv_MSER_MSER_setEdgeBlurSize__0, p = c(edge_blur_size = "int"), r = c(TRUE), s = "edge_blur_size")
    ),
    setMaxArea = list(
      list(f = .ropecv_cv_MSER_MSER_setMaxArea__0, p = c(maxArea = "int"), r = c(TRUE), s = "maxArea")
    ),
    setMaxEvolution = list(
      list(f = .ropecv_cv_MSER_MSER_setMaxEvolution__0, p = c(maxEvolution = "int"), r = c(TRUE), s = "maxEvolution")
    ),
    setMaxVariation = list(
      list(f = .ropecv_cv_MSER_MSER_setMaxVariation__0, p = c(maxVariation = "dbl"), r = c(TRUE), s = "maxVariation")
    ),
    setMinArea = list(
      list(f = .ropecv_cv_MSER_MSER_setMinArea__0, p = c(minArea = "int"), r = c(TRUE), s = "minArea")
    ),
    setMinDiversity = list(
      list(f = .ropecv_cv_MSER_MSER_setMinDiversity__0, p = c(minDiversity = "dbl"), r = c(TRUE), s = "minDiversity")
    ),
    setMinMargin = list(
      list(f = .ropecv_cv_MSER_MSER_setMinMargin__0, p = c(min_margin = "dbl"), r = c(TRUE), s = "min_margin")
    ),
    setPass2Only = list(
      list(f = .ropecv_cv_MSER_MSER_setPass2Only__0, p = c(f = "lgl"), r = c(TRUE), s = "f")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ORB
.ropecv_reg("cvORB",
  new = list(
    list(f = .ropecv_cv_ORB_ORB_create__0, p = c(nfeatures = "int", scaleFactor = "dbl", nlevels = "int", edgeThreshold = "int", firstLevel = "int", WTA_K = "int", scoreType = "any", patchSize = "int", fastThreshold = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "nfeatures = 500, scaleFactor = 1.2, nlevels = 8, edgeThreshold = 31, firstLevel = 0, WTA_K = 2, scoreType = HARRIS_SCORE, patchSize = 31, fastThreshold = 20")
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
      list(f = .ropecv_cv_ORB_ORB_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getEdgeThreshold = list(
      list(f = .ropecv_cv_ORB_ORB_getEdgeThreshold__0, p = c(), r = c(), s = "")
    ),
    getFastThreshold = list(
      list(f = .ropecv_cv_ORB_ORB_getFastThreshold__0, p = c(), r = c(), s = "")
    ),
    getFirstLevel = list(
      list(f = .ropecv_cv_ORB_ORB_getFirstLevel__0, p = c(), r = c(), s = "")
    ),
    getMaxFeatures = list(
      list(f = .ropecv_cv_ORB_ORB_getMaxFeatures__0, p = c(), r = c(), s = "")
    ),
    getNLevels = list(
      list(f = .ropecv_cv_ORB_ORB_getNLevels__0, p = c(), r = c(), s = "")
    ),
    getPatchSize = list(
      list(f = .ropecv_cv_ORB_ORB_getPatchSize__0, p = c(), r = c(), s = "")
    ),
    getScaleFactor = list(
      list(f = .ropecv_cv_ORB_ORB_getScaleFactor__0, p = c(), r = c(), s = "")
    ),
    getScoreType = list(
      list(f = .ropecv_cv_ORB_ORB_getScoreType__0, p = c(), r = c(), s = "")
    ),
    getWTA_K = list(
      list(f = .ropecv_cv_ORB_ORB_getWTA_K__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setEdgeThreshold = list(
      list(f = .ropecv_cv_ORB_ORB_setEdgeThreshold__0, p = c(edgeThreshold = "int"), r = c(TRUE), s = "edgeThreshold")
    ),
    setFastThreshold = list(
      list(f = .ropecv_cv_ORB_ORB_setFastThreshold__0, p = c(fastThreshold = "int"), r = c(TRUE), s = "fastThreshold")
    ),
    setFirstLevel = list(
      list(f = .ropecv_cv_ORB_ORB_setFirstLevel__0, p = c(firstLevel = "int"), r = c(TRUE), s = "firstLevel")
    ),
    setMaxFeatures = list(
      list(f = .ropecv_cv_ORB_ORB_setMaxFeatures__0, p = c(maxFeatures = "int"), r = c(TRUE), s = "maxFeatures")
    ),
    setNLevels = list(
      list(f = .ropecv_cv_ORB_ORB_setNLevels__0, p = c(nlevels = "int"), r = c(TRUE), s = "nlevels")
    ),
    setPatchSize = list(
      list(f = .ropecv_cv_ORB_ORB_setPatchSize__0, p = c(patchSize = "int"), r = c(TRUE), s = "patchSize")
    ),
    setScaleFactor = list(
      list(f = .ropecv_cv_ORB_ORB_setScaleFactor__0, p = c(scaleFactor = "dbl"), r = c(TRUE), s = "scaleFactor")
    ),
    setScoreType = list(
      list(f = .ropecv_cv_ORB_ORB_setScoreType__0, p = c(scoreType = "any"), r = c(TRUE), s = "scoreType")
    ),
    setWTA_K = list(
      list(f = .ropecv_cv_ORB_ORB_setWTA_K__0, p = c(wta_k = "int"), r = c(TRUE), s = "wta_k")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::SIFT
.ropecv_reg("cvSIFT",
  new = list(
    list(f = .ropecv_cv_SIFT_SIFT_create__0, p = c(nfeatures = "int", nOctaveLayers = "int", contrastThreshold = "dbl", edgeThreshold = "dbl", sigma = "dbl", enable_precise_upscale = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "nfeatures = 0, nOctaveLayers = 3, contrastThreshold = 0.04, edgeThreshold = 10, sigma = 1.6, enable_precise_upscale = FALSE"),
    list(f = .ropecv_cv_SIFT_SIFT_create__1, p = c(nfeatures = "int", nOctaveLayers = "int", contrastThreshold = "dbl", edgeThreshold = "dbl", sigma = "dbl", descriptorType = "int", enable_precise_upscale = "lgl"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE), s = "nfeatures, nOctaveLayers, contrastThreshold, edgeThreshold, sigma, descriptorType, enable_precise_upscale = FALSE")
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
    getContrastThreshold = list(
      list(f = .ropecv_cv_SIFT_SIFT_getContrastThreshold__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_SIFT_SIFT_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getEdgeThreshold = list(
      list(f = .ropecv_cv_SIFT_SIFT_getEdgeThreshold__0, p = c(), r = c(), s = "")
    ),
    getNFeatures = list(
      list(f = .ropecv_cv_SIFT_SIFT_getNFeatures__0, p = c(), r = c(), s = "")
    ),
    getNOctaveLayers = list(
      list(f = .ropecv_cv_SIFT_SIFT_getNOctaveLayers__0, p = c(), r = c(), s = "")
    ),
    getSigma = list(
      list(f = .ropecv_cv_SIFT_SIFT_getSigma__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setContrastThreshold = list(
      list(f = .ropecv_cv_SIFT_SIFT_setContrastThreshold__0, p = c(contrastThreshold = "dbl"), r = c(TRUE), s = "contrastThreshold")
    ),
    setEdgeThreshold = list(
      list(f = .ropecv_cv_SIFT_SIFT_setEdgeThreshold__0, p = c(edgeThreshold = "dbl"), r = c(TRUE), s = "edgeThreshold")
    ),
    setNFeatures = list(
      list(f = .ropecv_cv_SIFT_SIFT_setNFeatures__0, p = c(maxFeatures = "int"), r = c(TRUE), s = "maxFeatures")
    ),
    setNOctaveLayers = list(
      list(f = .ropecv_cv_SIFT_SIFT_setNOctaveLayers__0, p = c(nOctaveLayers = "int"), r = c(TRUE), s = "nOctaveLayers")
    ),
    setSigma = list(
      list(f = .ropecv_cv_SIFT_SIFT_setSigma__0, p = c(sigma = "dbl"), r = c(TRUE), s = "sigma")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::SimpleBlobDetector
.ropecv_reg("cvSimpleBlobDetector",
  new = list(
    list(f = .ropecv_cv_SimpleBlobDetector_SimpleBlobDetector_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
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
    getBlobContours = list(
      list(f = .ropecv_cv_SimpleBlobDetector_SimpleBlobDetector_getBlobContours__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_SimpleBlobDetector_SimpleBlobDetector_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getParams = list(
      list(f = .ropecv_cv_SimpleBlobDetector_SimpleBlobDetector_getParams__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_read__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_read__1, p = c(arg0 = "any"), r = c(TRUE), s = "arg0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setParams = list(
      list(f = .ropecv_cv_SimpleBlobDetector_SimpleBlobDetector_setParams__0, p = c(params = "lst"), r = c(TRUE), s = "params")
    ),
    write = list(
      list(f = .ropecv_cv_Feature2D_Feature2D_write__0, p = c(fileName = "chr"), r = c(TRUE), s = "fileName"),
      list(f = .ropecv_cv_Feature2D_Feature2D_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::SimpleBlobDetector::Params
.ropecv_reg("cvSimpleBlobDetectorParams",
  new = list(
    list(f = .ropecv_cv_SimpleBlobDetector_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
