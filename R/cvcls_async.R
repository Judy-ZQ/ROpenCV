# 由 tools/gen/emit_classes.py 生成，请勿手改。

.ropecv_cv_AsyncArray_AsyncArray_new__0 <- function() .Call(`_ROpenCV_cv_AsyncArray_AsyncArray_new__0`)
.ropecv_cv_AsyncArray_AsyncArray_get__0 <- function(self, dst = NULL) .Call(`_ROpenCV_cv_AsyncArray_AsyncArray_get__0`, self, dst)
.ropecv_cv_AsyncArray_AsyncArray_get__1 <- function(self, dst = NULL, timeoutNs) .Call(`_ROpenCV_cv_AsyncArray_AsyncArray_get__1`, self, dst, timeoutNs)
.ropecv_cv_AsyncArray_AsyncArray_release__0 <- function(self) .Call(`_ROpenCV_cv_AsyncArray_AsyncArray_release__0`, self)
.ropecv_cv_AsyncArray_AsyncArray_valid__0 <- function(self) .Call(`_ROpenCV_cv_AsyncArray_AsyncArray_valid__0`, self)
.ropecv_cv_AsyncArray_AsyncArray_wait_for__0 <- function(self, timeoutNs) .Call(`_ROpenCV_cv_AsyncArray_AsyncArray_wait_for__0`, self, timeoutNs)

cvAsyncArray <- function(...) .ropecv_new("cvAsyncArray", "cvAsyncArray", list(...))
