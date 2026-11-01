# 由 tools/gen/emit.py 生成，请勿手改。

#' @title marrHildrethHash
#' @description ROpenCV 绑定。C++ 签名：<code>void marrHildrethHash(cv::InputArray inputArr, cv::OutputArray outputArr, float alpha, float scale)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_marrHildrethHash <- function(inputArr, alpha = 2.0, scale = 1.0, dst = NULL) {
  .Call(`_ROpenCV_cv_marrHildrethHash`, inputArr, alpha, scale, dst)
}
