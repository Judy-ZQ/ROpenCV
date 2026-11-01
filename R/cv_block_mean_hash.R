# 由 tools/gen/emit.py 生成，请勿手改。

#' @title blockMeanHash
#' @description ROpenCV 绑定。C++ 签名：<code>void blockMeanHash(cv::InputArray inputArr, cv::OutputArray outputArr, int mode)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_blockMeanHash <- function(inputArr, mode = BLOCK_MEAN_HASH_MODE_0, dst = NULL) {
  .Call(`_ROpenCV_cv_blockMeanHash`, inputArr, mode, dst)
}
