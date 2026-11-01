# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_face_Facemark_Facemark_fit__0 <- function(self, image, faces, landmarks = NULL) .Call(`_ROpenCV_cv_face_Facemark_Facemark_fit__0`, self, image, faces, landmarks)
.ropecv_cv_face_Facemark_Facemark_loadModel__0 <- function(self, model) .Call(`_ROpenCV_cv_face_Facemark_Facemark_loadModel__0`, self, model)

cvFacemark <- function(...) .ropecv_new("cvFacemark", "cvFacemark", list(...))
