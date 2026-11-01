# 由 tools/gen/emit.py 生成，请勿手改。

#' @title weightedMedianFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void weightedMedianFilter(InputArray joint, InputArray src, OutputArray dst, int r, double sigma, int weightType, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_weightedMedianFilter <- function(joint, src, r, sigma = 25.5, weightType = WMF_EXP, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_weightedMedianFilter`, joint, src, r, sigma, weightType, mask, dst)
}
