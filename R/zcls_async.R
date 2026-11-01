# 由 tools/gen/emit_classes.py 生成，请勿手改。

# cv::AsyncArray
.ropecv_reg("cvAsyncArray",
  new = list(
    list(f = .ropecv_cv_AsyncArray_AsyncArray_new__0, p = c(), r = c(), s = "")
  ),
  m = list(
    get = list(
      list(f = .ropecv_cv_AsyncArray_AsyncArray_get__0, p = c(dst = "mat"), r = c(FALSE), s = "dst = NULL"),
      list(f = .ropecv_cv_AsyncArray_AsyncArray_get__1, p = c(dst = "mat", timeoutNs = "dbl"), r = c(FALSE, TRUE), s = "dst = NULL, timeoutNs")
    ),
    release = list(
      list(f = .ropecv_cv_AsyncArray_AsyncArray_release__0, p = c(), r = c(), s = "")
    ),
    valid = list(
      list(f = .ropecv_cv_AsyncArray_AsyncArray_valid__0, p = c(), r = c(), s = "")
    ),
    wait_for = list(
      list(f = .ropecv_cv_AsyncArray_AsyncArray_wait_for__0, p = c(timeoutNs = "dbl"), r = c(TRUE), s = "timeoutNs")
    )
  )
)
