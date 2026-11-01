# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::optflow::DualTVL1OpticalFlow
.ropecv_reg("cvDualTVL1OpticalFlow",
  new = list(
    list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_create__0, p = c(tau = "dbl", lambda = "dbl", theta = "dbl", nscales = "int", warps = "int", epsilon = "dbl", innnerIterations = "int", outerIterations = "int", scaleStep = "dbl", gamma = "dbl", medianFiltering = "int", useInitialFlow = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "tau = 0.25, lambda = 0.15, theta = 0.3, nscales = 5, warps = 5, epsilon = 0.01, innnerIterations = 30, outerIterations = 10, scaleStep = 0.8, gamma = 0.0, medianFiltering = 5, useInitialFlow = FALSE")
  ),
  m = list(
    calc = list(
      list(f = .ropecv_cv_DenseOpticalFlow_DenseOpticalFlow_calc__0, p = c(I0 = "mat", I1 = "mat", flow = "mat"), r = c(TRUE, TRUE, FALSE), s = "I0, I1, flow = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    collectGarbage = list(
      list(f = .ropecv_cv_DenseOpticalFlow_DenseOpticalFlow_collectGarbage__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getEpsilon = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getEpsilon__0, p = c(), r = c(), s = "")
    ),
    getGamma = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getGamma__0, p = c(), r = c(), s = "")
    ),
    getInnerIterations = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getInnerIterations__0, p = c(), r = c(), s = "")
    ),
    getLambda = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getLambda__0, p = c(), r = c(), s = "")
    ),
    getMedianFiltering = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getMedianFiltering__0, p = c(), r = c(), s = "")
    ),
    getOuterIterations = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getOuterIterations__0, p = c(), r = c(), s = "")
    ),
    getScaleStep = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getScaleStep__0, p = c(), r = c(), s = "")
    ),
    getScalesNumber = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getScalesNumber__0, p = c(), r = c(), s = "")
    ),
    getTau = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getTau__0, p = c(), r = c(), s = "")
    ),
    getTheta = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getTheta__0, p = c(), r = c(), s = "")
    ),
    getUseInitialFlow = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getUseInitialFlow__0, p = c(), r = c(), s = "")
    ),
    getWarpingsNumber = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_getWarpingsNumber__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setEpsilon = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setEpsilon__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setGamma = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setGamma__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setInnerIterations = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setInnerIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setLambda = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setLambda__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setMedianFiltering = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setMedianFiltering__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setOuterIterations = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setOuterIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setScaleStep = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setScaleStep__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setScalesNumber = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setScalesNumber__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setTau = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setTau__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setTheta = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setTheta__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setUseInitialFlow = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setUseInitialFlow__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setWarpingsNumber = list(
      list(f = .ropecv_cv_optflow_DualTVL1OpticalFlow_DualTVL1OpticalFlow_setWarpingsNumber__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
