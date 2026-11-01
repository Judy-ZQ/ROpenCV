# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::structured_light::GrayCodePattern
.ropecv_reg("cvGrayCodePattern",
  new = list(
    list(f = .ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_create__0, p = c(width = "int", height = "int"), r = c(TRUE, TRUE), s = "width, height")
  ),
  m = list(
    decode = list(
      list(f = .ropecv_cv_structured_light_StructuredLightPattern_StructuredLightPattern_decode__0, p = c(patternImages = "lst", blackImages = "matlist", whiteImages = "matlist", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "patternImages, blackImages = NULL, whiteImages = NULL, flags = DECODE_3D_UNDERWORLD, dst = NULL")
    ),
    generate = list(
      list(f = .ropecv_cv_structured_light_StructuredLightPattern_StructuredLightPattern_generate__0, p = c(patternImages = "lst"), r = c(FALSE), s = "patternImages = NULL")
    ),
    getImagesForShadowMasks = list(
      list(f = .ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_getImagesForShadowMasks__0, p = c(blackImage = "mat", whiteImage = "mat"), r = c(FALSE, FALSE), s = "blackImage = NULL, whiteImage = NULL")
    ),
    getNumberOfPatternImages = list(
      list(f = .ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_getNumberOfPatternImages__0, p = c(), r = c(), s = "")
    ),
    getProjPixel = list(
      list(f = .ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_getProjPixel__0, p = c(patternImages = "matlist", x = "int", y = "int"), r = c(TRUE, TRUE, TRUE), s = "patternImages, x, y")
    ),
    setBlackThreshold = list(
      list(f = .ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_setBlackThreshold__0, p = c(value = "int"), r = c(TRUE), s = "value")
    ),
    setWhiteThreshold = list(
      list(f = .ropecv_cv_structured_light_GrayCodePattern_GrayCodePattern_setWhiteThreshold__0, p = c(value = "int"), r = c(TRUE), s = "value")
    )
  )
)
