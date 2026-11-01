# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_text_TextDetector_TextDetector_detect__0 <- function(self, inputImage) .Call(`_ROpenCV_cv_text_TextDetector_TextDetector_detect__0`, self, inputImage)
.ropecv_cv_text_TextDetectorCNN_TextDetectorCNN_create__0 <- function(modelArchFilename, modelWeightsFilename) .Call(`_ROpenCV_cv_text_TextDetectorCNN_TextDetectorCNN_create__0`, modelArchFilename, modelWeightsFilename)
.ropecv_cv_text_TextDetectorCNN_TextDetectorCNN_detect__0 <- function(self, inputImage) .Call(`_ROpenCV_cv_text_TextDetectorCNN_TextDetectorCNN_detect__0`, self, inputImage)

cvTextDetector <- function(...) .ropecv_new("cvTextDetector", "cvTextDetector", list(...))

cvTextDetectorCNN <- function(...) .ropecv_new("cvTextDetectorCNN", "cvTextDetectorCNN", list(...))
