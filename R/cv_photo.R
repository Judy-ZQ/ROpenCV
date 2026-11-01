# 由 tools/gen/emit.py 生成，请勿手改。

#' @title colorChange
#' @description ROpenCV 绑定。C++ 签名：<code>void colorChange(InputArray src, InputArray mask, OutputArray dst, float red_mul, float green_mul, float blue_mul)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_colorChange <- function(src, mask = NULL, red_mul = 1.0, green_mul = 1.0, blue_mul = 1.0, dst = NULL) {
  .Call(`_ROpenCV_cv_colorChange`, src, mask, red_mul, green_mul, blue_mul, dst)
}

#' @title createAlignMTB
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;AlignMTB&gt; createAlignMTB(int max_bits, int exclude_range, bool cut)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createAlignMTB <- function(max_bits = 6, exclude_range = 4, cut = TRUE) {
  .Call(`_ROpenCV_cv_createAlignMTB`, max_bits, exclude_range, cut)
}

#' @title createCalibrateDebevec
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;CalibrateDebevec&gt; createCalibrateDebevec(int samples, float lambda, bool random)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createCalibrateDebevec <- function(samples = 70, lambda = 10.0, random = FALSE) {
  .Call(`_ROpenCV_cv_createCalibrateDebevec`, samples, lambda, random)
}

#' @title createCalibrateRobertson
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;CalibrateRobertson&gt; createCalibrateRobertson(int max_iter, float threshold)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createCalibrateRobertson <- function(max_iter = 30, threshold = 0.01) {
  .Call(`_ROpenCV_cv_createCalibrateRobertson`, max_iter, threshold)
}

#' @title createMergeDebevec
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;MergeDebevec&gt; createMergeDebevec()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createMergeDebevec <- function() {
  .Call(`_ROpenCV_cv_createMergeDebevec`)
}

#' @title createMergeMertens
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;MergeMertens&gt; createMergeMertens(float contrast_weight, float saturation_weight, float exposure_weight)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createMergeMertens <- function(contrast_weight = 1.0, saturation_weight = 1.0, exposure_weight = 0.0) {
  .Call(`_ROpenCV_cv_createMergeMertens`, contrast_weight, saturation_weight, exposure_weight)
}

#' @title createMergeRobertson
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;MergeRobertson&gt; createMergeRobertson()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createMergeRobertson <- function() {
  .Call(`_ROpenCV_cv_createMergeRobertson`)
}

#' @title createTonemap
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;Tonemap&gt; createTonemap(float gamma)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createTonemap <- function(gamma = 1.0) {
  .Call(`_ROpenCV_cv_createTonemap`, gamma)
}

#' @title createTonemapDrago
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;TonemapDrago&gt; createTonemapDrago(float gamma, float saturation, float bias)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createTonemapDrago <- function(gamma = 1.0, saturation = 1.0, bias = 0.85) {
  .Call(`_ROpenCV_cv_createTonemapDrago`, gamma, saturation, bias)
}

#' @title createTonemapMantiuk
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;TonemapMantiuk&gt; createTonemapMantiuk(float gamma, float scale, float saturation)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createTonemapMantiuk <- function(gamma = 1.0, scale = 0.7, saturation = 1.0) {
  .Call(`_ROpenCV_cv_createTonemapMantiuk`, gamma, scale, saturation)
}

#' @title createTonemapReinhard
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;TonemapReinhard&gt; createTonemapReinhard(float gamma, float intensity, float light_adapt, float color_adapt)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createTonemapReinhard <- function(gamma = 1.0, intensity = 0.0, light_adapt = 1.0, color_adapt = 0.0) {
  .Call(`_ROpenCV_cv_createTonemapReinhard`, gamma, intensity, light_adapt, color_adapt)
}

#' @title decolor
#' @description ROpenCV 绑定。C++ 签名：<code>void decolor(InputArray src, OutputArray grayscale, OutputArray color_boost)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_decolor <- function(src, grayscale = NULL, color_boost = NULL) {
  .Call(`_ROpenCV_cv_decolor`, src, grayscale, color_boost)
}

#' @title denoise_TVL1
#' @description ROpenCV 绑定。C++ 签名：<code>void denoise_TVL1(const std::vector&lt;Mat&gt;&amp; observations, Mat&amp; result, double lambda, int niters)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_denoise_TVL1 <- function(observations, result = NULL, lambda = 1.0, niters = 30) {
  .Call(`_ROpenCV_cv_denoise_TVL1`, observations, result, lambda, niters)
}

#' @title detailEnhance
#' @description ROpenCV 绑定。C++ 签名：<code>void detailEnhance(InputArray src, OutputArray dst, float sigma_s, float sigma_r)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_detailEnhance <- function(src, sigma_s = 10, sigma_r = 0.15, dst = NULL) {
  .Call(`_ROpenCV_cv_detailEnhance`, src, sigma_s, sigma_r, dst)
}

#' @title edgePreservingFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void edgePreservingFilter(InputArray src, OutputArray dst, int flags, float sigma_s, float sigma_r)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_edgePreservingFilter <- function(src, flags = 1, sigma_s = 60, sigma_r = 0.4, dst = NULL) {
  .Call(`_ROpenCV_cv_edgePreservingFilter`, src, flags, sigma_s, sigma_r, dst)
}

#' @title fastNlMeansDenoising
#' @description ROpenCV 绑定。C++ 签名：<code>void fastNlMeansDenoising(InputArray src, OutputArray dst, float h, int templateWindowSize, int searchWindowSize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_fastNlMeansDenoising__0 <- function(src, h = 3, templateWindowSize = 7, searchWindowSize = 21, dst = NULL) {
  .Call(`_ROpenCV_cv_fastNlMeansDenoising__0`, src, h, templateWindowSize, searchWindowSize, dst)
}

#' @title fastNlMeansDenoising
#' @description ROpenCV 绑定。C++ 签名：<code>void fastNlMeansDenoising(InputArray src, OutputArray dst, const std::vector&lt;float&gt;&amp; h, int templateWindowSize, int searchWindowSize, int normType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_fastNlMeansDenoising__1 <- function(src, h, templateWindowSize = 7, searchWindowSize = 21, normType = NORM_L2, dst = NULL) {
  .Call(`_ROpenCV_cv_fastNlMeansDenoising__1`, src, h, templateWindowSize, searchWindowSize, normType, dst)
}

# cv_fastNlMeansDenoising
#' @rdname cv_fastNlMeansDenoising
#' @export
cv_fastNlMeansDenoising <- local({
  .sigs <- list(
    list(f = .ropecv_cv_fastNlMeansDenoising__0, p = c(src = "mat", h = "dbl", templateWindowSize = "int", searchWindowSize = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "src, h = 3, templateWindowSize = 7, searchWindowSize = 21, dst = NULL"),
    list(f = .ropecv_cv_fastNlMeansDenoising__1, p = c(src = "mat", h = "dbl", templateWindowSize = "int", searchWindowSize = "int", normType = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "src, h, templateWindowSize = 7, searchWindowSize = 21, normType = NORM_L2, dst = NULL")
  )
  function(...) .ropecv_pick("cv_fastNlMeansDenoising", .sigs, list(...))
})

#' @title fastNlMeansDenoisingColored
#' @description ROpenCV 绑定。C++ 签名：<code>void fastNlMeansDenoisingColored(InputArray src, OutputArray dst, float h, float hColor, int templateWindowSize, int searchWindowSize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fastNlMeansDenoisingColored <- function(src, h = 3, hColor = 3, templateWindowSize = 7, searchWindowSize = 21, dst = NULL) {
  .Call(`_ROpenCV_cv_fastNlMeansDenoisingColored`, src, h, hColor, templateWindowSize, searchWindowSize, dst)
}

#' @title fastNlMeansDenoisingColoredMulti
#' @description ROpenCV 绑定。C++ 签名：<code>void fastNlMeansDenoisingColoredMulti(InputArrayOfArrays srcImgs, OutputArray dst, int imgToDenoiseIndex, int temporalWindowSize, float h, float hColor, int templateWindowSize, int searchWindowSize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fastNlMeansDenoisingColoredMulti <- function(srcImgs, imgToDenoiseIndex, temporalWindowSize, h = 3, hColor = 3, templateWindowSize = 7, searchWindowSize = 21, dst = NULL) {
  .Call(`_ROpenCV_cv_fastNlMeansDenoisingColoredMulti`, srcImgs, imgToDenoiseIndex, temporalWindowSize, h, hColor, templateWindowSize, searchWindowSize, dst)
}

#' @title fastNlMeansDenoisingMulti
#' @description ROpenCV 绑定。C++ 签名：<code>void fastNlMeansDenoisingMulti(InputArrayOfArrays srcImgs, OutputArray dst, int imgToDenoiseIndex, int temporalWindowSize, float h, int templateWindowSize, int searchWindowSize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_fastNlMeansDenoisingMulti__0 <- function(srcImgs, imgToDenoiseIndex, temporalWindowSize, h = 3, templateWindowSize = 7, searchWindowSize = 21, dst = NULL) {
  .Call(`_ROpenCV_cv_fastNlMeansDenoisingMulti__0`, srcImgs, imgToDenoiseIndex, temporalWindowSize, h, templateWindowSize, searchWindowSize, dst)
}

#' @title fastNlMeansDenoisingMulti
#' @description ROpenCV 绑定。C++ 签名：<code>void fastNlMeansDenoisingMulti(InputArrayOfArrays srcImgs, OutputArray dst, int imgToDenoiseIndex, int temporalWindowSize, const std::vector&lt;float&gt;&amp; h, int templateWindowSize, int searchWindowSize, int normType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_fastNlMeansDenoisingMulti__1 <- function(srcImgs, imgToDenoiseIndex, temporalWindowSize, h, templateWindowSize = 7, searchWindowSize = 21, normType = NORM_L2, dst = NULL) {
  .Call(`_ROpenCV_cv_fastNlMeansDenoisingMulti__1`, srcImgs, imgToDenoiseIndex, temporalWindowSize, h, templateWindowSize, searchWindowSize, normType, dst)
}

# cv_fastNlMeansDenoisingMulti
#' @rdname cv_fastNlMeansDenoisingMulti
#' @export
cv_fastNlMeansDenoisingMulti <- local({
  .sigs <- list(
    list(f = .ropecv_cv_fastNlMeansDenoisingMulti__0, p = c(srcImgs = "matlist", imgToDenoiseIndex = "int", temporalWindowSize = "int", h = "dbl", templateWindowSize = "int", searchWindowSize = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "srcImgs, imgToDenoiseIndex, temporalWindowSize, h = 3, templateWindowSize = 7, searchWindowSize = 21, dst = NULL"),
    list(f = .ropecv_cv_fastNlMeansDenoisingMulti__1, p = c(srcImgs = "matlist", imgToDenoiseIndex = "int", temporalWindowSize = "int", h = "dbl", templateWindowSize = "int", searchWindowSize = "int", normType = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "srcImgs, imgToDenoiseIndex, temporalWindowSize, h, templateWindowSize = 7, searchWindowSize = 21, normType = NORM_L2, dst = NULL")
  )
  function(...) .ropecv_pick("cv_fastNlMeansDenoisingMulti", .sigs, list(...))
})

#' @title illuminationChange
#' @description ROpenCV 绑定。C++ 签名：<code>void illuminationChange(InputArray src, InputArray mask, OutputArray dst, float alpha, float beta)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_illuminationChange <- function(src, mask = NULL, alpha = 0.2, beta = 0.4, dst = NULL) {
  .Call(`_ROpenCV_cv_illuminationChange`, src, mask, alpha, beta, dst)
}

#' @title inpaint
#' @description ROpenCV 绑定。C++ 签名：<code>void inpaint(InputArray src, InputArray inpaintMask, OutputArray dst, double inpaintRadius, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_inpaint <- function(src, inpaintMask, inpaintRadius, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_inpaint`, src, inpaintMask, inpaintRadius, flags, dst)
}

#' @title pencilSketch
#' @description ROpenCV 绑定。C++ 签名：<code>void pencilSketch(InputArray src, OutputArray dst1, OutputArray dst2, float sigma_s, float sigma_r, float shade_factor)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_pencilSketch <- function(src, sigma_s = 60, sigma_r = 0.07, shade_factor = 0.02, dst1 = NULL, dst2 = NULL) {
  .Call(`_ROpenCV_cv_pencilSketch`, src, sigma_s, sigma_r, shade_factor, dst1, dst2)
}

#' @title seamlessClone
#' @description ROpenCV 绑定。C++ 签名：<code>void seamlessClone(InputArray src, InputArray dst, InputArray mask, Point p, OutputArray blend, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>blend</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_seamlessClone <- function(src, dst, mask = NULL, p, flags, blend = NULL) {
  .Call(`_ROpenCV_cv_seamlessClone`, src, dst, mask, p, flags, blend)
}

#' @title stylization
#' @description ROpenCV 绑定。C++ 签名：<code>void stylization(InputArray src, OutputArray dst, float sigma_s, float sigma_r)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_stylization <- function(src, sigma_s = 60, sigma_r = 0.45, dst = NULL) {
  .Call(`_ROpenCV_cv_stylization`, src, sigma_s, sigma_r, dst)
}

#' @title textureFlattening
#' @description ROpenCV 绑定。C++ 签名：<code>void textureFlattening(InputArray src, InputArray mask, OutputArray dst, float low_threshold, float high_threshold, int kernel_size)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_textureFlattening <- function(src, mask = NULL, low_threshold = 30, high_threshold = 45, kernel_size = 3, dst = NULL) {
  .Call(`_ROpenCV_cv_textureFlattening`, src, mask, low_threshold, high_threshold, kernel_size, dst)
}
