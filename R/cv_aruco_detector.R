# 由 tools/gen/emit.py 生成，请勿手改。

#' @title drawDetectedMarkers
#' @description ROpenCV 绑定。C++ 签名：<code>void drawDetectedMarkers(InputOutputArray image, InputArrayOfArrays corners, InputArray ids, Scalar borderColor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawDetectedMarkers <- function(image = NULL, corners, ids = NULL, borderColor = c(0, 255, 0)) {
  .Call(`_ROpenCV_cv_drawDetectedMarkers`, image, corners, ids, borderColor)
}

#' @title generateImageMarker
#' @description ROpenCV 绑定。C++ 签名：<code>void generateImageMarker(const Dictionary &amp; dictionary, int id, int sidePixels, OutputArray img, int borderBits)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_generateImageMarker <- function(dictionary, id, sidePixels, borderBits = 1, dst = NULL) {
  .Call(`_ROpenCV_cv_generateImageMarker`, dictionary, id, sidePixels, borderBits, dst)
}
