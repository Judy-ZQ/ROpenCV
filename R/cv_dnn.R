# 由 tools/gen/emit.py 生成，请勿手改。

#' @title NMSBoxes
#' @description ROpenCV 绑定。C++ 签名：<code>void NMSBoxes(const std::vector&lt;Rect2d&gt;&amp; bboxes, const std::vector&lt;float&gt;&amp; scores, const float score_threshold, const float nms_threshold, std::vector&lt;int&gt;&amp; indices, const float eta, const int top_k)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_NMSBoxes <- function(bboxes, scores, score_threshold, nms_threshold, eta = 1, top_k = 0) {
  .Call(`_ROpenCV_cv_NMSBoxes`, bboxes, scores, score_threshold, nms_threshold, eta, top_k)
}

#' @title NMSBoxesBatched
#' @description ROpenCV 绑定。C++ 签名：<code>void NMSBoxesBatched(const std::vector&lt;Rect2d&gt;&amp; bboxes, const std::vector&lt;float&gt;&amp; scores, const std::vector&lt;int&gt;&amp; class_ids, const float score_threshold, const float nms_threshold, std::vector&lt;int&gt;&amp; indices, const float eta, const int top_k)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_NMSBoxesBatched <- function(bboxes, scores, class_ids, score_threshold, nms_threshold, eta = 1, top_k = 0) {
  .Call(`_ROpenCV_cv_NMSBoxesBatched`, bboxes, scores, class_ids, score_threshold, nms_threshold, eta, top_k)
}

#' @title blobFromImage
#' @description ROpenCV 绑定。C++ 签名：<code>Mat blobFromImage(InputArray image, double scalefactor, const Size&amp; size, const Scalar&amp; mean, bool swapRB, bool crop, int ddepth)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_blobFromImage <- function(image, scalefactor = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE, ddepth = CV_32F) {
  .Call(`_ROpenCV_cv_blobFromImage`, image, scalefactor, size, mean, swapRB, crop, ddepth)
}

#' @title blobFromImageWithParams
#' @description ROpenCV 绑定。C++ 签名：<code>Mat blobFromImageWithParams(InputArray image, const Image2BlobParams&amp; param)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
.ropecv_cv_blobFromImageWithParams__0 <- function(image, param = NULL) {
  .Call(`_ROpenCV_cv_blobFromImageWithParams__0`, image, param)
}

#' @title blobFromImageWithParams
#' @description ROpenCV 绑定。C++ 签名：<code>void blobFromImageWithParams(InputArray image, OutputArray blob, const Image2BlobParams&amp; param)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_blobFromImageWithParams__1 <- function(image, param = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_blobFromImageWithParams__1`, image, param, dst)
}

# cv_blobFromImageWithParams
#' @rdname cv_blobFromImageWithParams
#' @export
cv_blobFromImageWithParams <- local({
  .sigs <- list(
    list(f = .ropecv_cv_blobFromImageWithParams__0, p = c(image = "mat", param = "any"), r = c(TRUE, FALSE), s = "image, param = NULL"),
    list(f = .ropecv_cv_blobFromImageWithParams__1, p = c(image = "mat", param = "any", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, param = NULL, dst = NULL")
  )
  function(...) .ropecv_pick("cv_blobFromImageWithParams", .sigs, list(...))
})

#' @title blobFromImages
#' @description ROpenCV 绑定。C++ 签名：<code>Mat blobFromImages(InputArrayOfArrays images, double scalefactor, Size size, const Scalar&amp; mean, bool swapRB, bool crop, int ddepth)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_blobFromImages <- function(images, scalefactor = 1.0, size = NULL, mean = NULL, swapRB = FALSE, crop = FALSE, ddepth = CV_32F) {
  .Call(`_ROpenCV_cv_blobFromImages`, images, scalefactor, size, mean, swapRB, crop, ddepth)
}

#' @title blobFromImagesWithParams
#' @description ROpenCV 绑定。C++ 签名：<code>Mat blobFromImagesWithParams(InputArrayOfArrays images, const Image2BlobParams&amp; param)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
.ropecv_cv_blobFromImagesWithParams__0 <- function(images, param = NULL) {
  .Call(`_ROpenCV_cv_blobFromImagesWithParams__0`, images, param)
}

#' @title blobFromImagesWithParams
#' @description ROpenCV 绑定。C++ 签名：<code>void blobFromImagesWithParams(InputArrayOfArrays images, OutputArray blob, const Image2BlobParams&amp; param)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_blobFromImagesWithParams__1 <- function(images, param = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_blobFromImagesWithParams__1`, images, param, dst)
}

# cv_blobFromImagesWithParams
#' @rdname cv_blobFromImagesWithParams
#' @export
cv_blobFromImagesWithParams <- local({
  .sigs <- list(
    list(f = .ropecv_cv_blobFromImagesWithParams__0, p = c(images = "matlist", param = "any"), r = c(TRUE, FALSE), s = "images, param = NULL"),
    list(f = .ropecv_cv_blobFromImagesWithParams__1, p = c(images = "matlist", param = "any", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "images, param = NULL, dst = NULL")
  )
  function(...) .ropecv_pick("cv_blobFromImagesWithParams", .sigs, list(...))
})

#' @title enableModelDiagnostics
#' @description ROpenCV 绑定。C++ 签名：<code>void enableModelDiagnostics(bool isDiagnosticsMode)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_enableModelDiagnostics <- function(isDiagnosticsMode) {
  .Call(`_ROpenCV_cv_enableModelDiagnostics`, isDiagnosticsMode)
}

#' @title getAvailableBackends
#' @description ROpenCV 绑定。C++ 签名：<code>std::vector&lt; std::pair&lt;Backend, Target&gt; &gt; getAvailableBackends()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getAvailableBackends <- function() {
  .Call(`_ROpenCV_cv_getAvailableBackends`)
}

#' @title getAvailableTargets
#' @description ROpenCV 绑定。C++ 签名：<code>std::vector&lt;Target&gt; getAvailableTargets(dnn::Backend be)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getAvailableTargets <- function(be) {
  .Call(`_ROpenCV_cv_getAvailableTargets`, be)
}

#' @title imagesFromBlob
#' @description ROpenCV 绑定。C++ 签名：<code>void imagesFromBlob(const cv::Mat&amp; blob_, OutputArrayOfArrays images_)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_imagesFromBlob <- function(blob_, images_ = NULL) {
  .Call(`_ROpenCV_cv_imagesFromBlob`, blob_, images_)
}

#' @title readNet
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNet(CV_WRAP_FILE_PATH const String&amp; model, CV_WRAP_FILE_PATH const String&amp; config, const String&amp; framework)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNet__0 <- function(model, config = '', framework = '') {
  .Call(`_ROpenCV_cv_readNet__0`, model, config, framework)
}

#' @title readNet
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNet(const String&amp; framework, const std::vector&lt;uchar&gt;&amp; bufferModel, const std::vector&lt;uchar&gt;&amp; bufferConfig)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNet__1 <- function(framework, bufferModel, bufferConfig = NULL) {
  .Call(`_ROpenCV_cv_readNet__1`, framework, bufferModel, bufferConfig)
}

# cv_readNet
#' @rdname cv_readNet
#' @export
cv_readNet <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNet__0, p = c(model = "chr", config = "chr", framework = "chr"), r = c(TRUE, FALSE, FALSE), s = "model, config = '', framework = ''"),
    list(f = .ropecv_cv_readNet__1, p = c(framework = "chr", bufferModel = "int", bufferConfig = "int"), r = c(TRUE, TRUE, FALSE), s = "framework, bufferModel, bufferConfig = NULL")
  )
  function(...) .ropecv_pick("cv_readNet", .sigs, list(...))
})

#' @title readNetFromCaffe
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromCaffe(CV_WRAP_FILE_PATH const String &amp; prototxt, CV_WRAP_FILE_PATH const String &amp; caffeModel)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromCaffe__0 <- function(prototxt, caffeModel = '') {
  .Call(`_ROpenCV_cv_readNetFromCaffe__0`, prototxt, caffeModel)
}

#' @title readNetFromCaffe
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromCaffe(const std::vector&lt;uchar&gt;&amp; bufferProto, const std::vector&lt;uchar&gt;&amp; bufferModel)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromCaffe__1 <- function(bufferProto, bufferModel = NULL) {
  .Call(`_ROpenCV_cv_readNetFromCaffe__1`, bufferProto, bufferModel)
}

# cv_readNetFromCaffe
#' @rdname cv_readNetFromCaffe
#' @export
cv_readNetFromCaffe <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNetFromCaffe__0, p = c(prototxt = "chr", caffeModel = "chr"), r = c(TRUE, FALSE), s = "prototxt, caffeModel = ''"),
    list(f = .ropecv_cv_readNetFromCaffe__1, p = c(bufferProto = "int", bufferModel = "int"), r = c(TRUE, FALSE), s = "bufferProto, bufferModel = NULL")
  )
  function(...) .ropecv_pick("cv_readNetFromCaffe", .sigs, list(...))
})

#' @title readNetFromDarknet
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromDarknet(CV_WRAP_FILE_PATH const String &amp; cfgFile, CV_WRAP_FILE_PATH const String &amp; darknetModel)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromDarknet__0 <- function(cfgFile, darknetModel = '') {
  .Call(`_ROpenCV_cv_readNetFromDarknet__0`, cfgFile, darknetModel)
}

#' @title readNetFromDarknet
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromDarknet(const std::vector&lt;uchar&gt;&amp; bufferCfg, const std::vector&lt;uchar&gt;&amp; bufferModel)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromDarknet__1 <- function(bufferCfg, bufferModel = NULL) {
  .Call(`_ROpenCV_cv_readNetFromDarknet__1`, bufferCfg, bufferModel)
}

# cv_readNetFromDarknet
#' @rdname cv_readNetFromDarknet
#' @export
cv_readNetFromDarknet <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNetFromDarknet__0, p = c(cfgFile = "chr", darknetModel = "chr"), r = c(TRUE, FALSE), s = "cfgFile, darknetModel = ''"),
    list(f = .ropecv_cv_readNetFromDarknet__1, p = c(bufferCfg = "int", bufferModel = "int"), r = c(TRUE, FALSE), s = "bufferCfg, bufferModel = NULL")
  )
  function(...) .ropecv_pick("cv_readNetFromDarknet", .sigs, list(...))
})

#' @title readNetFromModelOptimizer
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromModelOptimizer(CV_WRAP_FILE_PATH const String &amp; xml, CV_WRAP_FILE_PATH const String &amp; bin)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromModelOptimizer__0 <- function(xml, bin = '') {
  .Call(`_ROpenCV_cv_readNetFromModelOptimizer__0`, xml, bin)
}

#' @title readNetFromModelOptimizer
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromModelOptimizer(const std::vector&lt;uchar&gt;&amp; bufferModelConfig, const std::vector&lt;uchar&gt;&amp; bufferWeights)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromModelOptimizer__1 <- function(bufferModelConfig, bufferWeights) {
  .Call(`_ROpenCV_cv_readNetFromModelOptimizer__1`, bufferModelConfig, bufferWeights)
}

# cv_readNetFromModelOptimizer
#' @rdname cv_readNetFromModelOptimizer
#' @export
cv_readNetFromModelOptimizer <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNetFromModelOptimizer__0, p = c(xml = "chr", bin = "chr"), r = c(TRUE, FALSE), s = "xml, bin = ''"),
    list(f = .ropecv_cv_readNetFromModelOptimizer__1, p = c(bufferModelConfig = "int", bufferWeights = "int"), r = c(TRUE, TRUE), s = "bufferModelConfig, bufferWeights")
  )
  function(...) .ropecv_pick("cv_readNetFromModelOptimizer", .sigs, list(...))
})

#' @title readNetFromONNX
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromONNX(CV_WRAP_FILE_PATH const String &amp; onnxFile)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromONNX__0 <- function(onnxFile) {
  .Call(`_ROpenCV_cv_readNetFromONNX__0`, onnxFile)
}

#' @title readNetFromONNX
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromONNX(const std::vector&lt;uchar&gt;&amp; buffer)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromONNX__1 <- function(buffer) {
  .Call(`_ROpenCV_cv_readNetFromONNX__1`, buffer)
}

# cv_readNetFromONNX
#' @rdname cv_readNetFromONNX
#' @export
cv_readNetFromONNX <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNetFromONNX__0, p = c(onnxFile = "chr"), r = c(TRUE), s = "onnxFile"),
    list(f = .ropecv_cv_readNetFromONNX__1, p = c(buffer = "int"), r = c(TRUE), s = "buffer")
  )
  function(...) .ropecv_pick("cv_readNetFromONNX", .sigs, list(...))
})

#' @title readNetFromTFLite
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromTFLite(CV_WRAP_FILE_PATH const String &amp; model)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromTFLite__0 <- function(model) {
  .Call(`_ROpenCV_cv_readNetFromTFLite__0`, model)
}

#' @title readNetFromTFLite
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromTFLite(const std::vector&lt;uchar&gt;&amp; bufferModel)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromTFLite__1 <- function(bufferModel) {
  .Call(`_ROpenCV_cv_readNetFromTFLite__1`, bufferModel)
}

# cv_readNetFromTFLite
#' @rdname cv_readNetFromTFLite
#' @export
cv_readNetFromTFLite <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNetFromTFLite__0, p = c(model = "chr"), r = c(TRUE), s = "model"),
    list(f = .ropecv_cv_readNetFromTFLite__1, p = c(bufferModel = "int"), r = c(TRUE), s = "bufferModel")
  )
  function(...) .ropecv_pick("cv_readNetFromTFLite", .sigs, list(...))
})

#' @title readNetFromTensorflow
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromTensorflow(CV_WRAP_FILE_PATH const String &amp; model, CV_WRAP_FILE_PATH const String &amp; config)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromTensorflow__0 <- function(model, config = '') {
  .Call(`_ROpenCV_cv_readNetFromTensorflow__0`, model, config)
}

#' @title readNetFromTensorflow
#' @description ROpenCV 绑定。C++ 签名：<code>Net readNetFromTensorflow(const std::vector&lt;uchar&gt;&amp; bufferModel, const std::vector&lt;uchar&gt;&amp; bufferConfig)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_readNetFromTensorflow__1 <- function(bufferModel, bufferConfig = NULL) {
  .Call(`_ROpenCV_cv_readNetFromTensorflow__1`, bufferModel, bufferConfig)
}

# cv_readNetFromTensorflow
#' @rdname cv_readNetFromTensorflow
#' @export
cv_readNetFromTensorflow <- local({
  .sigs <- list(
    list(f = .ropecv_cv_readNetFromTensorflow__0, p = c(model = "chr", config = "chr"), r = c(TRUE, FALSE), s = "model, config = ''"),
    list(f = .ropecv_cv_readNetFromTensorflow__1, p = c(bufferModel = "int", bufferConfig = "int"), r = c(TRUE, FALSE), s = "bufferModel, bufferConfig = NULL")
  )
  function(...) .ropecv_pick("cv_readNetFromTensorflow", .sigs, list(...))
})

#' @title readTensorFromONNX
#' @description ROpenCV 绑定。C++ 签名：<code>Mat readTensorFromONNX(CV_WRAP_FILE_PATH const String&amp; path)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_readTensorFromONNX <- function(path) {
  .Call(`_ROpenCV_cv_readTensorFromONNX`, path)
}

#' @title shrinkCaffeModel
#' @description ROpenCV 绑定。C++ 签名：<code>void shrinkCaffeModel(CV_WRAP_FILE_PATH const String&amp; src, CV_WRAP_FILE_PATH const String&amp; dst, const std::vector&lt;String&gt;&amp; layersTypes)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_shrinkCaffeModel <- function(src, dst, layersTypes = NULL) {
  .Call(`_ROpenCV_cv_shrinkCaffeModel`, src, dst, layersTypes)
}

#' @title softNMSBoxes
#' @description ROpenCV 绑定。C++ 签名：<code>void softNMSBoxes(const std::vector&lt;Rect&gt;&amp; bboxes, const std::vector&lt;float&gt;&amp; scores, std::vector&lt;float&gt;&amp; updated_scores, const float score_threshold, const float nms_threshold, std::vector&lt;int&gt;&amp; indices, size_t top_k, const float sigma, SoftNMSMethod method)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_softNMSBoxes <- function(bboxes, scores, score_threshold, nms_threshold, top_k = 0, sigma = 0.5, method = SOFTNMS_GAUSSIAN) {
  .Call(`_ROpenCV_cv_softNMSBoxes`, bboxes, scores, score_threshold, nms_threshold, top_k, sigma, method)
}

#' @title writeTextGraph
#' @description ROpenCV 绑定。C++ 签名：<code>void writeTextGraph(CV_WRAP_FILE_PATH const String&amp; model, CV_WRAP_FILE_PATH const String&amp; output)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_writeTextGraph <- function(model, output) {
  .Call(`_ROpenCV_cv_writeTextGraph`, model, output)
}
