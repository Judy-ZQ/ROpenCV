# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::bioinspired::TransientAreasSegmentationModule
.ropecv_reg("cvTransientAreasSegmentationModule",
  new = list(
    list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_create__0, p = c(inputSize = "size"), r = c(TRUE), s = "inputSize")
  ),
  m = list(
    clear = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_clear__0, p = c(), r = c(), s = "")
    ),
    clearAllBuffers = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_clearAllBuffers__0, p = c(), r = c(), s = "")
    ),
    empty = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_empty__0, p = c(), r = c(), s = "")
    ),
    getDefaultName = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_getDefaultName__0, p = c(), r = c(), s = "")
    ),
    getSegmentationPicture = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_getSegmentationPicture__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL")
    ),
    getSize = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_getSize__0, p = c(), r = c(), s = "")
    ),
    printSetup = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_printSetup__0, p = c(), r = c(), s = "")
    ),
    read = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_read__0, p = c(fn = "any"), r = c(TRUE), s = "fn")
    ),
    run = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_run__0, p = c(inputToSegment = "mat", channelIndex = "int"), r = c(TRUE, FALSE), s = "inputToSegment, channelIndex = 0")
    ),
    save = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_save__0, p = c(filename = "chr"), r = c(TRUE), s = "filename")
    ),
    setup = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_setup__0, p = c(segmentationParameterFile = "chr", applyDefaultSetupOnFailure = "lgl"), r = c(FALSE, FALSE), s = "segmentationParameterFile = '', applyDefaultSetupOnFailure = TRUE")
    ),
    write = list(
      list(f = .ropecv_cv_bioinspired_TransientAreasSegmentationModule_TransientAreasSegmentationModule_write__0, p = c(fs = "chr"), r = c(TRUE), s = "fs")
    )
  )
)
