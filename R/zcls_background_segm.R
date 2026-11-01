# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::BackgroundSubtractor
.ropecv_reg("cvBackgroundSubtractor",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_BackgroundSubtractor_BackgroundSubtractor_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_BackgroundSubtractor_BackgroundSubtractor_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
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

# cv::BackgroundSubtractorKNN
.ropecv_reg("cvBackgroundSubtractorKNN",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_BackgroundSubtractor_BackgroundSubtractor_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_BackgroundSubtractor_BackgroundSubtractor_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDetectShadows = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getDetectShadows__0, p = c(), r = c(), s = "")
    ),
    getDist2Threshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getDist2Threshold__0, p = c(), r = c(), s = "")
    ),
    getHistory = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getHistory__0, p = c(), r = c(), s = "")
    ),
    getNSamples = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getNSamples__0, p = c(), r = c(), s = "")
    ),
    getShadowThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getShadowThreshold__0, p = c(), r = c(), s = "")
    ),
    getShadowValue = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getShadowValue__0, p = c(), r = c(), s = "")
    ),
    getkNNSamples = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_getkNNSamples__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setDetectShadows = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setDetectShadows__0, p = c(detectShadows = "lgl"), r = c(TRUE), s = "detectShadows")
    ),
    setDist2Threshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setDist2Threshold__0, p = c(dist2Threshold = "dbl"), r = c(TRUE), s = "dist2Threshold")
    ),
    setHistory = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setHistory__0, p = c(history = "int"), r = c(TRUE), s = "history")
    ),
    setNSamples = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setNSamples__0, p = c(nN = "int"), r = c(TRUE), s = "nN")
    ),
    setShadowThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setShadowThreshold__0, p = c(threshold = "dbl"), r = c(TRUE), s = "threshold")
    ),
    setShadowValue = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setShadowValue__0, p = c(value = "int"), r = c(TRUE), s = "value")
    ),
    setkNNSamples = list(
      list(f = .ropecv_cv_BackgroundSubtractorKNN_BackgroundSubtractorKNN_setkNNSamples__0, p = c(nkNN = "int"), r = c(TRUE), s = "nkNN")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::BackgroundSubtractorMOG2
.ropecv_reg("cvBackgroundSubtractorMOG2",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_BackgroundSubtractor_BackgroundSubtractor_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getBackgroundRatio = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getBackgroundRatio__0, p = c(), r = c(), s = "")
    ),
    getComplexityReductionThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getComplexityReductionThreshold__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDetectShadows = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getDetectShadows__0, p = c(), r = c(), s = "")
    ),
    getHistory = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getHistory__0, p = c(), r = c(), s = "")
    ),
    getNMixtures = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getNMixtures__0, p = c(), r = c(), s = "")
    ),
    getShadowThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getShadowThreshold__0, p = c(), r = c(), s = "")
    ),
    getShadowValue = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getShadowValue__0, p = c(), r = c(), s = "")
    ),
    getVarInit = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarInit__0, p = c(), r = c(), s = "")
    ),
    getVarMax = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarMax__0, p = c(), r = c(), s = "")
    ),
    getVarMin = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarMin__0, p = c(), r = c(), s = "")
    ),
    getVarThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarThreshold__0, p = c(), r = c(), s = "")
    ),
    getVarThresholdGen = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_getVarThresholdGen__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBackgroundRatio = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setBackgroundRatio__0, p = c(ratio = "dbl"), r = c(TRUE), s = "ratio")
    ),
    setComplexityReductionThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setComplexityReductionThreshold__0, p = c(ct = "dbl"), r = c(TRUE), s = "ct")
    ),
    setDetectShadows = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setDetectShadows__0, p = c(detectShadows = "lgl"), r = c(TRUE), s = "detectShadows")
    ),
    setHistory = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setHistory__0, p = c(history = "int"), r = c(TRUE), s = "history")
    ),
    setNMixtures = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setNMixtures__0, p = c(nmixtures = "int"), r = c(TRUE), s = "nmixtures")
    ),
    setShadowThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setShadowThreshold__0, p = c(threshold = "dbl"), r = c(TRUE), s = "threshold")
    ),
    setShadowValue = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setShadowValue__0, p = c(value = "int"), r = c(TRUE), s = "value")
    ),
    setVarInit = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarInit__0, p = c(varInit = "dbl"), r = c(TRUE), s = "varInit")
    ),
    setVarMax = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarMax__0, p = c(varMax = "dbl"), r = c(TRUE), s = "varMax")
    ),
    setVarMin = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarMin__0, p = c(varMin = "dbl"), r = c(TRUE), s = "varMin")
    ),
    setVarThreshold = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarThreshold__0, p = c(varThreshold = "dbl"), r = c(TRUE), s = "varThreshold")
    ),
    setVarThresholdGen = list(
      list(f = .ropecv_cv_BackgroundSubtractorMOG2_BackgroundSubtractorMOG2_setVarThresholdGen__0, p = c(varThresholdGen = "dbl"), r = c(TRUE), s = "varThresholdGen")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
