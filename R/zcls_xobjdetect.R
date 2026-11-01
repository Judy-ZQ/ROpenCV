# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::CascadeClassifier
.ropecv_reg("cvCascadeClassifier",
  new = list(
    list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_new__1, p = c(filename = "chr"), r = c(TRUE), s = "filename")
  ),
  m = list(
    detectMultiScale = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_detectMultiScale__0, p = c(image = "mat", scaleFactor = "dbl", minNeighbors = "int", flags = "int", minSize = "size", maxSize = "size"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "image, scaleFactor = 1.1, minNeighbors = 3, flags = 0, minSize = NULL, maxSize = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_empty__0, p = c(), r = c(), s = "")
    ),
    getFeatureType = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_getFeatureType__0, p = c(), r = c(), s = "")
    ),
    getOriginalWindowSize = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_getOriginalWindowSize__0, p = c(), r = c(), s = "")
    ),
    isOldFormatCascade = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_isOldFormatCascade__0, p = c(), r = c(), s = "")
    ),
    load = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_load__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    read = list(
      list(f = .ropecv_cv_CascadeClassifier_CascadeClassifier_read__0, p = c(node = "any"), r = c(TRUE), s = "node")
    )
  )
)

# cv::HOGDescriptor
.ropecv_reg("cvHOGDescriptor",
  new = list(
    list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_new__0, p = c(filename = "chr"), r = c(TRUE), s = "filename"),
    list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_new__1, p = c(winSize = "size", blockSize = "size", blockStride = "size", cellSize = "size", nbins = "int", derivAperture = "int", winSigma = "dbl", histogramNormType = "any", L2HysThreshold = "dbl", gammaCorrection = "lgl", nlevels = "int", signedGradient = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "winSize = c(64, 128), blockSize = c(16, 16), blockStride = c(8, 8), cellSize = c(8, 8), nbins = 9, derivAperture = 1, winSigma = -1, histogramNormType, L2HysThreshold = 0.2, gammaCorrection = TRUE, nlevels = DEFAULT_NLEVELS, signedGradient = FALSE")
  ),
  m = list(
    checkDetectorSize = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_checkDetectorSize__0, p = c(), r = c(), s = "")
    ),
    compute = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_compute__0, p = c(img = "mat", winStride = "size", padding = "size", locations = "lst"), r = c(TRUE, FALSE, FALSE, FALSE), s = "img, winStride = NULL, padding = NULL, locations = NULL")
    ),
    computeGradient = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_computeGradient__0, p = c(img = "mat", grad = "mat", angleOfs = "mat", paddingTL = "size", paddingBR = "size"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "img, grad = NULL, angleOfs = NULL, paddingTL = NULL, paddingBR = NULL")
    ),
    detect = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_detect__0, p = c(img = "mat", hitThreshold = "dbl", winStride = "size", padding = "size", searchLocations = "lst"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "img, hitThreshold = 0, winStride = NULL, padding = NULL, searchLocations = NULL")
    ),
    detectMultiScale = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_detectMultiScale__0, p = c(img = "mat", hitThreshold = "dbl", winStride = "size", padding = "size", scale = "dbl", groupThreshold = "dbl", useMeanshiftGrouping = "lgl"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "img, hitThreshold = 0, winStride = NULL, padding = NULL, scale = 1.05, groupThreshold = 2.0, useMeanshiftGrouping = FALSE")
    ),
    getDescriptorSize = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_getDescriptorSize__0, p = c(), r = c(), s = "")
    ),
    getWinSigma = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_getWinSigma__0, p = c(), r = c(), s = "")
    ),
    load = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_load__0, p = c(filename = "chr", objname = "chr"), r = c(TRUE, FALSE), s = "filename, objname = ''")
    ),
    save = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_save__0, p = c(filename = "chr", objname = "chr"), r = c(TRUE, FALSE), s = "filename, objname = ''")
    ),
    setSVMDetector = list(
      list(f = .ropecv_cv_HOGDescriptor_HOGDescriptor_setSVMDetector__0, p = c(svmdetector = "mat"), r = c(TRUE), s = "svmdetector")
    )
  )
)
