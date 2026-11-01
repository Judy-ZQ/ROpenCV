# 由 tools/gen/emit.py 生成，请勿手改。

#' @title drawKeylines
#' @description ROpenCV 绑定。C++ 签名：<code>void drawKeylines(const Mat&amp; image, const std::vector&lt;KeyLine&gt;&amp; keylines, Mat&amp; outImage, const Scalar&amp; color, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_drawKeylines <- function(image, keylines, color = -1, flags = DEFAULT) {
  .Call(`_ROpenCV_cv_drawKeylines`, image, keylines, color, flags)
}

#' @title drawLineMatches
#' @description ROpenCV 绑定。C++ 签名：<code>void drawLineMatches(const Mat&amp; img1, const std::vector&lt;KeyLine&gt;&amp; keylines1, const Mat&amp; img2, const std::vector&lt;KeyLine&gt;&amp; keylines2, const std::vector&lt;DMatch&gt;&amp; matches1to2, Mat&amp; outImg, const Scalar&amp; matchColor, const Scalar&amp; singleLineColor, const std::vector&lt;char&gt;&amp; matchesMask, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_drawLineMatches <- function(img1, keylines1, img2, keylines2, matches1to2, matchColor = -1, singleLineColor = -1, matchesMask = NULL, flags = DEFAULT) {
  .Call(`_ROpenCV_cv_drawLineMatches`, img1, keylines1, img2, keylines2, matches1to2, matchColor, singleLineColor, matchesMask, flags)
}
