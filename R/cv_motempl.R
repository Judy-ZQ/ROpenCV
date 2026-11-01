# 由 tools/gen/emit.py 生成，请勿手改。

#' @title calcGlobalOrientation
#' @description ROpenCV 绑定。C++ 签名：<code>double calcGlobalOrientation(InputArray orientation, InputArray mask, InputArray mhi, double timestamp, double duration)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calcGlobalOrientation <- function(orientation, mask = NULL, mhi, timestamp, duration) {
  .Call(`_ROpenCV_cv_calcGlobalOrientation`, orientation, mask, mhi, timestamp, duration)
}

#' @title calcMotionGradient
#' @description ROpenCV 绑定。C++ 签名：<code>void calcMotionGradient(InputArray mhi, OutputArray mask, OutputArray orientation, double delta1, double delta2, int apertureSize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_calcMotionGradient <- function(mhi, delta1, delta2, apertureSize = 3, mask = NULL, orientation = NULL) {
  .Call(`_ROpenCV_cv_calcMotionGradient`, mhi, delta1, delta2, apertureSize, mask, orientation)
}

#' @title segmentMotion
#' @description ROpenCV 绑定。C++ 签名：<code>void segmentMotion(InputArray mhi, OutputArray segmask, std::vector&lt;Rect&gt;&amp; boundingRects, double timestamp, double segThresh)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_segmentMotion <- function(mhi, timestamp, segThresh, segmask = NULL) {
  .Call(`_ROpenCV_cv_segmentMotion`, mhi, timestamp, segThresh, segmask)
}

#' @title updateMotionHistory
#' @description ROpenCV 绑定。C++ 签名：<code>void updateMotionHistory(InputArray silhouette, InputOutputArray mhi, double timestamp, double duration)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>mhi</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_updateMotionHistory <- function(silhouette, mhi = NULL, timestamp, duration) {
  .Call(`_ROpenCV_cv_updateMotionHistory`, silhouette, mhi, timestamp, duration)
}
