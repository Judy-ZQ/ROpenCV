# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createConcentricSpheresTestSet
#' @description ROpenCV 绑定。C++ 签名：<code>void createConcentricSpheresTestSet(int nsamples, int nfeatures, int nclasses, OutputArray samples, OutputArray responses)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createConcentricSpheresTestSet <- function(nsamples, nfeatures, nclasses, samples = NULL, responses = NULL) {
  .Call(`_ROpenCV_cv_createConcentricSpheresTestSet`, nsamples, nfeatures, nclasses, samples, responses)
}

#' @title randMVNormal
#' @description ROpenCV 绑定。C++ 签名：<code>void randMVNormal(InputArray mean, InputArray cov, int nsamples, OutputArray samples)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_randMVNormal <- function(mean, cov, nsamples, dst = NULL) {
  .Call(`_ROpenCV_cv_randMVNormal`, mean, cov, nsamples, dst)
}
