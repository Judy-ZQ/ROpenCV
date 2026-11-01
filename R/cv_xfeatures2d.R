# 由 tools/gen/emit.py 生成，请勿手改。

#' @title FASTForPointSet
#' @description ROpenCV 绑定。C++ 签名：<code>void FASTForPointSet(InputArray image, std::vector&lt;KeyPoint&gt;&amp; keypoints, int threshold, bool nonmaxSuppression, cv::FastFeatureDetector::DetectorType type)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_FASTForPointSet <- function(image, keypoints = NULL, threshold, nonmaxSuppression = TRUE, type = TYPE_9_16) {
  .Call(`_ROpenCV_cv_FASTForPointSet`, image, keypoints, threshold, nonmaxSuppression, type)
}

#' @title matchGMS
#' @description ROpenCV 绑定。C++ 签名：<code>void matchGMS(const Size&amp; size1, const Size&amp; size2, const std::vector&lt;KeyPoint&gt;&amp; keypoints1, const std::vector&lt;KeyPoint&gt;&amp; keypoints2, const std::vector&lt;DMatch&gt;&amp; matches1to2, std::vector&lt;DMatch&gt;&amp; matchesGMS, const bool withRotation, const bool withScale, const double thresholdFactor)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_matchGMS <- function(size1, size2, keypoints1, keypoints2, matches1to2, withRotation = FALSE, withScale = FALSE, thresholdFactor = 6.0) {
  .Call(`_ROpenCV_cv_matchGMS`, size1, size2, keypoints1, keypoints2, matches1to2, withRotation, withScale, thresholdFactor)
}

#' @title matchLOGOS
#' @description ROpenCV 绑定。C++ 签名：<code>void matchLOGOS(const std::vector&lt;KeyPoint&gt;&amp; keypoints1, const std::vector&lt;KeyPoint&gt;&amp; keypoints2, const std::vector&lt;int&gt;&amp; nn1, const std::vector&lt;int&gt;&amp; nn2, std::vector&lt;DMatch&gt;&amp; matches1to2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_matchLOGOS <- function(keypoints1, keypoints2, nn1, nn2) {
  .Call(`_ROpenCV_cv_matchLOGOS`, keypoints1, keypoints2, nn1, nn2)
}
