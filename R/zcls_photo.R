# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::AlignExposures
.ropecv_reg("cvAlignExposures",
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
    process = list(
      list(f = .ropecv_cv_AlignExposures_AlignExposures_process__0, p = c(src = "matlist", dst = "lst", times = "mat", response = "mat"), r = c(TRUE, FALSE, TRUE, TRUE), s = "src, dst = NULL, times, response")
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

# cv::AlignMTB
.ropecv_reg("cvAlignMTB",
  new = list(

  ),
  m = list(
    calculateShift = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_calculateShift__0, p = c(img0 = "mat", img1 = "mat"), r = c(TRUE, TRUE), s = "img0, img1")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    computeBitmaps = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_computeBitmaps__0, p = c(img = "mat", tb = "mat", eb = "mat"), r = c(TRUE, FALSE, FALSE), s = "img, tb = NULL, eb = NULL")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getCut = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_getCut__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getExcludeRange = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_getExcludeRange__0, p = c(), r = c(), s = "")
    ),
    getMaxBits = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_getMaxBits__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_process__0, p = c(src = "matlist", dst = "lst"), r = c(TRUE, FALSE), s = "src, dst = NULL"),
      list(f = .ropecv_cv_AlignMTB_AlignMTB_process__1, p = c(src = "matlist", dst = "lst", times = "mat", response = "mat"), r = c(TRUE, FALSE, TRUE, TRUE), s = "src, dst = NULL, times, response")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setCut = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_setCut__0, p = c(value = "lgl"), r = c(TRUE), s = "value")
    ),
    setExcludeRange = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_setExcludeRange__0, p = c(exclude_range = "int"), r = c(TRUE), s = "exclude_range")
    ),
    setMaxBits = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_setMaxBits__0, p = c(max_bits = "int"), r = c(TRUE), s = "max_bits")
    ),
    shiftMat = list(
      list(f = .ropecv_cv_AlignMTB_AlignMTB_shiftMat__0, p = c(src = "mat", shift = "pt", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, shift, dst = NULL")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::CalibrateCRF
.ropecv_reg("cvCalibrateCRF",
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
    process = list(
      list(f = .ropecv_cv_CalibrateCRF_CalibrateCRF_process__0, p = c(src = "matlist", times = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, times, dst = NULL")
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

# cv::CalibrateDebevec
.ropecv_reg("cvCalibrateDebevec",
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
    getLambda = list(
      list(f = .ropecv_cv_CalibrateDebevec_CalibrateDebevec_getLambda__0, p = c(), r = c(), s = "")
    ),
    getRandom = list(
      list(f = .ropecv_cv_CalibrateDebevec_CalibrateDebevec_getRandom__0, p = c(), r = c(), s = "")
    ),
    getSamples = list(
      list(f = .ropecv_cv_CalibrateDebevec_CalibrateDebevec_getSamples__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_CalibrateCRF_CalibrateCRF_process__0, p = c(src = "matlist", times = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, times, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setLambda = list(
      list(f = .ropecv_cv_CalibrateDebevec_CalibrateDebevec_setLambda__0, p = c(lambda = "dbl"), r = c(TRUE), s = "lambda")
    ),
    setRandom = list(
      list(f = .ropecv_cv_CalibrateDebevec_CalibrateDebevec_setRandom__0, p = c(random = "lgl"), r = c(TRUE), s = "random")
    ),
    setSamples = list(
      list(f = .ropecv_cv_CalibrateDebevec_CalibrateDebevec_setSamples__0, p = c(samples = "int"), r = c(TRUE), s = "samples")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::CalibrateRobertson
.ropecv_reg("cvCalibrateRobertson",
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
    getMaxIter = list(
      list(f = .ropecv_cv_CalibrateRobertson_CalibrateRobertson_getMaxIter__0, p = c(), r = c(), s = "")
    ),
    getRadiance = list(
      list(f = .ropecv_cv_CalibrateRobertson_CalibrateRobertson_getRadiance__0, p = c(), r = c(), s = "")
    ),
    getThreshold = list(
      list(f = .ropecv_cv_CalibrateRobertson_CalibrateRobertson_getThreshold__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_CalibrateCRF_CalibrateCRF_process__0, p = c(src = "matlist", times = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, times, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setMaxIter = list(
      list(f = .ropecv_cv_CalibrateRobertson_CalibrateRobertson_setMaxIter__0, p = c(max_iter = "int"), r = c(TRUE), s = "max_iter")
    ),
    setThreshold = list(
      list(f = .ropecv_cv_CalibrateRobertson_CalibrateRobertson_setThreshold__0, p = c(threshold = "dbl"), r = c(TRUE), s = "threshold")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::MergeDebevec
.ropecv_reg("cvMergeDebevec",
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
    process = list(
      list(f = .ropecv_cv_MergeDebevec_MergeDebevec_process__0, p = c(src = "matlist", times = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, times, dst = NULL"),
      list(f = .ropecv_cv_MergeDebevec_MergeDebevec_process__1, p = c(src = "matlist", times = "mat", response = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "src, times, response, dst = NULL")
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

# cv::MergeExposures
.ropecv_reg("cvMergeExposures",
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
    process = list(
      list(f = .ropecv_cv_MergeExposures_MergeExposures_process__0, p = c(src = "matlist", times = "mat", response = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "src, times, response, dst = NULL")
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

# cv::MergeMertens
.ropecv_reg("cvMergeMertens",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getContrastWeight = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_getContrastWeight__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getExposureWeight = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_getExposureWeight__0, p = c(), r = c(), s = "")
    ),
    getSaturationWeight = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_getSaturationWeight__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_process__0, p = c(src = "matlist", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL"),
      list(f = .ropecv_cv_MergeMertens_MergeMertens_process__1, p = c(src = "matlist", times = "mat", response = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "src, times, response, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setContrastWeight = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_setContrastWeight__0, p = c(contrast_weiht = "dbl"), r = c(TRUE), s = "contrast_weiht")
    ),
    setExposureWeight = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_setExposureWeight__0, p = c(exposure_weight = "dbl"), r = c(TRUE), s = "exposure_weight")
    ),
    setSaturationWeight = list(
      list(f = .ropecv_cv_MergeMertens_MergeMertens_setSaturationWeight__0, p = c(saturation_weight = "dbl"), r = c(TRUE), s = "saturation_weight")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::MergeRobertson
.ropecv_reg("cvMergeRobertson",
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
    process = list(
      list(f = .ropecv_cv_MergeRobertson_MergeRobertson_process__0, p = c(src = "matlist", times = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, times, dst = NULL"),
      list(f = .ropecv_cv_MergeRobertson_MergeRobertson_process__1, p = c(src = "matlist", times = "mat", response = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE), s = "src, times, response, dst = NULL")
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

# cv::Tonemap
.ropecv_reg("cvTonemap",
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
    getGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_getGamma__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_process__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_setGamma__0, p = c(gamma = "dbl"), r = c(TRUE), s = "gamma")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::TonemapDrago
.ropecv_reg("cvTonemapDrago",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getBias = list(
      list(f = .ropecv_cv_TonemapDrago_TonemapDrago_getBias__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_getGamma__0, p = c(), r = c(), s = "")
    ),
    getSaturation = list(
      list(f = .ropecv_cv_TonemapDrago_TonemapDrago_getSaturation__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_process__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBias = list(
      list(f = .ropecv_cv_TonemapDrago_TonemapDrago_setBias__0, p = c(bias = "dbl"), r = c(TRUE), s = "bias")
    ),
    setGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_setGamma__0, p = c(gamma = "dbl"), r = c(TRUE), s = "gamma")
    ),
    setSaturation = list(
      list(f = .ropecv_cv_TonemapDrago_TonemapDrago_setSaturation__0, p = c(saturation = "dbl"), r = c(TRUE), s = "saturation")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::TonemapMantiuk
.ropecv_reg("cvTonemapMantiuk",
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
    getGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_getGamma__0, p = c(), r = c(), s = "")
    ),
    getSaturation = list(
      list(f = .ropecv_cv_TonemapMantiuk_TonemapMantiuk_getSaturation__0, p = c(), r = c(), s = "")
    ),
    getScale = list(
      list(f = .ropecv_cv_TonemapMantiuk_TonemapMantiuk_getScale__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_process__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_setGamma__0, p = c(gamma = "dbl"), r = c(TRUE), s = "gamma")
    ),
    setSaturation = list(
      list(f = .ropecv_cv_TonemapMantiuk_TonemapMantiuk_setSaturation__0, p = c(saturation = "dbl"), r = c(TRUE), s = "saturation")
    ),
    setScale = list(
      list(f = .ropecv_cv_TonemapMantiuk_TonemapMantiuk_setScale__0, p = c(scale = "dbl"), r = c(TRUE), s = "scale")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::TonemapReinhard
.ropecv_reg("cvTonemapReinhard",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getColorAdaptation = list(
      list(f = .ropecv_cv_TonemapReinhard_TonemapReinhard_getColorAdaptation__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_getGamma__0, p = c(), r = c(), s = "")
    ),
    getIntensity = list(
      list(f = .ropecv_cv_TonemapReinhard_TonemapReinhard_getIntensity__0, p = c(), r = c(), s = "")
    ),
    getLightAdaptation = list(
      list(f = .ropecv_cv_TonemapReinhard_TonemapReinhard_getLightAdaptation__0, p = c(), r = c(), s = "")
    ),
    process = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_process__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setColorAdaptation = list(
      list(f = .ropecv_cv_TonemapReinhard_TonemapReinhard_setColorAdaptation__0, p = c(color_adapt = "dbl"), r = c(TRUE), s = "color_adapt")
    ),
    setGamma = list(
      list(f = .ropecv_cv_Tonemap_Tonemap_setGamma__0, p = c(gamma = "dbl"), r = c(TRUE), s = "gamma")
    ),
    setIntensity = list(
      list(f = .ropecv_cv_TonemapReinhard_TonemapReinhard_setIntensity__0, p = c(intensity = "dbl"), r = c(TRUE), s = "intensity")
    ),
    setLightAdaptation = list(
      list(f = .ropecv_cv_TonemapReinhard_TonemapReinhard_setLightAdaptation__0, p = c(light_adapt = "dbl"), r = c(TRUE), s = "light_adapt")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
