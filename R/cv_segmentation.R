# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createGraphSegmentation
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;GraphSegmentation&gt; createGraphSegmentation(double sigma, float k, int min_size)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createGraphSegmentation <- function(sigma = 0.5, k = 300, min_size = 100) {
  .Call(`_ROpenCV_cv_createGraphSegmentation`, sigma, k, min_size)
}

#' @title createSelectiveSearchSegmentation
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentation&gt; createSelectiveSearchSegmentation()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSelectiveSearchSegmentation <- function() {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentation`)
}

#' @title createSelectiveSearchSegmentationStrategyColor
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyColor&gt; createSelectiveSearchSegmentationStrategyColor()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSelectiveSearchSegmentationStrategyColor <- function() {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyColor`)
}

#' @title createSelectiveSearchSegmentationStrategyFill
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyFill&gt; createSelectiveSearchSegmentationStrategyFill()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSelectiveSearchSegmentationStrategyFill <- function() {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyFill`)
}

#' @title createSelectiveSearchSegmentationStrategyMultiple
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyMultiple&gt; createSelectiveSearchSegmentationStrategyMultiple()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__0 <- function() {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyMultiple__0`)
}

#' @title createSelectiveSearchSegmentationStrategyMultiple
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyMultiple&gt; createSelectiveSearchSegmentationStrategyMultiple(Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s1)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__1 <- function(s1) {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyMultiple__1`, s1)
}

#' @title createSelectiveSearchSegmentationStrategyMultiple
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyMultiple&gt; createSelectiveSearchSegmentationStrategyMultiple(Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s1, Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__2 <- function(s1, s2) {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyMultiple__2`, s1, s2)
}

#' @title createSelectiveSearchSegmentationStrategyMultiple
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyMultiple&gt; createSelectiveSearchSegmentationStrategyMultiple(Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s1, Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s2, Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s3)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__3 <- function(s1, s2, s3) {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyMultiple__3`, s1, s2, s3)
}

#' @title createSelectiveSearchSegmentationStrategyMultiple
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyMultiple&gt; createSelectiveSearchSegmentationStrategyMultiple(Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s1, Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s2, Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s3, Ptr&lt;SelectiveSearchSegmentationStrategy&gt; s4)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__4 <- function(s1, s2, s3, s4) {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyMultiple__4`, s1, s2, s3, s4)
}

# cv_createSelectiveSearchSegmentationStrategyMultiple
#' @rdname cv_createSelectiveSearchSegmentationStrategyMultiple
#' @export
cv_createSelectiveSearchSegmentationStrategyMultiple <- local({
  .sigs <- list(
    list(f = .ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__0, p = c(), r = c(), s = ""),
    list(f = .ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__1, p = c(s1 = "obj"), r = c(TRUE), s = "s1"),
    list(f = .ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__2, p = c(s1 = "obj", s2 = "obj"), r = c(TRUE, TRUE), s = "s1, s2"),
    list(f = .ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__3, p = c(s1 = "obj", s2 = "obj", s3 = "obj"), r = c(TRUE, TRUE, TRUE), s = "s1, s2, s3"),
    list(f = .ropecv_cv_createSelectiveSearchSegmentationStrategyMultiple__4, p = c(s1 = "obj", s2 = "obj", s3 = "obj", s4 = "obj"), r = c(TRUE, TRUE, TRUE, TRUE), s = "s1, s2, s3, s4")
  )
  function(...) .ropecv_pick("cv_createSelectiveSearchSegmentationStrategyMultiple", .sigs, list(...))
})

#' @title createSelectiveSearchSegmentationStrategySize
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategySize&gt; createSelectiveSearchSegmentationStrategySize()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSelectiveSearchSegmentationStrategySize <- function() {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategySize`)
}

#' @title createSelectiveSearchSegmentationStrategyTexture
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SelectiveSearchSegmentationStrategyTexture&gt; createSelectiveSearchSegmentationStrategyTexture()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSelectiveSearchSegmentationStrategyTexture <- function() {
  .Call(`_ROpenCV_cv_createSelectiveSearchSegmentationStrategyTexture`)
}
