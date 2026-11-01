# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::bgsegm::BackgroundSubtractorCNT
.ropecv_reg("cvBackgroundSubtractorCNT",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getIsParallel = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getIsParallel__0, p = c(), r = c(), s = "")
    ),
    getMaxPixelStability = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getMaxPixelStability__0, p = c(), r = c(), s = "")
    ),
    getMinPixelStability = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getMinPixelStability__0, p = c(), r = c(), s = "")
    ),
    getUseHistory = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_getUseHistory__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setIsParallel = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setIsParallel__0, p = c(value = "lgl"), r = c(TRUE), s = "value")
    ),
    setMaxPixelStability = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setMaxPixelStability__0, p = c(value = "int"), r = c(TRUE), s = "value")
    ),
    setMinPixelStability = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setMinPixelStability__0, p = c(value = "int"), r = c(TRUE), s = "value")
    ),
    setUseHistory = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorCNT_BackgroundSubtractorCNT_setUseHistory__0, p = c(value = "lgl"), r = c(TRUE), s = "value")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::bgsegm::BackgroundSubtractorGMG
.ropecv_reg("cvBackgroundSubtractorGMG",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getBackgroundPrior = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getBackgroundPrior__0, p = c(), r = c(), s = "")
    ),
    getDecisionThreshold = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getDecisionThreshold__0, p = c(), r = c(), s = "")
    ),
    getDefaultLearningRate = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getDefaultLearningRate__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMaxFeatures = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getMaxFeatures__0, p = c(), r = c(), s = "")
    ),
    getMaxVal = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getMaxVal__0, p = c(), r = c(), s = "")
    ),
    getMinVal = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getMinVal__0, p = c(), r = c(), s = "")
    ),
    getNumFrames = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getNumFrames__0, p = c(), r = c(), s = "")
    ),
    getQuantizationLevels = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getQuantizationLevels__0, p = c(), r = c(), s = "")
    ),
    getSmoothingRadius = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getSmoothingRadius__0, p = c(), r = c(), s = "")
    ),
    getUpdateBackgroundModel = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_getUpdateBackgroundModel__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBackgroundPrior = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setBackgroundPrior__0, p = c(bgprior = "dbl"), r = c(TRUE), s = "bgprior")
    ),
    setDecisionThreshold = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setDecisionThreshold__0, p = c(thresh = "dbl"), r = c(TRUE), s = "thresh")
    ),
    setDefaultLearningRate = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setDefaultLearningRate__0, p = c(lr = "dbl"), r = c(TRUE), s = "lr")
    ),
    setMaxFeatures = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setMaxFeatures__0, p = c(maxFeatures = "int"), r = c(TRUE), s = "maxFeatures")
    ),
    setMaxVal = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setMaxVal__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setMinVal = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setMinVal__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setNumFrames = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setNumFrames__0, p = c(nframes = "int"), r = c(TRUE), s = "nframes")
    ),
    setQuantizationLevels = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setQuantizationLevels__0, p = c(nlevels = "int"), r = c(TRUE), s = "nlevels")
    ),
    setSmoothingRadius = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setSmoothingRadius__0, p = c(radius = "int"), r = c(TRUE), s = "radius")
    ),
    setUpdateBackgroundModel = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGMG_BackgroundSubtractorGMG_setUpdateBackgroundModel__0, p = c(update = "lgl"), r = c(TRUE), s = "update")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::bgsegm::BackgroundSubtractorGSOC
.ropecv_reg("cvBackgroundSubtractorGSOC",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGSOC_BackgroundSubtractorGSOC_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorGSOC_BackgroundSubtractorGSOC_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
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

# cv::bgsegm::BackgroundSubtractorLSBP
.ropecv_reg("cvBackgroundSubtractorLSBP",
  new = list(

  ),
  m = list(
    apply = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorLSBP_BackgroundSubtractorLSBP_apply__0, p = c(image = "mat", learningRate = "dbl", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, learningRate = -1, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBackgroundImage = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorLSBP_BackgroundSubtractorLSBP_getBackgroundImage__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
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

# cv::bgsegm::BackgroundSubtractorMOG
.ropecv_reg("cvBackgroundSubtractorMOG",
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
    getBackgroundRatio = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getBackgroundRatio__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getHistory = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getHistory__0, p = c(), r = c(), s = "")
    ),
    getNMixtures = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getNMixtures__0, p = c(), r = c(), s = "")
    ),
    getNoiseSigma = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_getNoiseSigma__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBackgroundRatio = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setBackgroundRatio__0, p = c(backgroundRatio = "dbl"), r = c(TRUE), s = "backgroundRatio")
    ),
    setHistory = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setHistory__0, p = c(nframes = "int"), r = c(TRUE), s = "nframes")
    ),
    setNMixtures = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setNMixtures__0, p = c(nmix = "int"), r = c(TRUE), s = "nmix")
    ),
    setNoiseSigma = list(
      list(f = .ropecv_cv_bgsegm_BackgroundSubtractorMOG_BackgroundSubtractorMOG_setNoiseSigma__0, p = c(noiseSigma = "dbl"), r = c(TRUE), s = "noiseSigma")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::bgsegm::SyntheticSequenceGenerator
.ropecv_reg("cvSyntheticSequenceGenerator",
  new = list(
    list(f = .ropecv_cv_bgsegm_SyntheticSequenceGenerator_SyntheticSequenceGenerator_new__0, p = c(background = "mat", object = "mat", amplitude = "dbl", wavelength = "dbl", wavespeed = "dbl", objspeed = "dbl"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE), s = "background, object, amplitude, wavelength, wavespeed, objspeed")
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
    getNextFrame = list(
      list(f = .ropecv_cv_bgsegm_SyntheticSequenceGenerator_SyntheticSequenceGenerator_getNextFrame__0, p = c(frame = "mat", gtMask = "mat"), r = c(FALSE, FALSE), s = "frame = NULL, gtMask = NULL")
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
