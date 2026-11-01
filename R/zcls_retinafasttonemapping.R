# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::bioinspired::RetinaFastToneMapping
.ropecv_reg("cvRetinaFastToneMapping",
  new = list(
    list(f = .ropecv_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_create__0, p = c(inputSize = "size"), r = c(TRUE), s = "inputSize")
  ),
  m = list(
    applyFastToneMapping = list(
      list(f = .ropecv_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_applyFastToneMapping__0, p = c(inputImage = "mat", dst = "mat"), r = c(TRUE, FALSE), s = "inputImage, dst = NULL")
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
    setup = list(
      list(f = .ropecv_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_setup__0, p = c(photoreceptorsNeighborhoodRadius = "dbl", ganglioncellsNeighborhoodRadius = "dbl", meanLuminanceModulatorK = "dbl"), r = c(FALSE, FALSE, FALSE), s = "photoreceptorsNeighborhoodRadius = 3, ganglioncellsNeighborhoodRadius = 1, meanLuminanceModulatorK = 1")
    ),
    write = list(
      list(f = .ropecv_cv_Algorithm_Algorithm_write__0, p = c(fs = "any"), r = c(TRUE), s = "fs"),
      list(f = .ropecv_cv_Algorithm_Algorithm_write__1, p = c(fs = "any", name = "chr"), r = c(TRUE, TRUE), s = "fs, name")
    )
  )
)
