# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::stereo::MatchQuasiDense
.ropecv_reg("cvMatchQuasiDense",
  new = list(
    list(f = .ropecv_cv_stereo_MatchQuasiDense_MatchQuasiDense_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::stereo::QuasiDenseStereo
.ropecv_reg("cvQuasiDenseStereo",
  new = list(
    list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_create__0, p = c(monoImgSize = "size", paramFilepath = "chr"), r = c(TRUE, TRUE), s = "monoImgSize, paramFilepath")
  ),
  m = list(
    getDenseMatches = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDenseMatches__0, p = c(), r = c(), s = "")
    ),
    getDisparity = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getDisparity__0, p = c(), r = c(), s = "")
    ),
    getMatch = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getMatch__0, p = c(x = "int", y = "int"), r = c(TRUE, TRUE), s = "x, y")
    ),
    getSparseMatches = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_getSparseMatches__0, p = c(), r = c(), s = "")
    ),
    loadParameters = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_loadParameters__0, p = c(filepath = "chr"), r = c(TRUE), s = "filepath")
    ),
    process = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_process__0, p = c(imgLeft = "any", imgRight = "any"), r = c(TRUE, TRUE), s = "imgLeft, imgRight")
    ),
    saveParameters = list(
      list(f = .ropecv_cv_stereo_QuasiDenseStereo_QuasiDenseStereo_saveParameters__0, p = c(filepath = "chr"), r = c(TRUE), s = "filepath")
    )
  )
)
