# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ximgproc::EdgeAwareInterpolator
.ropecv_reg("cvEdgeAwareInterpolator",
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
    getFGSLambda = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getFGSLambda__0, p = c(), r = c(), s = "")
    ),
    getFGSSigma = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getFGSSigma__0, p = c(), r = c(), s = "")
    ),
    getK = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getK__0, p = c(), r = c(), s = "")
    ),
    getLambda = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getLambda__0, p = c(), r = c(), s = "")
    ),
    getSigma = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getSigma__0, p = c(), r = c(), s = "")
    ),
    getUsePostProcessing = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_getUsePostProcessing__0, p = c(), r = c(), s = "")
    ),
    interpolate = list(
      list(f = .ropecv_cv_ximgproc_SparseMatchInterpolator_SparseMatchInterpolator_interpolate__0, p = c(from_image = "mat", from_points = "mat", to_image = "mat", to_points = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "from_image, from_points, to_image, to_points, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setCostMap = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setCostMap__0, p = c(costMap = "any"), r = c(TRUE), s = "costMap")
    ),
    setFGSLambda = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setFGSLambda__0, p = c(lambda = "dbl"), r = c(TRUE), s = "lambda")
    ),
    setFGSSigma = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setFGSSigma__0, p = c(sigma = "dbl"), r = c(TRUE), s = "sigma")
    ),
    setK = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setK__0, p = c(k = "int"), r = c(TRUE), s = "k")
    ),
    setLambda = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setLambda__0, p = c(lambda = "dbl"), r = c(TRUE), s = "lambda")
    ),
    setSigma = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setSigma__0, p = c(sigma = "dbl"), r = c(TRUE), s = "sigma")
    ),
    setUsePostProcessing = list(
      list(f = .ropecv_cv_ximgproc_EdgeAwareInterpolator_EdgeAwareInterpolator_setUsePostProcessing__0, p = c(use_post_proc = "lgl"), r = c(TRUE), s = "use_post_proc")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::RICInterpolator
.ropecv_reg("cvRICInterpolator",
  new = list(

  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getAlpha = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getAlpha__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getFGSLambda = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getFGSLambda__0, p = c(), r = c(), s = "")
    ),
    getFGSSigma = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getFGSSigma__0, p = c(), r = c(), s = "")
    ),
    getK = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getK__0, p = c(), r = c(), s = "")
    ),
    getMaxFlow = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getMaxFlow__0, p = c(), r = c(), s = "")
    ),
    getModelIter = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getModelIter__0, p = c(), r = c(), s = "")
    ),
    getRefineModels = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getRefineModels__0, p = c(), r = c(), s = "")
    ),
    getSuperpixelMode = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelMode__0, p = c(), r = c(), s = "")
    ),
    getSuperpixelNNCnt = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelNNCnt__0, p = c(), r = c(), s = "")
    ),
    getSuperpixelRuler = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelRuler__0, p = c(), r = c(), s = "")
    ),
    getSuperpixelSize = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getSuperpixelSize__0, p = c(), r = c(), s = "")
    ),
    getUseGlobalSmootherFilter = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getUseGlobalSmootherFilter__0, p = c(), r = c(), s = "")
    ),
    getUseVariationalRefinement = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_getUseVariationalRefinement__0, p = c(), r = c(), s = "")
    ),
    interpolate = list(
      list(f = .ropecv_cv_ximgproc_SparseMatchInterpolator_SparseMatchInterpolator_interpolate__0, p = c(from_image = "mat", from_points = "mat", to_image = "mat", to_points = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "from_image, from_points, to_image, to_points, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setAlpha = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setAlpha__0, p = c(alpha = "dbl"), r = c(FALSE), s = "alpha = 0.7")
    ),
    setCostMap = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setCostMap__0, p = c(costMap = "any"), r = c(TRUE), s = "costMap")
    ),
    setFGSLambda = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setFGSLambda__0, p = c(lambda = "dbl"), r = c(FALSE), s = "lambda = 500")
    ),
    setFGSSigma = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setFGSSigma__0, p = c(sigma = "dbl"), r = c(FALSE), s = "sigma = 1.5")
    ),
    setK = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setK__0, p = c(k = "int"), r = c(FALSE), s = "k = 32")
    ),
    setMaxFlow = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setMaxFlow__0, p = c(maxFlow = "dbl"), r = c(FALSE), s = "maxFlow = 250")
    ),
    setModelIter = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setModelIter__0, p = c(modelIter = "int"), r = c(FALSE), s = "modelIter = 4")
    ),
    setRefineModels = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setRefineModels__0, p = c(refineModles = "lgl"), r = c(FALSE), s = "refineModles = TRUE")
    ),
    setSuperpixelMode = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelMode__0, p = c(mode = "int"), r = c(FALSE), s = "mode = 100")
    ),
    setSuperpixelNNCnt = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelNNCnt__0, p = c(spNN = "int"), r = c(FALSE), s = "spNN = 150")
    ),
    setSuperpixelRuler = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelRuler__0, p = c(ruler = "dbl"), r = c(FALSE), s = "ruler = 15")
    ),
    setSuperpixelSize = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setSuperpixelSize__0, p = c(spSize = "int"), r = c(FALSE), s = "spSize = 15")
    ),
    setUseGlobalSmootherFilter = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setUseGlobalSmootherFilter__0, p = c(use_FGS = "lgl"), r = c(FALSE), s = "use_FGS = TRUE")
    ),
    setUseVariationalRefinement = list(
      list(f = .ropecv_cv_ximgproc_RICInterpolator_RICInterpolator_setUseVariationalRefinement__0, p = c(use_variational_refinement = "lgl"), r = c(FALSE), s = "use_variational_refinement = FALSE")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ximgproc::SparseMatchInterpolator
.ropecv_reg("cvSparseMatchInterpolator",
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
    interpolate = list(
      list(f = .ropecv_cv_ximgproc_SparseMatchInterpolator_SparseMatchInterpolator_interpolate__0, p = c(from_image = "mat", from_points = "mat", to_image = "mat", to_points = "mat", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "from_image, from_points, to_image, to_points, dst = NULL")
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
