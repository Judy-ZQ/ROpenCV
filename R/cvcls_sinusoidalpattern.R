# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_create__0 <- function(parameters = NULL) .Call(`_ROpenCV_cv_structured_light_SinusoidalPattern_SinusoidalPattern_create__0`, parameters)
.ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_computeDataModulationTerm__0 <- function(self, patternImages, shadowMask, dst = NULL) .Call(`_ROpenCV_cv_structured_light_SinusoidalPattern_SinusoidalPattern_computeDataModulationTerm__0`, self, patternImages, shadowMask, dst)
.ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_computePhaseMap__0 <- function(self, patternImages, fundamental = NULL, wrappedPhaseMap = NULL, shadowMask = NULL) .Call(`_ROpenCV_cv_structured_light_SinusoidalPattern_SinusoidalPattern_computePhaseMap__0`, self, patternImages, fundamental, wrappedPhaseMap, shadowMask)
.ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_findProCamMatches__0 <- function(self, projUnwrappedPhaseMap, camUnwrappedPhaseMap, matches = NULL) .Call(`_ROpenCV_cv_structured_light_SinusoidalPattern_SinusoidalPattern_findProCamMatches__0`, self, projUnwrappedPhaseMap, camUnwrappedPhaseMap, matches)
.ropecv_cv_structured_light_SinusoidalPattern_SinusoidalPattern_unwrapPhaseMap__0 <- function(self, wrappedPhaseMap, camSize, shadowMask = NULL, dst = NULL) .Call(`_ROpenCV_cv_structured_light_SinusoidalPattern_SinusoidalPattern_unwrapPhaseMap__0`, self, wrappedPhaseMap, camSize, shadowMask, dst)
.ropecv_cv_structured_light_SinusoidalPattern_Params_Params_new__0 <- function() .Call(`_ROpenCV_cv_structured_light_SinusoidalPattern_Params_Params_new__0`)

cvSinusoidalPattern <- function(...) .ropecv_new("cvSinusoidalPattern", "cvSinusoidalPattern", list(...))

cvSinusoidalPatternParams <- function(...) .ropecv_new("cvSinusoidalPatternParams", "cvSinusoidalPatternParams", list(...))
