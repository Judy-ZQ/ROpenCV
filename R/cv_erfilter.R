# 由 tools/gen/emit.py 生成，请勿手改。

#' @title computeNMChannels
#' @description ROpenCV 绑定。C++ 签名：<code>void computeNMChannels(InputArray _src, OutputArrayOfArrays _channels, int _mode)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeNMChannels <- function(src, mode, channels = NULL) {
  .Call(`_ROpenCV_cv_computeNMChannels`, src, mode, channels)
}

#' @title createERFilterNM1
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ERFilter&gt; createERFilterNM1(const Ptr&lt;ERFilter::Callback&gt;&amp; cb, int thresholdDelta, float minArea, float maxArea, float minProbability, bool nonMaxSuppression, float minProbabilityDiff)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createERFilterNM1__0 <- function(cb, thresholdDelta = 1, minArea, maxArea, minProbability, nonMaxSuppression = TRUE, minProbabilityDiff) {
  .Call(`_ROpenCV_cv_createERFilterNM1__0`, cb, thresholdDelta, minArea, maxArea, minProbability, nonMaxSuppression, minProbabilityDiff)
}

#' @title createERFilterNM1
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ERFilter&gt; createERFilterNM1(const String&amp; filename, int thresholdDelta, float minArea, float maxArea, float minProbability, bool nonMaxSuppression, float minProbabilityDiff)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createERFilterNM1__1 <- function(filename, thresholdDelta = 1, minArea, maxArea, minProbability, nonMaxSuppression = TRUE, minProbabilityDiff) {
  .Call(`_ROpenCV_cv_createERFilterNM1__1`, filename, thresholdDelta, minArea, maxArea, minProbability, nonMaxSuppression, minProbabilityDiff)
}

# cv_createERFilterNM1
#' @rdname cv_createERFilterNM1
#' @export
cv_createERFilterNM1 <- local({
  .sigs <- list(
    list(f = .ropecv_cv_createERFilterNM1__0, p = c(cb = "obj", thresholdDelta = "int", minArea = "dbl", maxArea = "dbl", minProbability = "dbl", nonMaxSuppression = "lgl", minProbabilityDiff = "dbl"), r = c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE), s = "cb, thresholdDelta = 1, minArea, maxArea, minProbability, nonMaxSuppression = TRUE, minProbabilityDiff"),
    list(f = .ropecv_cv_createERFilterNM1__1, p = c(filename = "chr", thresholdDelta = "int", minArea = "dbl", maxArea = "dbl", minProbability = "dbl", nonMaxSuppression = "lgl", minProbabilityDiff = "dbl"), r = c(TRUE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE), s = "filename, thresholdDelta = 1, minArea, maxArea, minProbability, nonMaxSuppression = TRUE, minProbabilityDiff")
  )
  function(...) .ropecv_pick("cv_createERFilterNM1", .sigs, list(...))
})

#' @title createERFilterNM2
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ERFilter&gt; createERFilterNM2(const Ptr&lt;ERFilter::Callback&gt;&amp; cb, float minProbability)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createERFilterNM2__0 <- function(cb, minProbability) {
  .Call(`_ROpenCV_cv_createERFilterNM2__0`, cb, minProbability)
}

#' @title createERFilterNM2
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ERFilter&gt; createERFilterNM2(const String&amp; filename, float minProbability)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createERFilterNM2__1 <- function(filename, minProbability) {
  .Call(`_ROpenCV_cv_createERFilterNM2__1`, filename, minProbability)
}

# cv_createERFilterNM2
#' @rdname cv_createERFilterNM2
#' @export
cv_createERFilterNM2 <- local({
  .sigs <- list(
    list(f = .ropecv_cv_createERFilterNM2__0, p = c(cb = "obj", minProbability = "dbl"), r = c(TRUE, TRUE), s = "cb, minProbability"),
    list(f = .ropecv_cv_createERFilterNM2__1, p = c(filename = "chr", minProbability = "dbl"), r = c(TRUE, TRUE), s = "filename, minProbability")
  )
  function(...) .ropecv_pick("cv_createERFilterNM2", .sigs, list(...))
})

#' @title detectRegions
#' @description ROpenCV 绑定。C++ 签名：<code>void detectRegions(InputArray image, const Ptr&lt;ERFilter&gt;&amp; er_filter1, const Ptr&lt;ERFilter&gt;&amp; er_filter2, std::vector&lt; std::vector&lt;Point&gt; &gt;&amp; regions)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_detectRegions__0 <- function(image, er_filter1, er_filter2) {
  .Call(`_ROpenCV_cv_detectRegions__0`, image, er_filter1, er_filter2)
}

#' @title detectRegions
#' @description ROpenCV 绑定。C++ 签名：<code>void detectRegions(InputArray image, const Ptr&lt;ERFilter&gt;&amp; er_filter1, const Ptr&lt;ERFilter&gt;&amp; er_filter2, std::vector&lt;Rect&gt; &amp; groups_rects, int method, const String&amp; filename, float minProbability)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_detectRegions__1 <- function(image, er_filter1, er_filter2, method = ERGROUPING_ORIENTATION_HORIZ, filename = '', minProbability) {
  .Call(`_ROpenCV_cv_detectRegions__1`, image, er_filter1, er_filter2, method, filename, minProbability)
}

# cv_detectRegions
#' @rdname cv_detectRegions
#' @export
cv_detectRegions <- local({
  .sigs <- list(
    list(f = .ropecv_cv_detectRegions__0, p = c(image = "mat", er_filter1 = "obj", er_filter2 = "obj"), r = c(TRUE, TRUE, TRUE), s = "image, er_filter1, er_filter2"),
    list(f = .ropecv_cv_detectRegions__1, p = c(image = "mat", er_filter1 = "obj", er_filter2 = "obj", method = "int", filename = "chr", minProbability = "dbl"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, TRUE), s = "image, er_filter1, er_filter2, method = ERGROUPING_ORIENTATION_HORIZ, filename = '', minProbability")
  )
  function(...) .ropecv_pick("cv_detectRegions", .sigs, list(...))
})

#' @title erGrouping
#' @description ROpenCV 绑定。C++ 签名：<code>void erGrouping(InputArray image, InputArray channel, std::vector&lt;std::vector&lt;Point&gt; &gt; regions, std::vector&lt;Rect&gt; &amp; groups_rects, int method, const String&amp; filename, float minProbablity)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_erGrouping <- function(image, channel, regions, method = ERGROUPING_ORIENTATION_HORIZ, filename = '', minProbablity) {
  .Call(`_ROpenCV_cv_erGrouping`, image, channel, regions, method, filename, minProbablity)
}

#' @title loadClassifierNM1
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ERFilter::Callback&gt; loadClassifierNM1(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadClassifierNM1 <- function(filename) {
  .Call(`_ROpenCV_cv_loadClassifierNM1`, filename)
}

#' @title loadClassifierNM2
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;ERFilter::Callback&gt; loadClassifierNM2(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadClassifierNM2 <- function(filename) {
  .Call(`_ROpenCV_cv_loadClassifierNM2`, filename)
}
