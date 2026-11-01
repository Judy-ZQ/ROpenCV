# 由 tools/gen/emit.py 生成，请勿手改。

#' @title rectangleIntersectionArea
#' @description ROpenCV 绑定。C++ 签名：<code>inline double rectangleIntersectionArea(const Rect2d&amp; a, const Rect2d&amp; b)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_rectangleIntersectionArea <- function(a, b) {
  .Call(`_ROpenCV_cv_rectangleIntersectionArea`, a, b)
}
