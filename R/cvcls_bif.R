# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_face_BIF_BIF_create__0 <- function(num_bands = 8, num_rotations = 12) .Call(`_ROpenCV_cv_face_BIF_BIF_create__0`, num_bands, num_rotations)
.ropecv_cv_face_BIF_BIF_compute__0 <- function(self, image, dst = NULL) .Call(`_ROpenCV_cv_face_BIF_BIF_compute__0`, self, image, dst)
.ropecv_cv_face_BIF_BIF_getNumBands__0 <- function(self) .Call(`_ROpenCV_cv_face_BIF_BIF_getNumBands__0`, self)
.ropecv_cv_face_BIF_BIF_getNumRotations__0 <- function(self) .Call(`_ROpenCV_cv_face_BIF_BIF_getNumRotations__0`, self)

cvBIF <- function(...) .ropecv_new("cvBIF", "cvBIF", list(...))
