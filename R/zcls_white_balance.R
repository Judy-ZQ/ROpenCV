# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::xphoto::GrayworldWB
.ropecv_reg("cvGrayworldWB",
  new = list(

  ),
  m = list(
    balanceWhite = list(
      list(f = .ropecv_cv_xphoto_WhiteBalancer_WhiteBalancer_balanceWhite__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getSaturationThreshold = list(
      list(f = .ropecv_cv_xphoto_GrayworldWB_GrayworldWB_getSaturationThreshold__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setSaturationThreshold = list(
      list(f = .ropecv_cv_xphoto_GrayworldWB_GrayworldWB_setSaturationThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xphoto::LearningBasedWB
.ropecv_reg("cvLearningBasedWB",
  new = list(

  ),
  m = list(
    balanceWhite = list(
      list(f = .ropecv_cv_xphoto_WhiteBalancer_WhiteBalancer_balanceWhite__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    extractSimpleFeatures = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_extractSimpleFeatures__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getHistBinNum = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_getHistBinNum__0, p = c(), r = c(), s = "")
    ),
    getRangeMaxVal = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_getRangeMaxVal__0, p = c(), r = c(), s = "")
    ),
    getSaturationThreshold = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_getSaturationThreshold__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setHistBinNum = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_setHistBinNum__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setRangeMaxVal = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_setRangeMaxVal__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setSaturationThreshold = list(
      list(f = .ropecv_cv_xphoto_LearningBasedWB_LearningBasedWB_setSaturationThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xphoto::SimpleWB
.ropecv_reg("cvSimpleWB",
  new = list(

  ),
  m = list(
    balanceWhite = list(
      list(f = .ropecv_cv_xphoto_WhiteBalancer_WhiteBalancer_balanceWhite__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getInputMax = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_getInputMax__0, p = c(), r = c(), s = "")
    ),
    getInputMin = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_getInputMin__0, p = c(), r = c(), s = "")
    ),
    getOutputMax = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_getOutputMax__0, p = c(), r = c(), s = "")
    ),
    getOutputMin = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_getOutputMin__0, p = c(), r = c(), s = "")
    ),
    getP = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_getP__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setInputMax = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_setInputMax__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setInputMin = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_setInputMin__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setOutputMax = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_setOutputMax__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setOutputMin = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_setOutputMin__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setP = list(
      list(f = .ropecv_cv_xphoto_SimpleWB_SimpleWB_setP__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::xphoto::WhiteBalancer
.ropecv_reg("cvWhiteBalancer",
  new = list(

  ),
  m = list(
    balanceWhite = list(
      list(f = .ropecv_cv_xphoto_WhiteBalancer_WhiteBalancer_balanceWhite__0, p = c(src = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "src, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
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
