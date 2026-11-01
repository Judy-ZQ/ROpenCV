# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_structured_light_StructuredLightPattern_StructuredLightPattern_decode__0 <- function(self, patternImages, blackImages = NULL, whiteImages = NULL, flags = DECODE_3D_UNDERWORLD, dst = NULL) .Call(`_ROpenCV_cv_structured_light_StructuredLightPattern_StructuredLightPattern_decode__0`, self, patternImages, blackImages, whiteImages, flags, dst)
.ropecv_cv_structured_light_StructuredLightPattern_StructuredLightPattern_generate__0 <- function(self, patternImages = NULL) .Call(`_ROpenCV_cv_structured_light_StructuredLightPattern_StructuredLightPattern_generate__0`, self, patternImages)

cvStructuredLightPattern <- function(...) .ropecv_new("cvStructuredLightPattern", "cvStructuredLightPattern", list(...))
