# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::ml::ANN_MLP
.ropecv_reg("cvANN_MLP",
  new = list(
    list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getAnnealCoolingRatio = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getAnnealCoolingRatio__0, p = c(), r = c(), s = "")
    ),
    getAnnealFinalT = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getAnnealFinalT__0, p = c(), r = c(), s = "")
    ),
    getAnnealInitialT = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getAnnealInitialT__0, p = c(), r = c(), s = "")
    ),
    getAnnealItePerStep = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getAnnealItePerStep__0, p = c(), r = c(), s = "")
    ),
    getBackpropMomentumScale = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getBackpropMomentumScale__0, p = c(), r = c(), s = "")
    ),
    getBackpropWeightScale = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getBackpropWeightScale__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getLayerSizes = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getLayerSizes__0, p = c(), r = c(), s = "")
    ),
    getRpropDW0 = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getRpropDW0__0, p = c(), r = c(), s = "")
    ),
    getRpropDWMax = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getRpropDWMax__0, p = c(), r = c(), s = "")
    ),
    getRpropDWMin = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getRpropDWMin__0, p = c(), r = c(), s = "")
    ),
    getRpropDWMinus = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getRpropDWMinus__0, p = c(), r = c(), s = "")
    ),
    getRpropDWPlus = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getRpropDWPlus__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getTrainMethod = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getTrainMethod__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    getWeights = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_getWeights__0, p = c(layerIdx = "int"), r = c(TRUE), s = "layerIdx")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setActivationFunction = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setActivationFunction__0, p = c(type = "int", param1 = "dbl", param2 = "dbl"), r = c(TRUE, FALSE, FALSE), s = "type, param1 = 0, param2 = 0")
    ),
    setAnnealCoolingRatio = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setAnnealCoolingRatio__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setAnnealFinalT = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setAnnealFinalT__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setAnnealInitialT = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setAnnealInitialT__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setAnnealItePerStep = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setAnnealItePerStep__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setBackpropMomentumScale = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setBackpropMomentumScale__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setBackpropWeightScale = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setBackpropWeightScale__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setLayerSizes = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setLayerSizes__0, p = c(layer_sizes = "mat"), r = c(TRUE), s = "layer_sizes")
    ),
    setRpropDW0 = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setRpropDW0__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setRpropDWMax = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setRpropDWMax__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setRpropDWMin = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setRpropDWMin__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setRpropDWMinus = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setRpropDWMinus__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setRpropDWPlus = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setRpropDWPlus__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setTermCriteria__0, p = c(val = "tc"), r = c(TRUE), s = "val")
    ),
    setTrainMethod = list(
      list(f = .ropecv_cv_ml_ANN_MLP_ANN_MLP_setTrainMethod__0, p = c(method = "int", param1 = "dbl", param2 = "dbl"), r = c(TRUE, FALSE, FALSE), s = "method, param1 = 0, param2 = 0")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::Boost
.ropecv_reg("cvBoost",
  new = list(
    list(f = .ropecv_cv_ml_Boost_Boost_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getBoostType = list(
      list(f = .ropecv_cv_ml_Boost_Boost_getBoostType__0, p = c(), r = c(), s = "")
    ),
    getCVFolds = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getCVFolds__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMaxCategories = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMaxCategories__0, p = c(), r = c(), s = "")
    ),
    getMaxDepth = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMaxDepth__0, p = c(), r = c(), s = "")
    ),
    getMinSampleCount = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMinSampleCount__0, p = c(), r = c(), s = "")
    ),
    getPriors = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getPriors__0, p = c(), r = c(), s = "")
    ),
    getRegressionAccuracy = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getRegressionAccuracy__0, p = c(), r = c(), s = "")
    ),
    getTruncatePrunedTree = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getTruncatePrunedTree__0, p = c(), r = c(), s = "")
    ),
    getUse1SERule = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getUse1SERule__0, p = c(), r = c(), s = "")
    ),
    getUseSurrogates = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getUseSurrogates__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    getWeakCount = list(
      list(f = .ropecv_cv_ml_Boost_Boost_getWeakCount__0, p = c(), r = c(), s = "")
    ),
    getWeightTrimRate = list(
      list(f = .ropecv_cv_ml_Boost_Boost_getWeightTrimRate__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setBoostType = list(
      list(f = .ropecv_cv_ml_Boost_Boost_setBoostType__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setCVFolds = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setCVFolds__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxCategories = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMaxCategories__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxDepth = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMaxDepth__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMinSampleCount = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMinSampleCount__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setPriors = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setPriors__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setRegressionAccuracy = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setRegressionAccuracy__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setTruncatePrunedTree = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setTruncatePrunedTree__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUse1SERule = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setUse1SERule__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseSurrogates = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setUseSurrogates__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setWeakCount = list(
      list(f = .ropecv_cv_ml_Boost_Boost_setWeakCount__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setWeightTrimRate = list(
      list(f = .ropecv_cv_ml_Boost_Boost_setWeightTrimRate__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::DTrees
.ropecv_reg("cvDTrees",
  new = list(
    list(f = .ropecv_cv_ml_DTrees_DTrees_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getCVFolds = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getCVFolds__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMaxCategories = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMaxCategories__0, p = c(), r = c(), s = "")
    ),
    getMaxDepth = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMaxDepth__0, p = c(), r = c(), s = "")
    ),
    getMinSampleCount = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMinSampleCount__0, p = c(), r = c(), s = "")
    ),
    getPriors = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getPriors__0, p = c(), r = c(), s = "")
    ),
    getRegressionAccuracy = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getRegressionAccuracy__0, p = c(), r = c(), s = "")
    ),
    getTruncatePrunedTree = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getTruncatePrunedTree__0, p = c(), r = c(), s = "")
    ),
    getUse1SERule = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getUse1SERule__0, p = c(), r = c(), s = "")
    ),
    getUseSurrogates = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getUseSurrogates__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setCVFolds = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setCVFolds__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxCategories = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMaxCategories__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxDepth = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMaxDepth__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMinSampleCount = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMinSampleCount__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setPriors = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setPriors__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setRegressionAccuracy = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setRegressionAccuracy__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setTruncatePrunedTree = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setTruncatePrunedTree__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUse1SERule = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setUse1SERule__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseSurrogates = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setUseSurrogates__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::EM
.ropecv_reg("cvEM",
  new = list(
    list(f = .ropecv_cv_ml_EM_EM_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getClustersNumber = list(
      list(f = .ropecv_cv_ml_EM_EM_getClustersNumber__0, p = c(), r = c(), s = "")
    ),
    getCovarianceMatrixType = list(
      list(f = .ropecv_cv_ml_EM_EM_getCovarianceMatrixType__0, p = c(), r = c(), s = "")
    ),
    getCovs = list(
      list(f = .ropecv_cv_ml_EM_EM_getCovs__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMeans = list(
      list(f = .ropecv_cv_ml_EM_EM_getMeans__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_ml_EM_EM_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    getWeights = list(
      list(f = .ropecv_cv_ml_EM_EM_getWeights__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_EM_EM_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    predict2 = list(
      list(f = .ropecv_cv_ml_EM_EM_predict2__0, p = c(sample = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "sample, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setClustersNumber = list(
      list(f = .ropecv_cv_ml_EM_EM_setClustersNumber__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setCovarianceMatrixType = list(
      list(f = .ropecv_cv_ml_EM_EM_setCovarianceMatrixType__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_ml_EM_EM_setTermCriteria__0, p = c(val = "tc"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    trainE = list(
      list(f = .ropecv_cv_ml_EM_EM_trainE__0, p = c(samples = "mat", means0 = "mat", covs0 = "mat", weights0 = "mat", logLikelihoods = "mat", labels = "mat", probs = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "samples, means0, covs0 = NULL, weights0 = NULL, logLikelihoods = NULL, labels = NULL, probs = NULL")
    ),
    trainEM = list(
      list(f = .ropecv_cv_ml_EM_EM_trainEM__0, p = c(samples = "mat", logLikelihoods = "mat", labels = "mat", probs = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "samples, logLikelihoods = NULL, labels = NULL, probs = NULL")
    ),
    trainM = list(
      list(f = .ropecv_cv_ml_EM_EM_trainM__0, p = c(samples = "mat", probs0 = "mat", logLikelihoods = "mat", labels = "mat", probs = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "samples, probs0, logLikelihoods = NULL, labels = NULL, probs = NULL")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::KNearest
.ropecv_reg("cvKNearest",
  new = list(
    list(f = .ropecv_cv_ml_KNearest_KNearest_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    findNearest = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_findNearest__0, p = c(samples = "mat", k = "int", results = "mat", neighborResponses = "mat", dist = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "samples, k, results = NULL, neighborResponses = NULL, dist = NULL")
    ),
    getAlgorithmType = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_getAlgorithmType__0, p = c(), r = c(), s = "")
    ),
    getDefaultK = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_getDefaultK__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getEmax = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_getEmax__0, p = c(), r = c(), s = "")
    ),
    getIsClassifier = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_getIsClassifier__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setAlgorithmType = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_setAlgorithmType__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setDefaultK = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_setDefaultK__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setEmax = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_setEmax__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setIsClassifier = list(
      list(f = .ropecv_cv_ml_KNearest_KNearest_setIsClassifier__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::LogisticRegression
.ropecv_reg("cvLogisticRegression",
  new = list(
    list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getIterations = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_getIterations__0, p = c(), r = c(), s = "")
    ),
    getLearningRate = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_getLearningRate__0, p = c(), r = c(), s = "")
    ),
    getMiniBatchSize = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_getMiniBatchSize__0, p = c(), r = c(), s = "")
    ),
    getRegularization = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_getRegularization__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getTrainMethod = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_getTrainMethod__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    get_learnt_thetas = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_get_learnt_thetas__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setIterations = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_setIterations__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setLearningRate = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_setLearningRate__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setMiniBatchSize = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_setMiniBatchSize__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setRegularization = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_setRegularization__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_setTermCriteria__0, p = c(val = "tc"), r = c(TRUE), s = "val")
    ),
    setTrainMethod = list(
      list(f = .ropecv_cv_ml_LogisticRegression_LogisticRegression_setTrainMethod__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::NormalBayesClassifier
.ropecv_reg("cvNormalBayesClassifier",
  new = list(
    list(f = .ropecv_cv_ml_NormalBayesClassifier_NormalBayesClassifier_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    predictProb = list(
      list(f = .ropecv_cv_ml_NormalBayesClassifier_NormalBayesClassifier_predictProb__0, p = c(inputs = "mat", flags = "int", outputs = "mat", outputProbs = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "inputs, flags = 0, outputs = NULL, outputProbs = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::ParamGrid
.ropecv_reg("cvParamGrid",
  new = list(
    list(f = .ropecv_cv_ml_ParamGrid_ParamGrid_create__0, p = c(minVal = "dbl", maxVal = "dbl", logstep = "dbl"), r = c(FALSE, FALSE, FALSE), s = "minVal = 0, maxVal = 0, logstep = 1")
  ),
  m = list(

  )
)

# cv::ml::RTrees
.ropecv_reg("cvRTrees",
  new = list(
    list(f = .ropecv_cv_ml_RTrees_RTrees_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getActiveVarCount = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_getActiveVarCount__0, p = c(), r = c(), s = "")
    ),
    getCVFolds = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getCVFolds__0, p = c(), r = c(), s = "")
    ),
    getCalculateVarImportance = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_getCalculateVarImportance__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getMaxCategories = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMaxCategories__0, p = c(), r = c(), s = "")
    ),
    getMaxDepth = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMaxDepth__0, p = c(), r = c(), s = "")
    ),
    getMinSampleCount = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getMinSampleCount__0, p = c(), r = c(), s = "")
    ),
    getOOBError = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_getOOBError__0, p = c(), r = c(), s = "")
    ),
    getPriors = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getPriors__0, p = c(), r = c(), s = "")
    ),
    getRegressionAccuracy = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getRegressionAccuracy__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getTruncatePrunedTree = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getTruncatePrunedTree__0, p = c(), r = c(), s = "")
    ),
    getUse1SERule = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getUse1SERule__0, p = c(), r = c(), s = "")
    ),
    getUseSurrogates = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_getUseSurrogates__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    getVarImportance = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_getVarImportance__0, p = c(), r = c(), s = "")
    ),
    getVotes = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_getVotes__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "samples, flags, dst = NULL")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setActiveVarCount = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_setActiveVarCount__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setCVFolds = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setCVFolds__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setCalculateVarImportance = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_setCalculateVarImportance__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setMaxCategories = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMaxCategories__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMaxDepth = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMaxDepth__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setMinSampleCount = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setMinSampleCount__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    setPriors = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setPriors__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setRegressionAccuracy = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setRegressionAccuracy__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_ml_RTrees_RTrees_setTermCriteria__0, p = c(val = "tc"), r = c(TRUE), s = "val")
    ),
    setTruncatePrunedTree = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setTruncatePrunedTree__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUse1SERule = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setUse1SERule__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    setUseSurrogates = list(
      list(f = .ropecv_cv_ml_DTrees_DTrees_setUseSurrogates__0, p = c(val = "lgl"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::SVM
.ropecv_reg("cvSVM",
  new = list(
    list(f = .ropecv_cv_ml_SVM_SVM_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getC = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getC__0, p = c(), r = c(), s = "")
    ),
    getClassWeights = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getClassWeights__0, p = c(), r = c(), s = "")
    ),
    getCoef0 = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getCoef0__0, p = c(), r = c(), s = "")
    ),
    getDecisionFunction = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getDecisionFunction__0, p = c(i = "int", alpha = "mat", svidx = "mat"), r = c(TRUE, FALSE, FALSE), s = "i, alpha = NULL, svidx = NULL")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getDegree = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getDegree__0, p = c(), r = c(), s = "")
    ),
    getGamma = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getGamma__0, p = c(), r = c(), s = "")
    ),
    getKernelType = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getKernelType__0, p = c(), r = c(), s = "")
    ),
    getNu = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getNu__0, p = c(), r = c(), s = "")
    ),
    getP = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getP__0, p = c(), r = c(), s = "")
    ),
    getSupportVectors = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getSupportVectors__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getType = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getType__0, p = c(), r = c(), s = "")
    ),
    getUncompressedSupportVectors = list(
      list(f = .ropecv_cv_ml_SVM_SVM_getUncompressedSupportVectors__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setC = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setC__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setClassWeights = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setClassWeights__0, p = c(val = "any"), r = c(TRUE), s = "val")
    ),
    setCoef0 = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setCoef0__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setDegree = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setDegree__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setGamma = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setGamma__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setKernel = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setKernel__0, p = c(kernelType = "int"), r = c(TRUE), s = "kernelType")
    ),
    setNu = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setNu__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setP = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setP__0, p = c(val = "dbl"), r = c(TRUE), s = "val")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setTermCriteria__0, p = c(val = "tc"), r = c(TRUE), s = "val")
    ),
    setType = list(
      list(f = .ropecv_cv_ml_SVM_SVM_setType__0, p = c(val = "int"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    trainAuto = list(
      list(f = .ropecv_cv_ml_SVM_SVM_trainAuto__0, p = c(samples = "mat", layout = "int", responses = "mat", kFold = "int", Cgrid = "obj", gammaGrid = "obj", pGrid = "obj", nuGrid = "obj", coeffGrid = "obj", degreeGrid = "obj", balanced = "lgl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "samples, layout, responses, kFold = 10, Cgrid = NULL, gammaGrid = NULL, pGrid = NULL, nuGrid = NULL, coeffGrid = NULL, degreeGrid = NULL, balanced = FALSE")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::SVMSGD
.ropecv_reg("cvSVMSGD",
  new = list(
    list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_create__0, p = c(), r = c(), s = "")
  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getInitialStepSize = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getInitialStepSize__0, p = c(), r = c(), s = "")
    ),
    getMarginRegularization = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getMarginRegularization__0, p = c(), r = c(), s = "")
    ),
    getMarginType = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getMarginType__0, p = c(), r = c(), s = "")
    ),
    getShift = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getShift__0, p = c(), r = c(), s = "")
    ),
    getStepDecreasingPower = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getStepDecreasingPower__0, p = c(), r = c(), s = "")
    ),
    getSvmsgdType = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getSvmsgdType__0, p = c(), r = c(), s = "")
    ),
    getTermCriteria = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getTermCriteria__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    getWeights = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_getWeights__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setInitialStepSize = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setInitialStepSize__0, p = c(InitialStepSize = "dbl"), r = c(TRUE), s = "InitialStepSize")
    ),
    setMarginRegularization = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setMarginRegularization__0, p = c(marginRegularization = "dbl"), r = c(TRUE), s = "marginRegularization")
    ),
    setMarginType = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setMarginType__0, p = c(marginType = "int"), r = c(TRUE), s = "marginType")
    ),
    setOptimalParameters = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setOptimalParameters__0, p = c(svmsgdType = "int", marginType = "int"), r = c(FALSE, FALSE), s = "svmsgdType = ASGD, marginType = SOFT_MARGIN")
    ),
    setStepDecreasingPower = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setStepDecreasingPower__0, p = c(stepDecreasingPower = "dbl"), r = c(TRUE), s = "stepDecreasingPower")
    ),
    setSvmsgdType = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setSvmsgdType__0, p = c(svmsgdType = "int"), r = c(TRUE), s = "svmsgdType")
    ),
    setTermCriteria = list(
      list(f = .ropecv_cv_ml_SVMSGD_SVMSGD_setTermCriteria__0, p = c(val = "tc"), r = c(TRUE), s = "val")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::StatModel
.ropecv_reg("cvStatModel",
  new = list(

  ),
  m = list(
    calcError = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_calcError__0, p = c(data = "obj", test = "lgl", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "data, test, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getVarCount = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_getVarCount__0, p = c(), r = c(), s = "")
    ),
    isClassifier = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isClassifier__0, p = c(), r = c(), s = "")
    ),
    isTrained = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_isTrained__0, p = c(), r = c(), s = "")
    ),
    predict = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_predict__0, p = c(samples = "mat", flags = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "samples, flags = 0, dst = NULL")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    train = list(
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__0, p = c(trainData = "obj", flags = "int"), r = c(TRUE, FALSE), s = "trainData, flags = 0"),
      list(f = .ropecv_cv_ml_StatModel_StatModel_train__1, p = c(samples = "mat", layout = "int", responses = "mat"), r = c(TRUE, TRUE, TRUE), s = "samples, layout, responses")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)

# cv::ml::TrainData
.ropecv_reg("cvTrainData",
  new = list(
    list(f = .ropecv_cv_ml_TrainData_TrainData_create__2, p = c(samples = "mat", layout = "int", responses = "mat", varIdx = "mat", sampleIdx = "mat", sampleWeights = "mat", varType = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "samples, layout, responses, varIdx = NULL, sampleIdx = NULL, sampleWeights = NULL, varType = NULL")
  ),
  m = list(
    getCatCount = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getCatCount__0, p = c(vi = "int"), r = c(TRUE), s = "vi")
    ),
    getCatMap = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getCatMap__0, p = c(), r = c(), s = "")
    ),
    getCatOfs = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getCatOfs__0, p = c(), r = c(), s = "")
    ),
    getClassLabels = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getClassLabels__0, p = c(), r = c(), s = "")
    ),
    getDefaultSubstValues = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getDefaultSubstValues__0, p = c(), r = c(), s = "")
    ),
    getLayout = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getLayout__0, p = c(), r = c(), s = "")
    ),
    getMissing = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getMissing__0, p = c(), r = c(), s = "")
    ),
    getNAllVars = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNAllVars__0, p = c(), r = c(), s = "")
    ),
    getNSamples = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNSamples__0, p = c(), r = c(), s = "")
    ),
    getNTestSamples = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNTestSamples__0, p = c(), r = c(), s = "")
    ),
    getNTrainSamples = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNTrainSamples__0, p = c(), r = c(), s = "")
    ),
    getNVars = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNVars__0, p = c(), r = c(), s = "")
    ),
    getNames = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNames__0, p = c(names = "chr"), r = c(FALSE), s = "names = NULL")
    ),
    getNormCatResponses = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getNormCatResponses__0, p = c(), r = c(), s = "")
    ),
    getResponseType = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getResponseType__0, p = c(), r = c(), s = "")
    ),
    getResponses = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getResponses__0, p = c(), r = c(), s = "")
    ),
    getSample = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getSample__0, p = c(varIdx = "mat", sidx = "int"), r = c(TRUE, TRUE), s = "varIdx, sidx")
    ),
    getSampleWeights = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getSampleWeights__0, p = c(), r = c(), s = "")
    ),
    getSamples = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getSamples__0, p = c(), r = c(), s = "")
    ),
    getTestNormCatResponses = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTestNormCatResponses__0, p = c(), r = c(), s = "")
    ),
    getTestResponses = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTestResponses__0, p = c(), r = c(), s = "")
    ),
    getTestSampleIdx = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTestSampleIdx__0, p = c(), r = c(), s = "")
    ),
    getTestSampleWeights = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTestSampleWeights__0, p = c(), r = c(), s = "")
    ),
    getTestSamples = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTestSamples__0, p = c(), r = c(), s = "")
    ),
    getTrainNormCatResponses = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTrainNormCatResponses__0, p = c(), r = c(), s = "")
    ),
    getTrainResponses = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTrainResponses__0, p = c(), r = c(), s = "")
    ),
    getTrainSampleIdx = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTrainSampleIdx__0, p = c(), r = c(), s = "")
    ),
    getTrainSampleWeights = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTrainSampleWeights__0, p = c(), r = c(), s = "")
    ),
    getTrainSamples = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getTrainSamples__0, p = c(layout = "int", compressSamples = "lgl", compressVars = "lgl"), r = c(FALSE, FALSE, FALSE), s = "layout = ROW_SAMPLE, compressSamples = TRUE, compressVars = TRUE")
    ),
    getValues = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getValues__0, p = c(vi = "int", sidx = "mat"), r = c(TRUE, TRUE), s = "vi, sidx")
    ),
    getVarIdx = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getVarIdx__0, p = c(), r = c(), s = "")
    ),
    getVarSymbolFlags = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getVarSymbolFlags__0, p = c(), r = c(), s = "")
    ),
    getVarType = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_getVarType__0, p = c(), r = c(), s = "")
    ),
    setTrainTestSplit = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_setTrainTestSplit__0, p = c(count = "int", shuffle = "lgl"), r = c(TRUE, FALSE), s = "count, shuffle = TRUE")
    ),
    setTrainTestSplitRatio = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_setTrainTestSplitRatio__0, p = c(ratio = "dbl", shuffle = "lgl"), r = c(TRUE, FALSE), s = "ratio, shuffle = TRUE")
    ),
    shuffleTrainTest = list(
      list(f = .ropecv_cv_ml_TrainData_TrainData_shuffleTrainTest__0, p = c(), r = c(), s = "")
    )
  )
)
