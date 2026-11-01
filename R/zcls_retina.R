# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::bioinspired::Retina
.ropecv_reg("cvRetina",
  new = list(
    list(f = .ropecv_cv_bioinspired_Retina_Retina_create__0, p = c(inputSize = "size"), r = c(TRUE), s = "inputSize"),
    list(f = .ropecv_cv_bioinspired_Retina_Retina_create__1, p = c(inputSize = "size", colorMode = "lgl", colorSamplingMethod = "int", useRetinaLogSampling = "lgl", reductionFactor = "dbl", samplingStrength = "dbl"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "inputSize, colorMode, colorSamplingMethod = RETINA_COLOR_BAYER, useRetinaLogSampling = FALSE, reductionFactor = 1.0, samplingStrength = 10.0")
  ),
  m = list(
    activateContoursProcessing = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_activateContoursProcessing__0, p = c(activate = "lgl"), r = c(TRUE), s = "activate")
    ),
    activateMovingContoursProcessing = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_activateMovingContoursProcessing__0, p = c(activate = "lgl"), r = c(TRUE), s = "activate")
    ),
    applyFastToneMapping = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_applyFastToneMapping__0, p = c(inputImage = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "inputImage, dst = NULL")
    ),
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearBuffers = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_clearBuffers__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getInputSize = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getInputSize__0, p = c(), r = c(), s = "")
    ),
    getMagno = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getMagno__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getMagnoRAW = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getMagnoRAW__0, p = c(), r = c(), s = ""),
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getMagnoRAW__1, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getOutputSize = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getOutputSize__0, p = c(), r = c(), s = "")
    ),
    getParvo = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getParvo__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getParvoRAW = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getParvoRAW__0, p = c(), r = c(), s = ""),
      list(f = .ropecv_cv_bioinspired_Retina_Retina_getParvoRAW__1, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    printSetup = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_printSetup__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    run = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_run__0, p = c(inputImage = "mat"), r = c(TRUE), s = "inputImage")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setColorSaturation = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_setColorSaturation__0, p = c(saturateColors = "lgl", colorSaturationValue = "dbl"), r = c(FALSE, FALSE), s = "saturateColors = TRUE, colorSaturationValue = 4.0")
    ),
    setup = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_setup__0, p = c(retinaParameterFile = "chr", applyDefaultSetupOnFailure = "lgl"), r = c(FALSE, FALSE), s = "retinaParameterFile = '', applyDefaultSetupOnFailure = TRUE")
    ),
    setupIPLMagnoChannel = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_setupIPLMagnoChannel__0, p = c(normaliseOutput = "lgl", parasolCells_beta = "dbl", parasolCells_tau = "dbl", parasolCells_k = "dbl", amacrinCellsTemporalCutFrequency = "dbl", V0CompressionParameter = "dbl", localAdaptintegration_tau = "dbl", localAdaptintegration_k = "dbl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "normaliseOutput = TRUE, parasolCells_beta = 0, parasolCells_tau = 0, parasolCells_k = 7, amacrinCellsTemporalCutFrequency = 1.2, V0CompressionParameter = 0.95, localAdaptintegration_tau = 0, localAdaptintegration_k = 7")
    ),
    setupOPLandIPLParvoChannel = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_setupOPLandIPLParvoChannel__0, p = c(colorMode = "lgl", normaliseOutput = "lgl", photoreceptorsLocalAdaptationSensitivity = "dbl", photoreceptorsTemporalConstant = "dbl", photoreceptorsSpatialConstant = "dbl", horizontalCellsGain = "dbl", HcellsTemporalConstant = "dbl", HcellsSpatialConstant = "dbl", ganglionCellsSensitivity = "dbl"), r = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "colorMode = TRUE, normaliseOutput = TRUE, photoreceptorsLocalAdaptationSensitivity = 0.7, photoreceptorsTemporalConstant = 0.5, photoreceptorsSpatialConstant = 0.53, horizontalCellsGain = 0, HcellsTemporalConstant = 1, HcellsSpatialConstant = 7, ganglionCellsSensitivity = 0.7")
    ),
    write = list(
      list(f = .ropecv_cv_bioinspired_Retina_Retina_write__0, p = c(fs = "chr"), r = c(TRUE), s = "fs")
    )
  )
)
