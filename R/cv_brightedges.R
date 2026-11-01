# 由 tools/gen/emit.py 生成，请勿手改。

#' @title BrightEdges
#' @description ROpenCV 绑定。C++ 签名：<code>void BrightEdges(Mat &amp; _original, Mat &amp; _edgeview, int contrast, int shortrange, int longrange)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_BrightEdges <- function(original = NULL, edgeview = NULL, contrast = 1, shortrange = 3, longrange = 9) {
  .Call(`_ROpenCV_cv_BrightEdges`, original, edgeview, contrast, shortrange, longrange)
}
