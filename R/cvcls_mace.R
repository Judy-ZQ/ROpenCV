# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_face_MACE_MACE_create__0 <- function(IMGSIZE = 64) .Call(`_ROpenCV_cv_face_MACE_MACE_create__0`, IMGSIZE)
.ropecv_cv_face_MACE_MACE_load__1 <- function(filename, objname = '') .Call(`_ROpenCV_cv_face_MACE_MACE_load__1`, filename, objname)
.ropecv_cv_face_MACE_MACE_salt__0 <- function(self, passphrase) .Call(`_ROpenCV_cv_face_MACE_MACE_salt__0`, self, passphrase)
.ropecv_cv_face_MACE_MACE_same__0 <- function(self, query) .Call(`_ROpenCV_cv_face_MACE_MACE_same__0`, self, query)
.ropecv_cv_face_MACE_MACE_train__0 <- function(self, images) .Call(`_ROpenCV_cv_face_MACE_MACE_train__0`, self, images)

cvMACE <- function(...) .ropecv_new("cvMACE", "cvMACE", list(...))

# cv::face::MACE::load
cvMACE_load <- function(filename, objname = '') .Call(`_ROpenCV_cv_face_MACE_MACE_load__1`, filename, objname)
