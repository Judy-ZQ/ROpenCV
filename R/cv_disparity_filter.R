# 由 tools/gen/emit.py 生成，请勿手改。

#' @title computeBadPixelPercent
#' @description ROpenCV 绑定。C++ 签名：<code>double computeBadPixelPercent(InputArray GT, InputArray src, Rect ROI, int thresh)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeBadPixelPercent <- function(GT, src, ROI, thresh = 24) {
  .Call(`_ROpenCV_cv_computeBadPixelPercent`, GT, src, ROI, thresh)
}

#' @title computeMSE
#' @description ROpenCV 绑定。C++ 签名：<code>double computeMSE(InputArray GT, InputArray src, Rect ROI)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeMSE <- function(GT, src, ROI) {
  .Call(`_ROpenCV_cv_computeMSE`, GT, src, ROI)
}

#' @title createDisparityWLSFilter
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DisparityWLSFilter&gt; createDisparityWLSFilter(Ptr&lt;StereoMatcher&gt; matcher_left)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createDisparityWLSFilter <- function(matcher_left) {
  .Call(`_ROpenCV_cv_createDisparityWLSFilter`, matcher_left)
}

#' @title createDisparityWLSFilterGeneric
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;DisparityWLSFilter&gt; createDisparityWLSFilterGeneric(bool use_confidence)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createDisparityWLSFilterGeneric <- function(use_confidence) {
  .Call(`_ROpenCV_cv_createDisparityWLSFilterGeneric`, use_confidence)
}

#' @title createRightMatcher
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;StereoMatcher&gt; createRightMatcher(Ptr&lt;StereoMatcher&gt; matcher_left)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createRightMatcher <- function(matcher_left) {
  .Call(`_ROpenCV_cv_createRightMatcher`, matcher_left)
}

#' @title getDisparityVis
#' @description ROpenCV 绑定。C++ 签名：<code>void getDisparityVis(InputArray src, OutputArray dst, double scale)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_getDisparityVis <- function(src, scale = 1.0, dst = NULL) {
  .Call(`_ROpenCV_cv_getDisparityVis`, src, scale, dst)
}

#' @title readGT
#' @description ROpenCV 绑定。C++ 签名：<code>int readGT(String src_path, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_readGT <- function(src_path, dst = NULL) {
  .Call(`_ROpenCV_cv_readGT`, src_path, dst)
}
