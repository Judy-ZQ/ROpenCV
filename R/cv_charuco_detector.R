# 由 tools/gen/emit.py 生成，请勿手改。

#' @title drawDetectedCornersCharuco
#' @description ROpenCV 绑定。C++ 签名：<code>void drawDetectedCornersCharuco(InputOutputArray image, InputArray charucoCorners, InputArray charucoIds, Scalar cornerColor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawDetectedCornersCharuco <- function(image = NULL, charucoCorners, charucoIds = NULL, cornerColor = c(255, 0, 0)) {
  .Call(`_ROpenCV_cv_drawDetectedCornersCharuco`, image, charucoCorners, charucoIds, cornerColor)
}

#' @title drawDetectedDiamonds
#' @description ROpenCV 绑定。C++ 签名：<code>void drawDetectedDiamonds(InputOutputArray image, InputArrayOfArrays diamondCorners, InputArray diamondIds, Scalar borderColor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawDetectedDiamonds <- function(image = NULL, diamondCorners, diamondIds = NULL, borderColor = c(0, 0, 255)) {
  .Call(`_ROpenCV_cv_drawDetectedDiamonds`, image, diamondCorners, diamondIds, borderColor)
}
