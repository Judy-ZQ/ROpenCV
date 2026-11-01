# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::structured_light::SinusoidalPattern
.ropecv_reg("cvSinusoidalPattern",
  new = list(
    list(f = .ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_create__0, p = c(parameters = "obj"), r = c(FALSE), s = "parameters = NULL")
  ),
  m = list(
    computeDataModulationTerm = list(
      list(f = .ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_computeDataModulationTerm__0, p = c(patternImages = "matlist", shadowMask = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "patternImages, shadowMask, dst = NULL")
    ),
    computePhaseMap = list(
      list(f = .ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_computePhaseMap__0, p = c(patternImages = "matlist", fundamental = "mat", wrappedPhaseMap = "mat", shadowMask = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "patternImages, fundamental = NULL, wrappedPhaseMap = NULL, shadowMask = NULL")
    ),
    decode = list(
      list(f = .ropecv_cv_structured_light_StructuredLightPattern_StructuredLightPattern_decode__0, p = c(patternImages = "lst", blackImages = "matlist", whiteImages = "matlist", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "patternImages, blackImages = NULL, whiteImages = NULL, flags = DECODE_3D_UNDERWORLD, dst = NULL")
    ),
    findProCamMatches = list(
      list(f = .ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_findProCamMatches__0, p = c(projUnwrappedPhaseMap = "mat", camUnwrappedPhaseMap = "mat", matches = "lst"), r = c(TRUE, TRUE, FALSE), s = "projUnwrappedPhaseMap, camUnwrappedPhaseMap, matches = NULL")
    ),
    generate = list(
      list(f = .ropecv_cv_structured_light_StructuredLightPattern_StructuredLightPattern_generate__0, p = c(patternImages = "lst"), r = c(FALSE), s = "patternImages = NULL")
    ),
    unwrapPhaseMap = list(
      list(f = .ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_unwrapPhaseMap__0, p = c(wrappedPhaseMap = "mat", camSize = "size", shadowMask = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "wrappedPhaseMap, camSize, shadowMask = NULL, dst = NULL")
    )
  )
)

# cv::structured_light::SinusoidalPattern::Params
.ropecv_reg("cvSinusoidalPatternParams",
  new = list(
    list(f = .ropecv_cv_structured_light_SinusoidalPattern_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
