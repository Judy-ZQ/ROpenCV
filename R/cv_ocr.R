# 由 tools/gen/emit.py 生成，请勿手改。

#' @title createOCRHMMTransitionsTable
#' @description ROpenCV 绑定。C++ 签名：<code>Mat createOCRHMMTransitionsTable(const String&amp; vocabulary, std::vector&lt;cv::String&gt;&amp; lexicon)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_createOCRHMMTransitionsTable <- function(vocabulary, lexicon = NULL) {
  .Call(`_ROpenCV_cv_createOCRHMMTransitionsTable`, vocabulary, lexicon)
}

#' @title loadOCRBeamSearchClassifierCNN
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;OCRBeamSearchDecoder::ClassifierCallback&gt; loadOCRBeamSearchClassifierCNN(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadOCRBeamSearchClassifierCNN <- function(filename) {
  .Call(`_ROpenCV_cv_loadOCRBeamSearchClassifierCNN`, filename)
}

#' @title loadOCRHMMClassifier
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;OCRHMMDecoder::ClassifierCallback&gt; loadOCRHMMClassifier(const String&amp; filename, int classifier)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadOCRHMMClassifier <- function(filename, classifier) {
  .Call(`_ROpenCV_cv_loadOCRHMMClassifier`, filename, classifier)
}

#' @title loadOCRHMMClassifierCNN
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;OCRHMMDecoder::ClassifierCallback&gt; loadOCRHMMClassifierCNN(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadOCRHMMClassifierCNN <- function(filename) {
  .Call(`_ROpenCV_cv_loadOCRHMMClassifierCNN`, filename)
}

#' @title loadOCRHMMClassifierNM
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;OCRHMMDecoder::ClassifierCallback&gt; loadOCRHMMClassifierNM(const String&amp; filename)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadOCRHMMClassifierNM <- function(filename) {
  .Call(`_ROpenCV_cv_loadOCRHMMClassifierNM`, filename)
}
