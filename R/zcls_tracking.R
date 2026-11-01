# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::DISOpticalFlow
.ropecv_reg("cvDISOpticalFlow",
  new = list(
    list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_create__0, p = c(preset = "int"), r = c(FALSE), s = "preset = PRESET_FAST")
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
    getFinestScale = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getFinestScale__0, p = c(), r = c(), s = "")
    ),
    getGradientDescentIterations = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getGradientDescentIterations__0, p = c(), r = c(), s = "")
    ),
    getPatchSize = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getPatchSize__0, p = c(), r = c(), s = "")
    ),
    getPatchStride = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getPatchStride__0, p = c(), r = c(), s = "")
    ),
    getUseMeanNormalization = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getUseMeanNormalization__0, p = c(), r = c(), s = "")
    ),
    getUseSpatialPropagation = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getUseSpatialPropagation__0, p = c(), r = c(), s = "")
    ),
    getVariationalRefinementAlpha = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementAlpha__0, p = c(), r = c(), s = "")
    ),
    getVariationalRefinementDelta = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementDelta__0, p = c(), r = c(), s = "")
    ),
    getVariationalRefinementEpsilon = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementEpsilon__0, p = c(), r = c(), s = "")
    ),
    getVariationalRefinementGamma = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementGamma__0, p = c(), r = c(), s = "")
    ),
    getVariationalRefinementIterations = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_getVariationalRefinementIterations__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setFinestScale = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setFinestScale__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setGradientDescentIterations = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setGradientDescentIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setPatchSize = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setPatchSize__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setPatchStride = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setPatchStride__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setUseMeanNormalization = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setUseMeanNormalization__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseSpatialPropagation = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setUseSpatialPropagation__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setVariationalRefinementAlpha = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementAlpha__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setVariationalRefinementDelta = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementDelta__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setVariationalRefinementEpsilon = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementEpsilon__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setVariationalRefinementGamma = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementGamma__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setVariationalRefinementIterations = list(
      list(f = .ropecv_cv_DISOpticalFlow_DISOpticalFlow_setVariationalRefinementIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::DenseOpticalFlow
.ropecv_reg("cvDenseOpticalFlow",
  new = list(

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

# cv::FarnebackOpticalFlow
.ropecv_reg("cvFarnebackOpticalFlow",
  new = list(
    list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_create__0, p = c(numLevels = "int", pyrScale = "dbl", fastPyramids = "lgl", winSize = "int", numIters = "int", polyN = "int", polySigma = "dbl", flags = "int"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "numLevels = 5, pyrScale = 0.5, fastPyramids = FALSE, winSize = 13, numIters = 10, polyN = 5, polySigma = 1.1, flags = 0")
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
    getFastPyramids = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getFastPyramids__0, p = c(), r = c(), s = "")
    ),
    getFlags = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getFlags__0, p = c(), r = c(), s = "")
    ),
    getNumIters = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getNumIters__0, p = c(), r = c(), s = "")
    ),
    getNumLevels = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getNumLevels__0, p = c(), r = c(), s = "")
    ),
    getPolyN = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getPolyN__0, p = c(), r = c(), s = "")
    ),
    getPolySigma = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getPolySigma__0, p = c(), r = c(), s = "")
    ),
    getPyrScale = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getPyrScale__0, p = c(), r = c(), s = "")
    ),
    getWinSize = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_getWinSize__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setFastPyramids = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setFastPyramids__0, p = c(fastPyramids = "lgl"), r = c(TRUE), s = "fastPyramids")
    ),
    setFlags = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setFlags__0, p = c(flags = "int"), r = c(TRUE), s = "flags")
    ),
    setNumIters = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setNumIters__0, p = c(numIters = "int"), r = c(TRUE), s = "numIters")
    ),
    setNumLevels = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setNumLevels__0, p = c(numLevels = "int"), r = c(TRUE), s = "numLevels")
    ),
    setPolyN = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setPolyN__0, p = c(polyN = "int"), r = c(TRUE), s = "polyN")
    ),
    setPolySigma = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setPolySigma__0, p = c(polySigma = "dbl"), r = c(TRUE), s = "polySigma")
    ),
    setPyrScale = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setPyrScale__0, p = c(pyrScale = "dbl"), r = c(TRUE), s = "pyrScale")
    ),
    setWinSize = list(
      list(f = .ropecv_cv_FarnebackOpticalFlow_FarnebackOpticalFlow_setWinSize__0, p = c(winSize = "int"), r = c(TRUE), s = "winSize")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::KalmanFilter
.ropecv_reg("cvKalmanFilter",
  new = list(
    list(f = .ropecv_cv_KalmanFilter_KalmanFilter_new__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_KalmanFilter_KalmanFilter_new__1, p = c(dynamParams = "int", measureParams = "int", controlParams = "int", type = "int"), r = c(TRUE, TRUE, FALSE, FALSE), s = "dynamParams, measureParams, controlParams = 0, type = CV_32F")
  ),
  m = list(
    correct = list(
      list(f = .ropecv_cv_KalmanFilter_KalmanFilter_correct__0, p = c(measurement = "any"), r = c(TRUE), s = "measurement")
    ),
    predict = list(
      list(f = .ropecv_cv_KalmanFilter_KalmanFilter_predict__0, p = c(control = "any"), r = c(FALSE), s = "control = NULL")
    )
  )
)

# cv::SparseOpticalFlow
.ropecv_reg("cvSparseOpticalFlow",
  new = list(

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

# cv::SparsePyrLKOpticalFlow
.ropecv_reg("cvSparsePyrLKOpticalFlow",
  new = list(
    list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_create__0, p = c(winSize = "size", maxLevel = "int", crit = "tc", flags = "int", minEigThreshold = "dbl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE), s = "winSize = c(21, 21), maxLevel = 3, crit = c(5, 30, 0.01), flags = 0, minEigThreshold = 1e-4")
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
    getFlags = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getFlags__0, p = c(), r = c(), s = "")
    ),
    getMaxLevel = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getMaxLevel__0, p = c(), r = c(), s = "")
    ),
    getMinEigThreshold = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getMinEigThreshold__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getWinSize = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_getWinSize__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setFlags = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setFlags__0, p = c(flags = "int"), r = c(TRUE), s = "flags")
    ),
    setMaxLevel = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setMaxLevel__0, p = c(maxLevel = "int"), r = c(TRUE), s = "maxLevel")
    ),
    setMinEigThreshold = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setMinEigThreshold__0, p = c(minEigThreshold = "dbl"), r = c(TRUE), s = "minEigThreshold")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setTermCriteria__0, p = c(crit = "tc"), r = c(FALSE), s = "crit = NULL")
    ),
    setWinSize = list(
      list(f = .ropecv_cv_SparsePyrLKOpticalFlow_SparsePyrLKOpticalFlow_setWinSize__0, p = c(winSize = "size"), r = c(TRUE), s = "winSize")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::Tracker
.ropecv_reg("cvTracker",
  new = list(

  ),
  m = list(
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::TrackerDaSiamRPN
.ropecv_reg("cvTrackerDaSiamRPN",
  new = list(
    list(f = .ropecv_cv_TrackerDaSiamRPN_TrackerDaSiamRPN_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    getTrackingScore = list(
      list(f = .ropecv_cv_TrackerDaSiamRPN_TrackerDaSiamRPN_getTrackingScore__0, p = c(), r = c(), s = "")
    ),
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::TrackerDaSiamRPN::Params
.ropecv_reg("cvTrackerDaSiamRPNParams",
  new = list(
    list(f = .ropecv_cv_TrackerDaSiamRPN_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::TrackerMIL
.ropecv_reg("cvTrackerMIL",
  new = list(
    list(f = .ropecv_cv_TrackerMIL_TrackerMIL_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::TrackerMIL::Params
.ropecv_reg("cvTrackerMILParams",
  new = list(
    list(f = .ropecv_cv_TrackerMIL_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::TrackerNano
.ropecv_reg("cvTrackerNano",
  new = list(
    list(f = .ropecv_cv_TrackerNano_TrackerNano_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    getTrackingScore = list(
      list(f = .ropecv_cv_TrackerNano_TrackerNano_getTrackingScore__0, p = c(), r = c(), s = "")
    ),
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::TrackerNano::Params
.ropecv_reg("cvTrackerNanoParams",
  new = list(
    list(f = .ropecv_cv_TrackerNano_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::TrackerVit
.ropecv_reg("cvTrackerVit",
  new = list(
    list(f = .ropecv_cv_TrackerVit_TrackerVit_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    getTrackingScore = list(
      list(f = .ropecv_cv_TrackerVit_TrackerVit_getTrackingScore__0, p = c(), r = c(), s = "")
    ),
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::TrackerVit::Params
.ropecv_reg("cvTrackerVitParams",
  new = list(
    list(f = .ropecv_cv_TrackerVit_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::VariationalRefinement
.ropecv_reg("cvVariationalRefinement",
  new = list(
    list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calc = list(
      list(f = .ropecv_cv_DenseOpticalFlow_DenseOpticalFlow_calc__0, p = c(I0 = "mat", I1 = "mat", flow = "mat"), r = c(TRUE, TRUE, FALSE), s = "I0, I1, flow = NULL")
    ),
    calcUV = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_calcUV__0, p = c(I0 = "mat", I1 = "mat", flow_u = "mat", flow_v = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "I0, I1, flow_u = NULL, flow_v = NULL")
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
    getAlpha = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getAlpha__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDelta = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getDelta__0, p = c(), r = c(), s = "")
    ),
    getEpsilon = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getEpsilon__0, p = c(), r = c(), s = "")
    ),
    getFixedPointIterations = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getFixedPointIterations__0, p = c(), r = c(), s = "")
    ),
    getGamma = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getGamma__0, p = c(), r = c(), s = "")
    ),
    getOmega = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getOmega__0, p = c(), r = c(), s = "")
    ),
    getSorIterations = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_getSorIterations__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setAlpha = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setAlpha__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setDelta = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setDelta__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setEpsilon = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setEpsilon__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setFixedPointIterations = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setFixedPointIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setGamma = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setGamma__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setOmega = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setOmega__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setSorIterations = list(
      list(f = .ropecv_cv_VariationalRefinement_VariationalRefinement_setSorIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::tracking::TrackerCSRT
.ropecv_reg("cvTrackerCSRT",
  new = list(
    list(f = .ropecv_cv_tracking_TrackerCSRT_TrackerCSRT_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    setInitialMask = list(
      list(f = .ropecv_cv_tracking_TrackerCSRT_TrackerCSRT_setInitialMask__0, p = c(mask = "mat"), r = c(FALSE), s = "mask = NULL")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::tracking::TrackerCSRT::Params
.ropecv_reg("cvTrackerCSRTParams",
  new = list(
    list(f = .ropecv_cv_tracking_TrackerCSRT_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)

# cv::tracking::TrackerKCF
.ropecv_reg("cvTrackerKCF",
  new = list(
    list(f = .ropecv_cv_tracking_TrackerKCF_TrackerKCF_create__0, p = c(parameters = "lst"), r = c(FALSE), s = "parameters = list()")
  ),
  m = list(
    init = list(
      list(f = .ropecv_cv_Tracker_Tracker_init__0, p = c(image = "mat", boundingBox = "rect"), r = c(TRUE, TRUE), s = "image, boundingBox")
    ),
    update = list(
      list(f = .ropecv_cv_Tracker_Tracker_update__0, p = c(image = "mat"), r = c(TRUE), s = "image")
    )
  )
)

# cv::tracking::TrackerKCF::Params
.ropecv_reg("cvTrackerKCFParams",
  new = list(
    list(f = .ropecv_cv_tracking_TrackerKCF_Params_Params_new__0, p = c(), r = c(), s = "")
  ),
  m = list(

  )
)
