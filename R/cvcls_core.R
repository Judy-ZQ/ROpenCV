# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_Algorithm_Algorithm_clear__0 <- function(self) .Call(`_ROpenCV_cv_Algorithm_Algorithm_clear__0`, self)
.ropecv_cv_Algorithm_Algorithm_empty__0 <- function(self) .Call(`_ROpenCV_cv_Algorithm_Algorithm_empty__0`, self)
.ropecv_cv_Algorithm_Algorithm_getDefaultName__0 <- function(self) .Call(`_ROpenCV_cv_Algorithm_Algorithm_getDefaultName__0`, self)
.ropecv_cv_Algorithm_Algorithm_read__0 <- function(self, fn) .Call(`_ROpenCV_cv_Algorithm_Algorithm_read__0`, self, fn)
.ropecv_cv_Algorithm_Algorithm_save__0 <- function(self, filename) .Call(`_ROpenCV_cv_Algorithm_Algorithm_save__0`, self, filename)
.ropecv_cv_Algorithm_Algorithm_write__0 <- function(self, fs) .Call(`_ROpenCV_cv_Algorithm_Algorithm_write__0`, self, fs)
.ropecv_cv_Algorithm_Algorithm_write__1 <- function(self, fs, name) .Call(`_ROpenCV_cv_Algorithm_Algorithm_write__1`, self, fs, name)

cvAlgorithm <- function(...) .ropecv_new("cvAlgorithm", "cvAlgorithm", list(...))
