# 由 tools/gen/emit.py 生成，请勿手改。

#' @title AGAST
#' @description ROpenCV 绑定。C++ 签名：<code>void AGAST(InputArray image, std::vector&lt;KeyPoint&gt;&amp; keypoints, int threshold, bool nonmaxSuppression, AgastFeatureDetector::DetectorType type)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_AGAST <- function(image, threshold, nonmaxSuppression = TRUE, type = OAST_9_16) {
  .Call(`_ROpenCV_cv_AGAST`, image, threshold, nonmaxSuppression, type)
}

#' @title FAST
#' @description ROpenCV 绑定。C++ 签名：<code>void FAST(InputArray image, std::vector&lt;KeyPoint&gt;&amp; keypoints, int threshold, bool nonmaxSuppression, FastFeatureDetector::DetectorType type)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_FAST <- function(image, threshold, nonmaxSuppression = TRUE, type = TYPE_9_16) {
  .Call(`_ROpenCV_cv_FAST`, image, threshold, nonmaxSuppression, type)
}

#' @title computeRecallPrecisionCurve
#' @description ROpenCV 绑定。C++ 签名：<code>void computeRecallPrecisionCurve(const std::vector&lt;std::vector&lt;DMatch&gt; &gt;&amp; matches1to2, const std::vector&lt;std::vector&lt;uchar&gt; &gt;&amp; correctMatches1to2Mask, std::vector&lt;Point2f&gt;&amp; recallPrecisionCurve)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_computeRecallPrecisionCurve <- function(matches1to2, correctMatches1to2Mask, recallPrecisionCurve = NULL) {
  .Call(`_ROpenCV_cv_computeRecallPrecisionCurve`, matches1to2, correctMatches1to2Mask, recallPrecisionCurve)
}

#' @title drawKeypoints
#' @description ROpenCV 绑定。C++ 签名：<code>void drawKeypoints(InputArray image, const std::vector&lt;KeyPoint&gt;&amp; keypoints, InputOutputArray outImage, const Scalar&amp; color, DrawMatchesFlags flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>outImage</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawKeypoints <- function(image, keypoints, outImage = NULL, color = -1, flags = DEFAULT) {
  .Call(`_ROpenCV_cv_drawKeypoints`, image, keypoints, outImage, color, flags)
}

#' @title drawMatches
#' @description ROpenCV 绑定。C++ 签名：<code>void drawMatches(InputArray img1, const std::vector&lt;KeyPoint&gt;&amp; keypoints1, InputArray img2, const std::vector&lt;KeyPoint&gt;&amp; keypoints2, const std::vector&lt;DMatch&gt;&amp; matches1to2, InputOutputArray outImg, const Scalar&amp; matchColor, const Scalar&amp; singlePointColor, const std::vector&lt;char&gt;&amp; matchesMask, DrawMatchesFlags flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>outImg</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_drawMatches__0 <- function(img1, keypoints1, img2, keypoints2, matches1to2, outImg = NULL, matchColor = -1, singlePointColor = -1, matchesMask = NULL, flags = DEFAULT) {
  .Call(`_ROpenCV_cv_drawMatches__0`, img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchColor, singlePointColor, matchesMask, flags)
}

#' @title drawMatches
#' @description ROpenCV 绑定。C++ 签名：<code>void drawMatches(InputArray img1, const std::vector&lt;KeyPoint&gt;&amp; keypoints1, InputArray img2, const std::vector&lt;KeyPoint&gt;&amp; keypoints2, const std::vector&lt;DMatch&gt;&amp; matches1to2, InputOutputArray outImg, const int matchesThickness, const Scalar&amp; matchColor, const Scalar&amp; singlePointColor, const std::vector&lt;char&gt;&amp; matchesMask, DrawMatchesFlags flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>outImg</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_drawMatches__1 <- function(img1, keypoints1, img2, keypoints2, matches1to2, outImg = NULL, matchesThickness, matchColor = -1, singlePointColor = -1, matchesMask = NULL, flags = DEFAULT) {
  .Call(`_ROpenCV_cv_drawMatches__1`, img1, keypoints1, img2, keypoints2, matches1to2, outImg, matchesThickness, matchColor, singlePointColor, matchesMask, flags)
}

# cv_drawMatches
#' @rdname cv_drawMatches
#' @export
cv_drawMatches <- local({
  .sigs <- list(
    list(f = .ropecv_cv_drawMatches__0, p = c(img1 = "mat", keypoints1 = "lst", img2 = "mat", keypoints2 = "lst", matches1to2 = "lst", outImg = "mat", matchColor = "scalar", singlePointColor = "scalar", matchesMask = "int", flags = "any"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "img1, keypoints1, img2, keypoints2, matches1to2, outImg = NULL, matchColor = -1, singlePointColor = -1, matchesMask = NULL, flags = DEFAULT"),
    list(f = .ropecv_cv_drawMatches__1, p = c(img1 = "mat", keypoints1 = "lst", img2 = "mat", keypoints2 = "lst", matches1to2 = "lst", outImg = "mat", matchesThickness = "int", matchColor = "scalar", singlePointColor = "scalar", matchesMask = "int", flags = "any"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "img1, keypoints1, img2, keypoints2, matches1to2, outImg = NULL, matchesThickness, matchColor = -1, singlePointColor = -1, matchesMask = NULL, flags = DEFAULT")
  )
  function(...) .ropecv_pick("cv_drawMatches", .sigs, list(...))
})

#' @title evaluateFeatureDetector
#' @description ROpenCV 绑定。C++ 签名：<code>void evaluateFeatureDetector(const Mat&amp; img1, const Mat&amp; img2, const Mat&amp; H1to2, std::vector&lt;KeyPoint&gt;* keypoints1, std::vector&lt;KeyPoint&gt;* keypoints2, float&amp; repeatability, int&amp; correspCount, const Ptr&lt;FeatureDetector&gt;&amp; fdetector)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_evaluateFeatureDetector <- function(img1, img2, H1to2, repeatability = NULL, correspCount = NULL, fdetector = NULL) {
  .Call(`_ROpenCV_cv_evaluateFeatureDetector`, img1, img2, H1to2, repeatability, correspCount, fdetector)
}

#' @title getNearestPoint
#' @description ROpenCV 绑定。C++ 签名：<code>int getNearestPoint(const std::vector&lt;Point2f&gt;&amp; recallPrecisionCurve, float l_precision)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getNearestPoint <- function(recallPrecisionCurve, l_precision) {
  .Call(`_ROpenCV_cv_getNearestPoint`, recallPrecisionCurve, l_precision)
}

#' @title getRecall
#' @description ROpenCV 绑定。C++ 签名：<code>float getRecall(const std::vector&lt;Point2f&gt;&amp; recallPrecisionCurve, float l_precision)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getRecall <- function(recallPrecisionCurve, l_precision) {
  .Call(`_ROpenCV_cv_getRecall`, recallPrecisionCurve, l_precision)
}
