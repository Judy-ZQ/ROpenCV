# 由 tools/gen/emit.py 生成，请勿手改。

#' @title drawFacemarks
#' @description ROpenCV 绑定。C++ 签名：<code>void drawFacemarks(InputOutputArray image, InputArray points, Scalar color)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawFacemarks <- function(image = NULL, points, color = c(255, 0, 0)) {
  .Call(`_ROpenCV_cv_drawFacemarks`, image, points, color)
}

#' @title getFacesHAAR
#' @description ROpenCV 绑定。C++ 签名：<code>bool getFacesHAAR(InputArray image, OutputArray faces, const String&amp; face_cascade_name)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_getFacesHAAR <- function(image, face_cascade_name, dst = NULL) {
  .Call(`_ROpenCV_cv_getFacesHAAR`, image, face_cascade_name, dst)
}

#' @title loadDatasetList
#' @description ROpenCV 绑定。C++ 签名：<code>bool loadDatasetList(String imageList, String annotationList, std::vector&lt;String&gt; &amp; images, std::vector&lt;String&gt; &amp; annotations)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_loadDatasetList <- function(imageList, annotationList, images = NULL, annotations = NULL) {
  .Call(`_ROpenCV_cv_loadDatasetList`, imageList, annotationList, images, annotations)
}

#' @title loadFacePoints
#' @description ROpenCV 绑定。C++ 签名：<code>bool loadFacePoints(String filename, OutputArray points, float offset)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_loadFacePoints <- function(filename, offset = 0.0, dst = NULL) {
  .Call(`_ROpenCV_cv_loadFacePoints`, filename, offset, dst)
}

#' @title loadTrainingData
#' @description ROpenCV 绑定。C++ 签名：<code>bool loadTrainingData(std::vector&lt;String&gt; filename, std::vector&lt; std::vector&lt;Point2f&gt; &gt; &amp; trainlandmarks, std::vector&lt;String&gt; &amp; trainimages)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_loadTrainingData__0 <- function(filename, trainlandmarks = NULL, trainimages = NULL) {
  .Call(`_ROpenCV_cv_loadTrainingData__0`, filename, trainlandmarks, trainimages)
}

#' @title loadTrainingData
#' @description ROpenCV 绑定。C++ 签名：<code>bool loadTrainingData(String filename, std::vector&lt;String&gt; &amp; images, OutputArray facePoints, char delim, float offset)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_loadTrainingData__1 <- function(filename, images = NULL, delim, offset = 0.0, facePoints = NULL) {
  .Call(`_ROpenCV_cv_loadTrainingData__1`, filename, images, delim, offset, facePoints)
}

#' @title loadTrainingData
#' @description ROpenCV 绑定。C++ 签名：<code>bool loadTrainingData(String imageList, String groundTruth, std::vector&lt;String&gt; &amp; images, OutputArray facePoints, float offset)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_loadTrainingData__2 <- function(imageList, groundTruth, images = NULL, offset = 0.0, facePoints = NULL) {
  .Call(`_ROpenCV_cv_loadTrainingData__2`, imageList, groundTruth, images, offset, facePoints)
}

# cv_loadTrainingData
#' @rdname cv_loadTrainingData
#' @export
cv_loadTrainingData <- local({
  .sigs <- list(
    list(f = .ropecv_cv_loadTrainingData__0, p = c(filename = "chr", trainlandmarks = "lst", trainimages = "chr"), r = c(TRUE, FALSE, FALSE), s = "filename, trainlandmarks = NULL, trainimages = NULL"),
    list(f = .ropecv_cv_loadTrainingData__1, p = c(filename = "chr", images = "chr", delim = "chr", offset = "dbl", facePoints = "mat"), r = c(TRUE, FALSE, TRUE, FALSE, FALSE), s = "filename, images = NULL, delim, offset = 0.0, facePoints = NULL"),
    list(f = .ropecv_cv_loadTrainingData__2, p = c(imageList = "chr", groundTruth = "chr", images = "chr", offset = "dbl", facePoints = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE), s = "imageList, groundTruth, images = NULL, offset = 0.0, facePoints = NULL")
  )
  function(...) .ropecv_pick("cv_loadTrainingData", .sigs, list(...))
})
