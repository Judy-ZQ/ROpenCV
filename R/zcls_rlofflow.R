# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::optflow::DenseRLOFOpticalFlow
.ropecv_reg("cvDenseRLOFOpticalFlow",
  new = list(
    list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_create__0, p = c(rlofParam = "obj", forwardBackwardThreshold = "dbl", gridStep = "size", interp_type = "any", epicK = "int", epicSigma = "dbl", epicLambda = "dbl", ricSPSize = "int", ricSLICType = "int", use_post_proc = "lgl", fgsLambda = "dbl", fgsSigma = "dbl", use_variational_refinement = "lgl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "rlofParam = NULL, forwardBackwardThreshold = 1, gridStep = c(6, 6), interp_type = INTERP_EPIC, epicK = 128, epicSigma = 0.05, epicLambda = 999.0, ricSPSize = 15, ricSLICType = 100, use_post_proc = TRUE, fgsLambda = 500.0, fgsSigma = 1.5, use_variational_refinement = FALSE")
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
    getEPICK = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getEPICK__0, p = c(), r = c(), s = "")
    ),
    getEPICLambda = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getEPICLambda__0, p = c(), r = c(), s = "")
    ),
    getEPICSigma = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getEPICSigma__0, p = c(), r = c(), s = "")
    ),
    getFgsLambda = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getFgsLambda__0, p = c(), r = c(), s = "")
    ),
    getFgsSigma = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getFgsSigma__0, p = c(), r = c(), s = "")
    ),
    getForwardBackward = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getForwardBackward__0, p = c(), r = c(), s = "")
    ),
    getGridStep = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getGridStep__0, p = c(), r = c(), s = "")
    ),
    getInterpolation = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getInterpolation__0, p = c(), r = c(), s = "")
    ),
    getRICSLICType = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getRICSLICType__0, p = c(), r = c(), s = "")
    ),
    getRICSPSize = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getRICSPSize__0, p = c(), r = c(), s = "")
    ),
    getRLOFOpticalFlowParameter = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getRLOFOpticalFlowParameter__0, p = c(), r = c(), s = "")
    ),
    getUsePostProc = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getUsePostProc__0, p = c(), r = c(), s = "")
    ),
    getUseVariationalRefinement = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_getUseVariationalRefinement__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setEPICK = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setEPICK__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setEPICLambda = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setEPICLambda__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setEPICSigma = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setEPICSigma__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setFgsLambda = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setFgsLambda__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setFgsSigma = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setFgsSigma__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setForwardBackward = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setForwardBackward__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setGridStep = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setGridStep__0, p = c(val = "size"), r = c(TRUE), s = "val")
    ),
    setInterpolation = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setInterpolation__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setRICSLICType = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setRICSLICType__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setRICSPSize = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setRICSPSize__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setRLOFOpticalFlowParameter = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setRLOFOpticalFlowParameter__0, p = c(val = "obj"), r = c(TRUE), s = "val")
    ),
    setUsePostProc = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setUsePostProc__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseVariationalRefinement = list(
      list(f = .ropecv_cv_optflow_DenseRLOFOpticalFlow_DenseRLOFOpticalFlow_setUseVariationalRefinement__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::optflow::RLOFOpticalFlowParameter
.ropecv_reg("cvRLOFOpticalFlowParameter",
  new = list(
    list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    getCrossSegmentationThreshold = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getCrossSegmentationThreshold__0, p = c(), r = c(), s = "")
    ),
    getGlobalMotionRansacThreshold = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getGlobalMotionRansacThreshold__0, p = c(), r = c(), s = "")
    ),
    getLargeWinSize = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getLargeWinSize__0, p = c(), r = c(), s = "")
    ),
    getMaxIteration = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getMaxIteration__0, p = c(), r = c(), s = "")
    ),
    getMaxLevel = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getMaxLevel__0, p = c(), r = c(), s = "")
    ),
    getMinEigenValue = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getMinEigenValue__0, p = c(), r = c(), s = "")
    ),
    getNormSigma0 = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getNormSigma0__0, p = c(), r = c(), s = "")
    ),
    getNormSigma1 = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getNormSigma1__0, p = c(), r = c(), s = "")
    ),
    getSmallWinSize = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getSmallWinSize__0, p = c(), r = c(), s = "")
    ),
    getSolverType = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getSolverType__0, p = c(), r = c(), s = "")
    ),
    getSupportRegionType = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getSupportRegionType__0, p = c(), r = c(), s = "")
    ),
    getUseGlobalMotionPrior = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getUseGlobalMotionPrior__0, p = c(), r = c(), s = "")
    ),
    getUseIlluminationModel = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getUseIlluminationModel__0, p = c(), r = c(), s = "")
    ),
    getUseInitialFlow = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_getUseInitialFlow__0, p = c(), r = c(), s = "")
    ),
    setCrossSegmentationThreshold = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setCrossSegmentationThreshold__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setGlobalMotionRansacThreshold = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setGlobalMotionRansacThreshold__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setLargeWinSize = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setLargeWinSize__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxIteration = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setMaxIteration__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxLevel = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setMaxLevel__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMinEigenValue = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setMinEigenValue__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setNormSigma0 = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setNormSigma0__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setNormSigma1 = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setNormSigma1__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setSmallWinSize = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setSmallWinSize__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setSolverType = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setSolverType__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setSupportRegionType = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setSupportRegionType__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setUseGlobalMotionPrior = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseGlobalMotionPrior__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseIlluminationModel = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseIlluminationModel__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseInitialFlow = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseInitialFlow__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseMEstimator = list(
      list(f = .ropecv_cv_optflow_RLOFOpticalFlowParameter_RLOFOpticalFlowParameter_setUseMEstimator__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    )
  )
)

# cv::optflow::SparseRLOFOpticalFlow
.ropecv_reg("cvSparseRLOFOpticalFlow",
  new = list(
    list(f = .ropecv_cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_create__0, p = c(rlofParam = "obj", forwardBackwardThreshold = "dbl"), r = c(FALSE, FALSE), s = "rlofParam = NULL, forwardBackwardThreshold = 1")
  ),
  m = list(
    calc = list(
      list(f = .ropecv_cv_SparseOpticalFlow_SparseOpticalFlow_calc__0, p = c(prevImg = "mat", nextImg = "mat", prevPts = "mat", nextPts = "mat", status = "mat", err = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "prevImg, nextImg, prevPts, nextPts = NULL, status = NULL, err = NULL")
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
    getForwardBackward = list(
      list(f = .ropecv_cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_getForwardBackward__0, p = c(), r = c(), s = "")
    ),
    getRLOFOpticalFlowParameter = list(
      list(f = .ropecv_cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_getRLOFOpticalFlowParameter__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setForwardBackward = list(
      list(f = .ropecv_cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_setForwardBackward__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setRLOFOpticalFlowParameter = list(
      list(f = .ropecv_cv_optflow_SparseRLOFOpticalFlow_SparseRLOFOpticalFlow_setRLOFOpticalFlowParameter__0, p = c(val = "obj"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
