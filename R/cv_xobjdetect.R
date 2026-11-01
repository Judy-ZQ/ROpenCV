# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createFaceDetectionMaskGenerator
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;BaseCascadeClassifier::MaskGenerator&gt; createFaceDetectionMaskGenerator()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createFaceDetectionMaskGenerator <- function() {
  .Call(`_ROpenCV_cv_createFaceDetectionMaskGenerator`)
}

#' @title groupRectangles
#' @description ROpenCV 绑定。C++ 签名：<code>void groupRectangles(std::vector&lt;Rect&gt;&amp; rectList, std::vector&lt;int&gt;&amp; weights, int groupThreshold, double eps)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_groupRectangles <- function(rectList = NULL, groupThreshold, eps = 0.2) {
  .Call(`_ROpenCV_cv_groupRectangles`, rectList, groupThreshold, eps)
}

#' @title groupRectangles_meanshift
#' @description ROpenCV 绑定。C++ 签名：<code>void groupRectangles_meanshift(std::vector&lt;Rect&gt;&amp; rectList, std::vector&lt;double&gt;&amp; foundWeights, std::vector&lt;double&gt;&amp; foundScales, double detectThreshold, Size winDetSize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_groupRectangles_meanshift <- function(rectList = NULL, foundWeights = NULL, foundScales = NULL, detectThreshold = 0.0, winDetSize = c(64, 128)) {
  .Call(`_ROpenCV_cv_groupRectangles_meanshift`, rectList, foundWeights, foundScales, detectThreshold, winDetSize)
}
