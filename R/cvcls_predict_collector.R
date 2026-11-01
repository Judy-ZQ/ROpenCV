# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_face_StandardCollector_StandardCollector_create__0 <- function(threshold = Inf) .Call(`_ROpenCV_cv_face_StandardCollector_StandardCollector_create__0`, threshold)
.ropecv_cv_face_StandardCollector_StandardCollector_getMinDist__0 <- function(self) .Call(`_ROpenCV_cv_face_StandardCollector_StandardCollector_getMinDist__0`, self)
.ropecv_cv_face_StandardCollector_StandardCollector_getMinLabel__0 <- function(self) .Call(`_ROpenCV_cv_face_StandardCollector_StandardCollector_getMinLabel__0`, self)
.ropecv_cv_face_StandardCollector_StandardCollector_getResults__0 <- function(self, sorted = FALSE) .Call(`_ROpenCV_cv_face_StandardCollector_StandardCollector_getResults__0`, self, sorted)

cvStandardCollector <- function(...) .ropecv_new("cvStandardCollector", "cvStandardCollector", list(...))
