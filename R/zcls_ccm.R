# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ccm::ColorCorrectionModel
.ropecv_reg("cvColorCorrectionModel",
  new = list(
    list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_new__0, p = c(src = "any", constcolor = "any"), r = c(TRUE, TRUE), s = "src, constcolor"),
    list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_new__1, p = c(src = "any", colors = "any", ref_cs = "any"), r = c(TRUE, TRUE, TRUE), s = "src, colors, ref_cs"),
    list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_new__2, p = c(src = "any", colors = "any", ref_cs = "any", colored = "any"), r = c(TRUE, TRUE, TRUE, TRUE), s = "src, colors, ref_cs, colored")
  ),
  m = list(
    getCCM = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getCCM__0, p = c(), r = c(), s = "")
    ),
    getLoss = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getLoss__0, p = c(), r = c(), s = "")
    ),
    getMask = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getMask__0, p = c(), r = c(), s = "")
    ),
    getWeights = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_getWeights__0, p = c(), r = c(), s = "")
    ),
    get_dst_rgbl = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_get_dst_rgbl__0, p = c(), r = c(), s = "")
    ),
    get_src_rgbl = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_get_src_rgbl__0, p = c(), r = c(), s = "")
    ),
    infer = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_infer__0, p = c(img = "any", islinear = "lgl"), r = c(TRUE, FALSE), s = "img, islinear = FALSE")
    ),
    run = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_run__0, p = c(), r = c(), s = "")
    ),
    setCCM_TYPE = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setCCM_TYPE__0, p = c(ccm_type = "any"), r = c(TRUE), s = "ccm_type")
    ),
    setColorSpace = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setColorSpace__0, p = c(cs = "any"), r = c(TRUE), s = "cs")
    ),
    setDistance = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setDistance__0, p = c(distance = "any"), r = c(TRUE), s = "distance")
    ),
    setEpsilon = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setEpsilon__0, p = c(epsilon = "dbl"), r = c(TRUE), s = "epsilon")
    ),
    setInitialMethod = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setInitialMethod__0, p = c(initial_method_type = "any"), r = c(TRUE), s = "initial_method_type")
    ),
    setLinear = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setLinear__0, p = c(linear_type = "any"), r = c(TRUE), s = "linear_type")
    ),
    setLinearDegree = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setLinearDegree__0, p = c(deg = "int"), r = c(TRUE), s = "deg")
    ),
    setLinearGamma = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setLinearGamma__0, p = c(gamma = "dbl"), r = c(TRUE), s = "gamma")
    ),
    setMaxCount = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setMaxCount__0, p = c(max_count = "int"), r = c(TRUE), s = "max_count")
    ),
    setSaturatedThreshold = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setSaturatedThreshold__0, p = c(lower = "dbl", upper = "dbl"), r = c(TRUE, TRUE), s = "lower, upper")
    ),
    setWeightCoeff = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setWeightCoeff__0, p = c(weights_coeff = "dbl"), r = c(TRUE), s = "weights_coeff")
    ),
    setWeightsList = list(
      list(f = .ropecv_cv_ccm_ColorCorrectionModel_ColorCorrectionModel_setWeightsList__0, p = c(weights_list = "any"), r = c(TRUE), s = "weights_list")
    )
  )
)
