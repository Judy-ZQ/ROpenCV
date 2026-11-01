# 由 tools/gen/emit.py 生成，请勿手改。

#' @title computeImageFeatures
#' @description ROpenCV 绑定。C++ 签名：<code>void computeImageFeatures(const Ptr&lt;Feature2D&gt; &amp; featuresFinder, InputArrayOfArrays images, std::vector&lt;ImageFeatures&gt; &amp; features, InputArrayOfArrays masks)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_computeImageFeatures__0 <- function(featuresFinder, images, masks = NULL) {
  .Call(`_ROpenCV_cv_computeImageFeatures__0`, featuresFinder, images, masks)
}

#' @title computeImageFeatures
#' @description ROpenCV 绑定。C++ 签名：<code>void computeImageFeatures(const Ptr&lt;Feature2D&gt; &amp; featuresFinder, InputArray image, ImageFeatures &amp; features, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_computeImageFeatures__1 <- function(featuresFinder, image, mask = NULL) {
  .Call(`_ROpenCV_cv_computeImageFeatures__1`, featuresFinder, image, mask)
}

# cv_computeImageFeatures
#' @rdname cv_computeImageFeatures
#' @export
cv_computeImageFeatures <- local({
  .sigs <- list(
    list(f = .ropecv_cv_computeImageFeatures__0, p = c(featuresFinder = "obj", images = "matlist", masks = "matlist"), r = c(TRUE, TRUE, FALSE), s = "featuresFinder, images, masks = NULL"),
    list(f = .ropecv_cv_computeImageFeatures__1, p = c(featuresFinder = "obj", image = "mat", mask = "mat"), r = c(TRUE, TRUE, FALSE), s = "featuresFinder, image, mask = NULL")
  )
  function(...) .ropecv_pick("cv_computeImageFeatures", .sigs, list(...))
})
