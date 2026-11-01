# 由 tools/gen/emit.py 生成，请勿手改。

#' @title applyChannelGains
#' @description ROpenCV 绑定。C++ 签名：<code>void applyChannelGains(InputArray src, OutputArray dst, float gainB, float gainG, float gainR)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_applyChannelGains <- function(src, gainB, gainG, gainR, dst = NULL) {
  .Call(`_ROpenCV_cv_applyChannelGains`, src, gainB, gainG, gainR, dst)
}

#' @title createGrayworldWB
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;GrayworldWB&gt; createGrayworldWB()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createGrayworldWB <- function() {
  .Call(`_ROpenCV_cv_createGrayworldWB`)
}

#' @title createLearningBasedWB
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;LearningBasedWB&gt; createLearningBasedWB(const String&amp; path_to_model)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createLearningBasedWB <- function(path_to_model = '') {
  .Call(`_ROpenCV_cv_createLearningBasedWB`, path_to_model)
}

#' @title createSimpleWB
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;SimpleWB&gt; createSimpleWB()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createSimpleWB <- function() {
  .Call(`_ROpenCV_cv_createSimpleWB`)
}
