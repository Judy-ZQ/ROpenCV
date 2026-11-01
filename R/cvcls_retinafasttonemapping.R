# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_create__0 <- function(inputSize) .Call(`_ROpenCV_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_create__0`, inputSize)
.ropecv_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_applyFastToneMapping__0 <- function(self, inputImage, dst = NULL) .Call(`_ROpenCV_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_applyFastToneMapping__0`, self, inputImage, dst)
.ropecv_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_setup__0 <- function(self, photoreceptorsNeighborhoodRadius = 3, ganglioncellsNeighborhoodRadius = 1, meanLuminanceModulatorK = 1) .Call(`_ROpenCV_cv_bioinspired_RetinaFastToneMapping_RetinaFastToneMapping_setup__0`, self, photoreceptorsNeighborhoodRadius, ganglioncellsNeighborhoodRadius, meanLuminanceModulatorK)

cvRetinaFastToneMapping <- function(...) .ropecv_new("cvRetinaFastToneMapping", "cvRetinaFastToneMapping", list(...))
