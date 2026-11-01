# 由 tools/gen/emit.py 生成，请勿手改。

#' @title bm3dDenoising
#' @description ROpenCV 绑定。C++ 签名：<code>void bm3dDenoising(InputArray src, OutputArray dst, float h, int templateWindowSize, int searchWindowSize, int blockMatchingStep1, int blockMatchingStep2, int groupSize, int slidingStep, float beta, int normType, int step, int transformType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_bm3dDenoising__0 <- function(src, h = 1, templateWindowSize = 4, searchWindowSize = 16, blockMatchingStep1 = 2500, blockMatchingStep2 = 400, groupSize = 8, slidingStep = 1, beta = 2.0, normType = NORM_L2, step, transformType, dst = NULL) {
  .Call(`_ROpenCV_cv_bm3dDenoising__0`, src, h, templateWindowSize, searchWindowSize, blockMatchingStep1, blockMatchingStep2, groupSize, slidingStep, beta, normType, step, transformType, dst)
}

#' @title bm3dDenoising
#' @description ROpenCV 绑定。C++ 签名：<code>void bm3dDenoising(InputArray src, InputOutputArray dstStep1, OutputArray dstStep2, float h, int templateWindowSize, int searchWindowSize, int blockMatchingStep1, int blockMatchingStep2, int groupSize, int slidingStep, float beta, int normType, int step, int transformType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_bm3dDenoising__1 <- function(src, dstStep1 = NULL, h = 1, templateWindowSize = 4, searchWindowSize = 16, blockMatchingStep1 = 2500, blockMatchingStep2 = 400, groupSize = 8, slidingStep = 1, beta = 2.0, normType = NORM_L2, step, transformType, dstStep2 = NULL) {
  .Call(`_ROpenCV_cv_bm3dDenoising__1`, src, dstStep1, h, templateWindowSize, searchWindowSize, blockMatchingStep1, blockMatchingStep2, groupSize, slidingStep, beta, normType, step, transformType, dstStep2)
}

# cv_bm3dDenoising
#' @rdname cv_bm3dDenoising
#' @export
cv_bm3dDenoising <- local({
  .sigs <- list(
    list(f = .ropecv_cv_bm3dDenoising__0, p = c(src = "mat", h = "dbl", templateWindowSize = "int", searchWindowSize = "int", blockMatchingStep1 = "int", blockMatchingStep2 = "int", groupSize = "int", slidingStep = "int", beta = "dbl", normType = "int", step = "int", transformType = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE), s = "src, h = 1, templateWindowSize = 4, searchWindowSize = 16, blockMatchingStep1 = 2500, blockMatchingStep2 = 400, groupSize = 8, slidingStep = 1, beta = 2.0, normType = NORM_L2, step, transformType, dst = NULL"),
    list(f = .ropecv_cv_bm3dDenoising__1, p = c(src = "mat", dstStep1 = "mat", h = "dbl", templateWindowSize = "int", searchWindowSize = "int", blockMatchingStep1 = "int", blockMatchingStep2 = "int", groupSize = "int", slidingStep = "int", beta = "dbl", normType = "int", step = "int", transformType = "int", dstStep2 = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE), s = "src, dstStep1 = NULL, h = 1, templateWindowSize = 4, searchWindowSize = 16, blockMatchingStep1 = 2500, blockMatchingStep2 = 400, groupSize = 8, slidingStep = 1, beta = 2.0, normType = NORM_L2, step, transformType, dstStep2 = NULL")
  )
  function(...) .ropecv_pick("cv_bm3dDenoising", .sigs, list(...))
})
