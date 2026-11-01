# 由 tools/gen/emit.py 生成，请勿手改。

#' @title Canny
#' @description ROpenCV 绑定。C++ 签名：<code>void Canny(InputArray image, OutputArray edges, double threshold1, double threshold2, int apertureSize, bool L2gradient)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_Canny__0 <- function(image, threshold1, threshold2, apertureSize = 3, L2gradient = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_Canny__0`, image, threshold1, threshold2, apertureSize, L2gradient, dst)
}

#' @title Canny
#' @description ROpenCV 绑定。C++ 签名：<code>void Canny(InputArray dx, InputArray dy, OutputArray edges, double threshold1, double threshold2, bool L2gradient)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_Canny__1 <- function(dx, dy, threshold1, threshold2, L2gradient = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_Canny__1`, dx, dy, threshold1, threshold2, L2gradient, dst)
}

# cv_Canny
#' @rdname cv_Canny
#' @export
cv_Canny <- local({
  .sigs <- list(
    list(f = .ropecv_cv_Canny__0, p = c(image = "mat", threshold1 = "dbl", threshold2 = "dbl", apertureSize = "int", L2gradient = "lgl", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "image, threshold1, threshold2, apertureSize = 3, L2gradient = FALSE, dst = NULL"),
    list(f = .ropecv_cv_Canny__1, p = c(dx = "mat", dy = "mat", threshold1 = "dbl", threshold2 = "dbl", L2gradient = "lgl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE), s = "dx, dy, threshold1, threshold2, L2gradient = FALSE, dst = NULL")
  )
  function(...) .ropecv_pick("cv_Canny", .sigs, list(...))
})

#' @title EMD
#' @description ROpenCV 绑定。C++ 签名：<code>float EMD(InputArray signature1, InputArray signature2, int distType, InputArray cost, float* lowerBound, OutputArray flow)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_EMD <- function(signature1, signature2, distType, cost = NULL, flow = NULL) {
  .Call(`_ROpenCV_cv_EMD`, signature1, signature2, distType, cost, flow)
}

#' @title GaussianBlur
#' @description ROpenCV 绑定。C++ 签名：<code>void GaussianBlur(InputArray src, OutputArray dst, Size ksize, double sigmaX, double sigmaY, int borderType, AlgorithmHint hint)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_GaussianBlur <- function(src, ksize, sigmaX, sigmaY = 0, borderType = BORDER_DEFAULT, hint = ALGO_HINT_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_GaussianBlur`, src, ksize, sigmaX, sigmaY, borderType, hint, dst)
}

#' @title HoughCircles
#' @description ROpenCV 绑定。C++ 签名：<code>void HoughCircles(InputArray image, OutputArray circles, int method, double dp, double minDist, double param1, double param2, int minRadius, int maxRadius)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_HoughCircles <- function(image, method, dp, minDist, param1 = 100, param2 = 100, minRadius = 0, maxRadius = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_HoughCircles`, image, method, dp, minDist, param1, param2, minRadius, maxRadius, dst)
}

#' @title HoughLines
#' @description ROpenCV 绑定。C++ 签名：<code>void HoughLines(InputArray image, OutputArray lines, double rho, double theta, int threshold, double srn, double stn, double min_theta, double max_theta)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_HoughLines <- function(image, rho, theta, threshold, srn = 0, stn = 0, min_theta = 0, max_theta = pi, dst = NULL) {
  .Call(`_ROpenCV_cv_HoughLines`, image, rho, theta, threshold, srn, stn, min_theta, max_theta, dst)
}

#' @title HoughLinesP
#' @description ROpenCV 绑定。C++ 签名：<code>void HoughLinesP(InputArray image, OutputArray lines, double rho, double theta, int threshold, double minLineLength, double maxLineGap)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_HoughLinesP <- function(image, rho, theta, threshold, minLineLength = 0, maxLineGap = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_HoughLinesP`, image, rho, theta, threshold, minLineLength, maxLineGap, dst)
}

#' @title HoughLinesPointSet
#' @description ROpenCV 绑定。C++ 签名：<code>void HoughLinesPointSet(InputArray point, OutputArray lines, int lines_max, int threshold, double min_rho, double max_rho, double rho_step, double min_theta, double max_theta, double theta_step)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_HoughLinesPointSet <- function(point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, dst = NULL) {
  .Call(`_ROpenCV_cv_HoughLinesPointSet`, point, lines_max, threshold, min_rho, max_rho, rho_step, min_theta, max_theta, theta_step, dst)
}

#' @title HuMoments
#' @description ROpenCV 绑定。C++ 签名：<code>void HuMoments(const Moments&amp; m, OutputArray hu)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_HuMoments <- function(m, dst = NULL) {
  .Call(`_ROpenCV_cv_HuMoments`, m, dst)
}

#' @title Laplacian
#' @description ROpenCV 绑定。C++ 签名：<code>void Laplacian(InputArray src, OutputArray dst, int ddepth, int ksize, double scale, double delta, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_Laplacian <- function(src, ddepth, ksize = 1, scale = 1, delta = 0, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_Laplacian`, src, ddepth, ksize, scale, delta, borderType, dst)
}

#' @title Scharr
#' @description ROpenCV 绑定。C++ 签名：<code>void Scharr(InputArray src, OutputArray dst, int ddepth, int dx, int dy, double scale, double delta, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_Scharr <- function(src, ddepth, dx, dy, scale = 1, delta = 0, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_Scharr`, src, ddepth, dx, dy, scale, delta, borderType, dst)
}

#' @title Sobel
#' @description ROpenCV 绑定。C++ 签名：<code>void Sobel(InputArray src, OutputArray dst, int ddepth, int dx, int dy, int ksize, double scale, double delta, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_Sobel <- function(src, ddepth, dx, dy, ksize = 3, scale = 1, delta = 0, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_Sobel`, src, ddepth, dx, dy, ksize, scale, delta, borderType, dst)
}

#' @title accumulate
#' @description ROpenCV 绑定。C++ 签名：<code>void accumulate(InputArray src, InputOutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_accumulate <- function(src, dst = NULL, mask = NULL) {
  .Call(`_ROpenCV_cv_accumulate`, src, dst, mask)
}

#' @title accumulateProduct
#' @description ROpenCV 绑定。C++ 签名：<code>void accumulateProduct(InputArray src1, InputArray src2, InputOutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_accumulateProduct <- function(src1, src2, dst = NULL, mask = NULL) {
  .Call(`_ROpenCV_cv_accumulateProduct`, src1, src2, dst, mask)
}

#' @title accumulateSquare
#' @description ROpenCV 绑定。C++ 签名：<code>void accumulateSquare(InputArray src, InputOutputArray dst, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_accumulateSquare <- function(src, dst = NULL, mask = NULL) {
  .Call(`_ROpenCV_cv_accumulateSquare`, src, dst, mask)
}

#' @title accumulateWeighted
#' @description ROpenCV 绑定。C++ 签名：<code>void accumulateWeighted(InputArray src, InputOutputArray dst, double alpha, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_accumulateWeighted <- function(src, dst = NULL, alpha, mask = NULL) {
  .Call(`_ROpenCV_cv_accumulateWeighted`, src, dst, alpha, mask)
}

#' @title adaptiveThreshold
#' @description ROpenCV 绑定。C++ 签名：<code>void adaptiveThreshold(InputArray src, OutputArray dst, double maxValue, int adaptiveMethod, int thresholdType, int blockSize, double C)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_adaptiveThreshold <- function(src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst = NULL) {
  .Call(`_ROpenCV_cv_adaptiveThreshold`, src, maxValue, adaptiveMethod, thresholdType, blockSize, C, dst)
}

#' @title applyColorMap
#' @description ROpenCV 绑定。C++ 签名：<code>void applyColorMap(InputArray src, OutputArray dst, int colormap)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_applyColorMap__0 <- function(src, colormap, dst = NULL) {
  .Call(`_ROpenCV_cv_applyColorMap__0`, src, colormap, dst)
}

#' @title applyColorMap
#' @description ROpenCV 绑定。C++ 签名：<code>void applyColorMap(InputArray src, OutputArray dst, InputArray userColor)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_applyColorMap__1 <- function(src, userColor, dst = NULL) {
  .Call(`_ROpenCV_cv_applyColorMap__1`, src, userColor, dst)
}

# cv_applyColorMap
#' @rdname cv_applyColorMap
#' @export
cv_applyColorMap <- local({
  .sigs <- list(
    list(f = .ropecv_cv_applyColorMap__0, p = c(src = "mat", colormap = "int", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, colormap, dst = NULL"),
    list(f = .ropecv_cv_applyColorMap__1, p = c(src = "mat", userColor = "mat", dst = "mat"), r = c(TRUE, TRUE, FALSE), s = "src, userColor, dst = NULL")
  )
  function(...) .ropecv_pick("cv_applyColorMap", .sigs, list(...))
})

#' @title approxPolyDP
#' @description ROpenCV 绑定。C++ 签名：<code>void approxPolyDP(InputArray curve, OutputArray approxCurve, double epsilon, bool closed)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_approxPolyDP <- function(curve, epsilon, closed, dst = NULL) {
  .Call(`_ROpenCV_cv_approxPolyDP`, curve, epsilon, closed, dst)
}

#' @title approxPolyN
#' @description ROpenCV 绑定。C++ 签名：<code>void approxPolyN(InputArray curve, OutputArray approxCurve, int nsides, float epsilon_percentage, bool ensure_convex)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_approxPolyN <- function(curve, nsides, epsilon_percentage = -1.0, ensure_convex = TRUE, dst = NULL) {
  .Call(`_ROpenCV_cv_approxPolyN`, curve, nsides, epsilon_percentage, ensure_convex, dst)
}

#' @title arcLength
#' @description ROpenCV 绑定。C++ 签名：<code>double arcLength(InputArray curve, bool closed)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_arcLength <- function(curve, closed) {
  .Call(`_ROpenCV_cv_arcLength`, curve, closed)
}

#' @title arrowedLine
#' @description ROpenCV 绑定。C++ 签名：<code>void arrowedLine(InputOutputArray img, Point pt1, Point pt2, const Scalar&amp; color, int thickness, int line_type, int shift, double tipLength)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_arrowedLine <- function(img = NULL, pt1, pt2, color, thickness = 1, line_type = 8, shift = 0, tipLength = 0.1) {
  .Call(`_ROpenCV_cv_arrowedLine`, img, pt1, pt2, color, thickness, line_type, shift, tipLength)
}

#' @title bilateralFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void bilateralFilter(InputArray src, OutputArray dst, int d, double sigmaColor, double sigmaSpace, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_bilateralFilter <- function(src, d, sigmaColor, sigmaSpace, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_bilateralFilter`, src, d, sigmaColor, sigmaSpace, borderType, dst)
}

#' @title blendLinear
#' @description ROpenCV 绑定。C++ 签名：<code>void blendLinear(InputArray src1, InputArray src2, InputArray weights1, InputArray weights2, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_blendLinear <- function(src1, src2, weights1, weights2, dst = NULL) {
  .Call(`_ROpenCV_cv_blendLinear`, src1, src2, weights1, weights2, dst)
}

#' @title blur
#' @description ROpenCV 绑定。C++ 签名：<code>void blur(InputArray src, OutputArray dst, Size ksize, Point anchor, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_blur <- function(src, ksize, anchor = c(-1, -1), borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_blur`, src, ksize, anchor, borderType, dst)
}

#' @title boundingRect
#' @description ROpenCV 绑定。C++ 签名：<code>Rect boundingRect(InputArray array)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_boundingRect <- function(array) {
  .Call(`_ROpenCV_cv_boundingRect`, array)
}

#' @title boxFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void boxFilter(InputArray src, OutputArray dst, int ddepth, Size ksize, Point anchor, bool normalize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_boxFilter <- function(src, ddepth, ksize, anchor = c(-1, -1), normalize = TRUE, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_boxFilter`, src, ddepth, ksize, anchor, normalize, borderType, dst)
}

#' @title boxPoints
#' @description ROpenCV 绑定。C++ 签名：<code>void boxPoints(RotatedRect box, OutputArray points)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_boxPoints <- function(box, dst = NULL) {
  .Call(`_ROpenCV_cv_boxPoints`, box, dst)
}

#' @title buildPyramid
#' @description ROpenCV 绑定。C++ 签名：<code>void buildPyramid(InputArray src, OutputArrayOfArrays dst, int maxlevel, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_buildPyramid <- function(src, maxlevel, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_buildPyramid`, src, maxlevel, borderType, dst)
}

#' @title calcBackProject
#' @description ROpenCV 绑定。C++ 签名：<code>void calcBackProject(InputArrayOfArrays images, const std::vector&lt;int&gt;&amp; channels, InputArray hist, OutputArray dst, const std::vector&lt;float&gt;&amp; ranges, double scale)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_calcBackProject <- function(images, channels, hist, ranges, scale, dst = NULL) {
  .Call(`_ROpenCV_cv_calcBackProject`, images, channels, hist, ranges, scale, dst)
}

#' @title calcHist
#' @description ROpenCV 绑定。C++ 签名：<code>void calcHist(InputArrayOfArrays images, const std::vector&lt;int&gt;&amp; channels, InputArray mask, OutputArray hist, const std::vector&lt;int&gt;&amp; histSize, const std::vector&lt;float&gt;&amp; ranges, bool accumulate)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_calcHist <- function(images, channels, mask = NULL, histSize, ranges, accumulate = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_calcHist`, images, channels, mask, histSize, ranges, accumulate, dst)
}

#' @title circle
#' @description ROpenCV 绑定。C++ 签名：<code>void circle(InputOutputArray img, Point center, int radius, const Scalar&amp; color, int thickness, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_circle <- function(img = NULL, center, radius, color, thickness = 1, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_circle`, img, center, radius, color, thickness, lineType, shift)
}

#' @title clipLine
#' @description ROpenCV 绑定。C++ 签名：<code>bool clipLine(Rect imgRect, Point&amp; pt1, Point&amp; pt2)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_clipLine <- function(imgRect) {
  .Call(`_ROpenCV_cv_clipLine`, imgRect)
}

#' @title compareHist
#' @description ROpenCV 绑定。C++ 签名：<code>double compareHist(InputArray H1, InputArray H2, int method)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_compareHist <- function(H1, H2, method) {
  .Call(`_ROpenCV_cv_compareHist`, H1, H2, method)
}

#' @title connectedComponents
#' @description ROpenCV 绑定。C++ 签名：<code>int connectedComponents(InputArray image, OutputArray labels, int connectivity, int ltype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_connectedComponents__0 <- function(image, connectivity = 8, ltype = CV_32S, dst = NULL) {
  .Call(`_ROpenCV_cv_connectedComponents__0`, image, connectivity, ltype, dst)
}

#' @title connectedComponents
#' @description ROpenCV 绑定。C++ 签名：<code>int connectedComponents(InputArray image, OutputArray labels, int connectivity, int ltype, int ccltype)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_connectedComponents__1 <- function(image, connectivity, ltype, ccltype, dst = NULL) {
  .Call(`_ROpenCV_cv_connectedComponents__1`, image, connectivity, ltype, ccltype, dst)
}

# cv_connectedComponents
#' @rdname cv_connectedComponents
#' @export
cv_connectedComponents <- local({
  .sigs <- list(
    list(f = .ropecv_cv_connectedComponents__0, p = c(image = "mat", connectivity = "int", ltype = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE, FALSE), s = "image, connectivity = 8, ltype = CV_32S, dst = NULL"),
    list(f = .ropecv_cv_connectedComponents__1, p = c(image = "mat", connectivity = "int", ltype = "int", ccltype = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE), s = "image, connectivity, ltype, ccltype, dst = NULL")
  )
  function(...) .ropecv_pick("cv_connectedComponents", .sigs, list(...))
})

#' @title connectedComponentsWithStats
#' @description ROpenCV 绑定。C++ 签名：<code>int connectedComponentsWithStats(InputArray image, OutputArray labels, OutputArray stats, OutputArray centroids, int connectivity, int ltype)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_connectedComponentsWithStats__0 <- function(image, connectivity = 8, ltype = CV_32S, labels = NULL, stats = NULL, centroids = NULL) {
  .Call(`_ROpenCV_cv_connectedComponentsWithStats__0`, image, connectivity, ltype, labels, stats, centroids)
}

#' @title connectedComponentsWithStats
#' @description ROpenCV 绑定。C++ 签名：<code>int connectedComponentsWithStats(InputArray image, OutputArray labels, OutputArray stats, OutputArray centroids, int connectivity, int ltype, int ccltype)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_connectedComponentsWithStats__1 <- function(image, connectivity, ltype, ccltype, labels = NULL, stats = NULL, centroids = NULL) {
  .Call(`_ROpenCV_cv_connectedComponentsWithStats__1`, image, connectivity, ltype, ccltype, labels, stats, centroids)
}

# cv_connectedComponentsWithStats
#' @rdname cv_connectedComponentsWithStats
#' @export
cv_connectedComponentsWithStats <- local({
  .sigs <- list(
    list(f = .ropecv_cv_connectedComponentsWithStats__0, p = c(image = "mat", connectivity = "int", ltype = "int", labels = "mat", stats = "mat", centroids = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "image, connectivity = 8, ltype = CV_32S, labels = NULL, stats = NULL, centroids = NULL"),
    list(f = .ropecv_cv_connectedComponentsWithStats__1, p = c(image = "mat", connectivity = "int", ltype = "int", ccltype = "int", labels = "mat", stats = "mat", centroids = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "image, connectivity, ltype, ccltype, labels = NULL, stats = NULL, centroids = NULL")
  )
  function(...) .ropecv_pick("cv_connectedComponentsWithStats", .sigs, list(...))
})

#' @title contourArea
#' @description ROpenCV 绑定。C++ 签名：<code>double contourArea(InputArray contour, bool oriented)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_contourArea <- function(contour, oriented = FALSE) {
  .Call(`_ROpenCV_cv_contourArea`, contour, oriented)
}

#' @title convertMaps
#' @description ROpenCV 绑定。C++ 签名：<code>void convertMaps(InputArray map1, InputArray map2, OutputArray dstmap1, OutputArray dstmap2, int dstmap1type, bool nninterpolation)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_convertMaps <- function(map1, map2, dstmap1type, nninterpolation = FALSE, dstmap1 = NULL, dstmap2 = NULL) {
  .Call(`_ROpenCV_cv_convertMaps`, map1, map2, dstmap1type, nninterpolation, dstmap1, dstmap2)
}

#' @title convexHull
#' @description ROpenCV 绑定。C++ 签名：<code>void convexHull(InputArray points, OutputArray hull, bool clockwise, bool returnPoints)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_convexHull <- function(points, clockwise = FALSE, returnPoints = TRUE, dst = NULL) {
  .Call(`_ROpenCV_cv_convexHull`, points, clockwise, returnPoints, dst)
}

#' @title convexityDefects
#' @description ROpenCV 绑定。C++ 签名：<code>void convexityDefects(InputArray contour, InputArray convexhull, OutputArray convexityDefects)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_convexityDefects <- function(contour, convexhull, dst = NULL) {
  .Call(`_ROpenCV_cv_convexityDefects`, contour, convexhull, dst)
}

#' @title cornerEigenValsAndVecs
#' @description ROpenCV 绑定。C++ 签名：<code>void cornerEigenValsAndVecs(InputArray src, OutputArray dst, int blockSize, int ksize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_cornerEigenValsAndVecs <- function(src, blockSize, ksize, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_cornerEigenValsAndVecs`, src, blockSize, ksize, borderType, dst)
}

#' @title cornerHarris
#' @description ROpenCV 绑定。C++ 签名：<code>void cornerHarris(InputArray src, OutputArray dst, int blockSize, int ksize, double k, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_cornerHarris <- function(src, blockSize, ksize, k, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_cornerHarris`, src, blockSize, ksize, k, borderType, dst)
}

#' @title cornerMinEigenVal
#' @description ROpenCV 绑定。C++ 签名：<code>void cornerMinEigenVal(InputArray src, OutputArray dst, int blockSize, int ksize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_cornerMinEigenVal <- function(src, blockSize, ksize = 3, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_cornerMinEigenVal`, src, blockSize, ksize, borderType, dst)
}

#' @title cornerSubPix
#' @description ROpenCV 绑定。C++ 签名：<code>void cornerSubPix(InputArray image, InputOutputArray corners, Size winSize, Size zeroZone, TermCriteria criteria)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>corners</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_cornerSubPix <- function(image, corners = NULL, winSize, zeroZone, criteria) {
  .Call(`_ROpenCV_cv_cornerSubPix`, image, corners, winSize, zeroZone, criteria)
}

#' @title createCLAHE
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;CLAHE&gt; createCLAHE(double clipLimit, Size tileGridSize)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createCLAHE <- function(clipLimit = 40.0, tileGridSize = c(8, 8)) {
  .Call(`_ROpenCV_cv_createCLAHE`, clipLimit, tileGridSize)
}

#' @title createGeneralizedHoughBallard
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;GeneralizedHoughBallard&gt; createGeneralizedHoughBallard()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createGeneralizedHoughBallard <- function() {
  .Call(`_ROpenCV_cv_createGeneralizedHoughBallard`)
}

#' @title createGeneralizedHoughGuil
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;GeneralizedHoughGuil&gt; createGeneralizedHoughGuil()</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createGeneralizedHoughGuil <- function() {
  .Call(`_ROpenCV_cv_createGeneralizedHoughGuil`)
}

#' @title createHanningWindow
#' @description ROpenCV 绑定。C++ 签名：<code>void createHanningWindow(OutputArray dst, Size winSize, int type)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_createHanningWindow <- function(dst = NULL, winSize, type) {
  .Call(`_ROpenCV_cv_createHanningWindow`, dst, winSize, type)
}

#' @title createLineSegmentDetector
#' @description ROpenCV 绑定。C++ 签名：<code>Ptr&lt;LineSegmentDetector&gt; createLineSegmentDetector(LineSegmentDetectorModes refine, double scale, double sigma_scale, double quant, double ang_th, double log_eps, double density_th, int n_bins)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_createLineSegmentDetector <- function(refine = LSD_REFINE_STD, scale = 0.8, sigma_scale = 0.6, quant = 2.0, ang_th = 22.5, log_eps = 0, density_th = 0.7, n_bins = 1024) {
  .Call(`_ROpenCV_cv_createLineSegmentDetector`, refine, scale, sigma_scale, quant, ang_th, log_eps, density_th, n_bins)
}

#' @title cvtColor
#' @description ROpenCV 绑定。C++ 签名：<code>void cvtColor(InputArray src, OutputArray dst, int code, int dstCn, AlgorithmHint hint)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_cvtColor <- function(src, code, dstCn = 0, hint = ALGO_HINT_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_cvtColor`, src, code, dstCn, hint, dst)
}

#' @title cvtColorTwoPlane
#' @description ROpenCV 绑定。C++ 签名：<code>void cvtColorTwoPlane(InputArray src1, InputArray src2, OutputArray dst, int code, AlgorithmHint hint)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_cvtColorTwoPlane <- function(src1, src2, code, hint = ALGO_HINT_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_cvtColorTwoPlane`, src1, src2, code, hint, dst)
}

#' @title demosaicing
#' @description ROpenCV 绑定。C++ 签名：<code>void demosaicing(InputArray src, OutputArray dst, int code, int dstCn)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_demosaicing <- function(src, code, dstCn = 0, dst = NULL) {
  .Call(`_ROpenCV_cv_demosaicing`, src, code, dstCn, dst)
}

#' @title dilate
#' @description ROpenCV 绑定。C++ 签名：<code>void dilate(InputArray src, OutputArray dst, InputArray kernel, Point anchor, int iterations, int borderType, const Scalar&amp; borderValue)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_dilate <- function(src, kernel, anchor = c(-1, -1), iterations = 1, borderType = BORDER_CONSTANT, borderValue = c(Inf, Inf, Inf, Inf), dst = NULL) {
  .Call(`_ROpenCV_cv_dilate`, src, kernel, anchor, iterations, borderType, borderValue, dst)
}

#' @title distanceTransform
#' @description ROpenCV 绑定。C++ 签名：<code>void distanceTransform(InputArray src, OutputArray dst, int distanceType, int maskSize, int dstType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_distanceTransform__0 <- function(src, distanceType, maskSize, dstType = CV_32F, dst = NULL) {
  .Call(`_ROpenCV_cv_distanceTransform__0`, src, distanceType, maskSize, dstType, dst)
}

#' @title distanceTransform
#' @description ROpenCV 绑定。C++ 签名：<code>void distanceTransform(InputArray src, OutputArray dst, OutputArray labels, int distanceType, int maskSize, int labelType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_distanceTransform__1 <- function(src, distanceType, maskSize, labelType = DIST_LABEL_CCOMP, dst = NULL, labels = NULL) {
  .Call(`_ROpenCV_cv_distanceTransform__1`, src, distanceType, maskSize, labelType, dst, labels)
}

# cv_distanceTransform
#' @rdname cv_distanceTransform
#' @export
cv_distanceTransform <- local({
  .sigs <- list(
    list(f = .ropecv_cv_distanceTransform__0, p = c(src = "mat", distanceType = "int", maskSize = "int", dstType = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE), s = "src, distanceType, maskSize, dstType = CV_32F, dst = NULL"),
    list(f = .ropecv_cv_distanceTransform__1, p = c(src = "mat", distanceType = "int", maskSize = "int", labelType = "int", dst = "mat", labels = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "src, distanceType, maskSize, labelType = DIST_LABEL_CCOMP, dst = NULL, labels = NULL")
  )
  function(...) .ropecv_pick("cv_distanceTransform", .sigs, list(...))
})

#' @title divSpectrums
#' @description ROpenCV 绑定。C++ 签名：<code>void divSpectrums(InputArray a, InputArray b, OutputArray c, int flags, bool conjB)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_divSpectrums <- function(a, b, flags, conjB = FALSE, dst = NULL) {
  .Call(`_ROpenCV_cv_divSpectrums`, a, b, flags, conjB, dst)
}

#' @title drawContours
#' @description ROpenCV 绑定。C++ 签名：<code>void drawContours(InputOutputArray image, InputArrayOfArrays contours, int contourIdx, const Scalar&amp; color, int thickness, int lineType, InputArray hierarchy, int maxLevel, Point offset)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>image</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawContours <- function(image = NULL, contours, contourIdx, color, thickness = 1, lineType = LINE_8, hierarchy = NULL, maxLevel = 2147483647L, offset = NULL) {
  .Call(`_ROpenCV_cv_drawContours`, image, contours, contourIdx, color, thickness, lineType, hierarchy, maxLevel, offset)
}

#' @title drawMarker
#' @description ROpenCV 绑定。C++ 签名：<code>void drawMarker(InputOutputArray img, Point position, const Scalar&amp; color, int markerType, int markerSize, int thickness, int line_type)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_drawMarker <- function(img = NULL, position, color, markerType = MARKER_CROSS, markerSize = 20, thickness = 1, line_type = 8) {
  .Call(`_ROpenCV_cv_drawMarker`, img, position, color, markerType, markerSize, thickness, line_type)
}

#' @title ellipse
#' @description ROpenCV 绑定。C++ 签名：<code>void ellipse(InputOutputArray img, const RotatedRect&amp; box, const Scalar&amp; color, int thickness, int lineType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_ellipse__0 <- function(img = NULL, box, color, thickness = 1, lineType = LINE_8) {
  .Call(`_ROpenCV_cv_ellipse__0`, img, box, color, thickness, lineType)
}

#' @title ellipse
#' @description ROpenCV 绑定。C++ 签名：<code>void ellipse(InputOutputArray img, Point center, Size axes, double angle, double startAngle, double endAngle, const Scalar&amp; color, int thickness, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_ellipse__1 <- function(img = NULL, center, axes, angle, startAngle, endAngle, color, thickness = 1, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_ellipse__1`, img, center, axes, angle, startAngle, endAngle, color, thickness, lineType, shift)
}

# cv_ellipse
#' @rdname cv_ellipse
#' @export
cv_ellipse <- local({
  .sigs <- list(
    list(f = .ropecv_cv_ellipse__0, p = c(img = "mat", box = "rr", color = "scalar", thickness = "int", lineType = "int"), r = c(FALSE, TRUE, TRUE, FALSE, FALSE), s = "img = NULL, box, color, thickness = 1, lineType = LINE_8"),
    list(f = .ropecv_cv_ellipse__1, p = c(img = "mat", center = "pt", axes = "size", angle = "dbl", startAngle = "dbl", endAngle = "dbl", color = "scalar", thickness = "int", lineType = "int", shift = "int"), r = c(FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img = NULL, center, axes, angle, startAngle, endAngle, color, thickness = 1, lineType = LINE_8, shift = 0")
  )
  function(...) .ropecv_pick("cv_ellipse", .sigs, list(...))
})

#' @title ellipse2Poly
#' @description ROpenCV 绑定。C++ 签名：<code>void ellipse2Poly(Point center, Size axes, int angle, int arcStart, int arcEnd, int delta, std::vector&lt;Point&gt;&amp; pts)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_ellipse2Poly <- function(center, axes, angle, arcStart, arcEnd, delta) {
  .Call(`_ROpenCV_cv_ellipse2Poly`, center, axes, angle, arcStart, arcEnd, delta)
}

#' @title equalizeHist
#' @description ROpenCV 绑定。C++ 签名：<code>void equalizeHist(InputArray src, OutputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_equalizeHist <- function(src, dst = NULL) {
  .Call(`_ROpenCV_cv_equalizeHist`, src, dst)
}

#' @title erode
#' @description ROpenCV 绑定。C++ 签名：<code>void erode(InputArray src, OutputArray dst, InputArray kernel, Point anchor, int iterations, int borderType, const Scalar&amp; borderValue)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_erode <- function(src, kernel, anchor = c(-1, -1), iterations = 1, borderType = BORDER_CONSTANT, borderValue = c(Inf, Inf, Inf, Inf), dst = NULL) {
  .Call(`_ROpenCV_cv_erode`, src, kernel, anchor, iterations, borderType, borderValue, dst)
}

#' @title fillConvexPoly
#' @description ROpenCV 绑定。C++ 签名：<code>void fillConvexPoly(InputOutputArray img, InputArray points, const Scalar&amp; color, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fillConvexPoly <- function(img = NULL, points, color, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_fillConvexPoly`, img, points, color, lineType, shift)
}

#' @title fillPoly
#' @description ROpenCV 绑定。C++ 签名：<code>void fillPoly(InputOutputArray img, InputArrayOfArrays pts, const Scalar&amp; color, int lineType, int shift, Point offset)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fillPoly <- function(img = NULL, pts, color, lineType = LINE_8, shift = 0, offset = NULL) {
  .Call(`_ROpenCV_cv_fillPoly`, img, pts, color, lineType, shift, offset)
}

#' @title filter2D
#' @description ROpenCV 绑定。C++ 签名：<code>void filter2D(InputArray src, OutputArray dst, InputArray kernel, const Filter2DParams&amp; params)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_filter2D__0 <- function(src, kernel, params = list(), dst = NULL) {
  .Call(`_ROpenCV_cv_filter2D__0`, src, kernel, params, dst)
}

#' @title filter2D
#' @description ROpenCV 绑定。C++ 签名：<code>void filter2D(InputArray src, OutputArray dst, int ddepth, InputArray kernel, Point anchor, double delta, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_filter2D__1 <- function(src, ddepth, kernel, anchor = c(-1, -1), delta = 0, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_filter2D__1`, src, ddepth, kernel, anchor, delta, borderType, dst)
}

# cv_filter2D
#' @rdname cv_filter2D
#' @export
cv_filter2D <- local({
  .sigs <- list(
    list(f = .ropecv_cv_filter2D__0, p = c(src = "mat", kernel = "mat", params = "lst", dst = "mat"), r = c(TRUE, TRUE, FALSE, FALSE), s = "src, kernel, params = list(), dst = NULL"),
    list(f = .ropecv_cv_filter2D__1, p = c(src = "mat", ddepth = "int", kernel = "mat", anchor = "pt", delta = "dbl", borderType = "int", dst = "mat"), r = c(TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE), s = "src, ddepth, kernel, anchor = c(-1, -1), delta = 0, borderType = BORDER_DEFAULT, dst = NULL")
  )
  function(...) .ropecv_pick("cv_filter2D", .sigs, list(...))
})

#' @title findContours
#' @description ROpenCV 绑定。C++ 签名：<code>void findContours(InputArray image, OutputArrayOfArrays contours, OutputArray hierarchy, int mode, int method, Point offset)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_findContours <- function(image, mode, method, offset = NULL, contours = NULL, hierarchy = NULL) {
  .Call(`_ROpenCV_cv_findContours`, image, mode, method, offset, contours, hierarchy)
}

#' @title findContoursLinkRuns
#' @description ROpenCV 绑定。C++ 签名：<code>void findContoursLinkRuns(InputArray image, OutputArrayOfArrays contours)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_findContoursLinkRuns__0 <- function(image, contours = NULL) {
  .Call(`_ROpenCV_cv_findContoursLinkRuns__0`, image, contours)
}

#' @title findContoursLinkRuns
#' @description ROpenCV 绑定。C++ 签名：<code>void findContoursLinkRuns(InputArray image, OutputArrayOfArrays contours, OutputArray hierarchy)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_findContoursLinkRuns__1 <- function(image, contours = NULL, hierarchy = NULL) {
  .Call(`_ROpenCV_cv_findContoursLinkRuns__1`, image, contours, hierarchy)
}

# cv_findContoursLinkRuns
#' @rdname cv_findContoursLinkRuns
#' @export
cv_findContoursLinkRuns <- local({
  .sigs <- list(
    list(f = .ropecv_cv_findContoursLinkRuns__0, p = c(image = "mat", contours = "lst"), r = c(TRUE, FALSE), s = "image, contours = NULL"),
    list(f = .ropecv_cv_findContoursLinkRuns__1, p = c(image = "mat", contours = "lst", hierarchy = "mat"), r = c(TRUE, FALSE, FALSE), s = "image, contours = NULL, hierarchy = NULL")
  )
  function(...) .ropecv_pick("cv_findContoursLinkRuns", .sigs, list(...))
})

#' @title fitEllipse
#' @description ROpenCV 绑定。C++ 签名：<code>RotatedRect fitEllipse(InputArray points)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fitEllipse <- function(points) {
  .Call(`_ROpenCV_cv_fitEllipse`, points)
}

#' @title fitEllipseAMS
#' @description ROpenCV 绑定。C++ 签名：<code>RotatedRect fitEllipseAMS(InputArray points)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fitEllipseAMS <- function(points) {
  .Call(`_ROpenCV_cv_fitEllipseAMS`, points)
}

#' @title fitEllipseDirect
#' @description ROpenCV 绑定。C++ 签名：<code>RotatedRect fitEllipseDirect(InputArray points)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_fitEllipseDirect <- function(points) {
  .Call(`_ROpenCV_cv_fitEllipseDirect`, points)
}

#' @title fitLine
#' @description ROpenCV 绑定。C++ 签名：<code>void fitLine(InputArray points, OutputArray line, int distType, double param, double reps, double aeps)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_fitLine <- function(points, distType, param, reps, aeps, dst = NULL) {
  .Call(`_ROpenCV_cv_fitLine`, points, distType, param, reps, aeps, dst)
}

#' @title floodFill
#' @description ROpenCV 绑定。C++ 签名：<code>int floodFill(InputOutputArray image, InputOutputArray mask, Point seedPoint, Scalar newVal, Rect* rect, Scalar loDiff, Scalar upDiff, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_floodFill <- function(image = NULL, mask = NULL, seedPoint, newVal, loDiff = NULL, upDiff = NULL, flags = 4) {
  .Call(`_ROpenCV_cv_floodFill`, image, mask, seedPoint, newVal, loDiff, upDiff, flags)
}

#' @title getAffineTransform
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getAffineTransform(InputArray src, InputArray dst)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getAffineTransform <- function(src, dst) {
  .Call(`_ROpenCV_cv_getAffineTransform`, src, dst)
}

#' @title getDerivKernels
#' @description ROpenCV 绑定。C++ 签名：<code>void getDerivKernels(OutputArray kx, OutputArray ky, int dx, int dy, int ksize, bool normalize, int ktype)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getDerivKernels <- function(dx, dy, ksize, normalize = FALSE, ktype = CV_32F, kx = NULL, ky = NULL) {
  .Call(`_ROpenCV_cv_getDerivKernels`, dx, dy, ksize, normalize, ktype, kx, ky)
}

#' @title getFontScaleFromHeight
#' @description ROpenCV 绑定。C++ 签名：<code>double getFontScaleFromHeight(const int fontFace, const int pixelHeight, const int thickness)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_getFontScaleFromHeight <- function(fontFace, pixelHeight, thickness = 1) {
  .Call(`_ROpenCV_cv_getFontScaleFromHeight`, fontFace, pixelHeight, thickness)
}

#' @title getGaborKernel
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getGaborKernel(Size ksize, double sigma, double theta, double lambd, double gamma, double psi, int ktype)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getGaborKernel <- function(ksize, sigma, theta, lambd, gamma, psi, ktype = CV_64F) {
  .Call(`_ROpenCV_cv_getGaborKernel`, ksize, sigma, theta, lambd, gamma, psi, ktype)
}

#' @title getGaussianKernel
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getGaussianKernel(int ksize, double sigma, int ktype)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getGaussianKernel <- function(ksize, sigma, ktype = CV_64F) {
  .Call(`_ROpenCV_cv_getGaussianKernel`, ksize, sigma, ktype)
}

#' @title getPerspectiveTransform
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getPerspectiveTransform(InputArray src, InputArray dst, int solveMethod)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getPerspectiveTransform <- function(src, dst, solveMethod = DECOMP_LU) {
  .Call(`_ROpenCV_cv_getPerspectiveTransform`, src, dst, solveMethod)
}

#' @title getRectSubPix
#' @description ROpenCV 绑定。C++ 签名：<code>void getRectSubPix(InputArray image, Size patchSize, Point2f center, OutputArray patch, int patchType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_getRectSubPix <- function(image, patchSize, center, patchType = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_getRectSubPix`, image, patchSize, center, patchType, dst)
}

#' @title getRotationMatrix2D
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getRotationMatrix2D(Point2f center, double angle, double scale)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getRotationMatrix2D <- function(center, angle, scale) {
  .Call(`_ROpenCV_cv_getRotationMatrix2D`, center, angle, scale)
}

#' @title getStructuringElement
#' @description ROpenCV 绑定。C++ 签名：<code>Mat getStructuringElement(int shape, Size ksize, Point anchor)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 返回的图像；其余输出参数挂成同名属性（<code>attr(x, "名字")</code>）。
#' @export
cv_getStructuringElement <- function(shape, ksize, anchor = c(-1, -1)) {
  .Call(`_ROpenCV_cv_getStructuringElement`, shape, ksize, anchor)
}

#' @title getTextSize
#' @description ROpenCV 绑定。C++ 签名：<code>Size getTextSize(const String&amp; text, int fontFace, double fontScale, int thickness, int* baseLine)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_getTextSize__0 <- function(text, fontFace, fontScale, thickness) {
  .Call(`_ROpenCV_cv_getTextSize__0`, text, fontFace, fontScale, thickness)
}

#' @title getTextSize
#' @description ROpenCV 绑定。C++ 签名：<code>Rect getTextSize(Size imgsize, const String&amp; text, Point org, FontFace&amp; fface, int size, int weight, PutTextFlags flags, Range wrap)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_getTextSize__1 <- function(imgsize, text, org, fface, size, weight = 0, flags = PUT_TEXT_ALIGN_LEFT, wrap) {
  .Call(`_ROpenCV_cv_getTextSize__1`, imgsize, text, org, fface, size, weight, flags, wrap)
}

# cv_getTextSize
#' @rdname cv_getTextSize
#' @export
cv_getTextSize <- local({
  .sigs <- list(
    list(f = .ropecv_cv_getTextSize__0, p = c(text = "chr", fontFace = "int", fontScale = "dbl", thickness = "int"), r = c(TRUE, TRUE, TRUE, TRUE), s = "text, fontFace, fontScale, thickness"),
    list(f = .ropecv_cv_getTextSize__1, p = c(imgsize = "size", text = "chr", org = "pt", fface = "any", size = "int", weight = "int", flags = "any", wrap = "rng"), r = c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE), s = "imgsize, text, org, fface, size, weight = 0, flags = PUT_TEXT_ALIGN_LEFT, wrap")
  )
  function(...) .ropecv_pick("cv_getTextSize", .sigs, list(...))
})

#' @title goodFeaturesToTrack
#' @description ROpenCV 绑定。C++ 签名：<code>void goodFeaturesToTrack(InputArray image, OutputArray corners, int maxCorners, double qualityLevel, double minDistance, InputArray mask, int blockSize, bool useHarrisDetector, double k)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_goodFeaturesToTrack__0 <- function(image, maxCorners, qualityLevel, minDistance, mask = NULL, blockSize = 3, useHarrisDetector = FALSE, k = 0.04, dst = NULL) {
  .Call(`_ROpenCV_cv_goodFeaturesToTrack__0`, image, maxCorners, qualityLevel, minDistance, mask, blockSize, useHarrisDetector, k, dst)
}

#' @title goodFeaturesToTrack
#' @description ROpenCV 绑定。C++ 签名：<code>void goodFeaturesToTrack(InputArray image, OutputArray corners, int maxCorners, double qualityLevel, double minDistance, InputArray mask, int blockSize, int gradientSize, bool useHarrisDetector, double k)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_goodFeaturesToTrack__1 <- function(image, maxCorners, qualityLevel, minDistance, mask = NULL, blockSize, gradientSize, useHarrisDetector = FALSE, k = 0.04, dst = NULL) {
  .Call(`_ROpenCV_cv_goodFeaturesToTrack__1`, image, maxCorners, qualityLevel, minDistance, mask, blockSize, gradientSize, useHarrisDetector, k, dst)
}

# cv_goodFeaturesToTrack
#' @rdname cv_goodFeaturesToTrack
#' @export
cv_goodFeaturesToTrack <- local({
  .sigs <- list(
    list(f = .ropecv_cv_goodFeaturesToTrack__0, p = c(image = "mat", maxCorners = "int", qualityLevel = "dbl", minDistance = "dbl", mask = "mat", blockSize = "int", useHarrisDetector = "lgl", k = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "image, maxCorners, qualityLevel, minDistance, mask = NULL, blockSize = 3, useHarrisDetector = FALSE, k = 0.04, dst = NULL"),
    list(f = .ropecv_cv_goodFeaturesToTrack__1, p = c(image = "mat", maxCorners = "int", qualityLevel = "dbl", minDistance = "dbl", mask = "mat", blockSize = "int", gradientSize = "int", useHarrisDetector = "lgl", k = "dbl", dst = "mat"), r = c(TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "image, maxCorners, qualityLevel, minDistance, mask = NULL, blockSize, gradientSize, useHarrisDetector = FALSE, k = 0.04, dst = NULL")
  )
  function(...) .ropecv_pick("cv_goodFeaturesToTrack", .sigs, list(...))
})

#' @title grabCut
#' @description ROpenCV 绑定。C++ 签名：<code>void grabCut(InputArray img, InputOutputArray mask, Rect rect, InputOutputArray bgdModel, InputOutputArray fgdModel, int iterCount, int mode)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_grabCut <- function(img, mask = NULL, rect, bgdModel = NULL, fgdModel = NULL, iterCount, mode = GC_EVAL) {
  .Call(`_ROpenCV_cv_grabCut`, img, mask, rect, bgdModel, fgdModel, iterCount, mode)
}

#' @title integral
#' @description ROpenCV 绑定。C++ 签名：<code>void integral(InputArray src, OutputArray sum, int sdepth)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_integral__0 <- function(src, sdepth = -1, dst = NULL) {
  .Call(`_ROpenCV_cv_integral__0`, src, sdepth, dst)
}

#' @title integral
#' @description ROpenCV 绑定。C++ 签名：<code>void integral(InputArray src, OutputArray sum, OutputArray sqsum, int sdepth, int sqdepth)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_integral__1 <- function(src, sdepth = -1, sqdepth = -1, sum = NULL, sqsum = NULL) {
  .Call(`_ROpenCV_cv_integral__1`, src, sdepth, sqdepth, sum, sqsum)
}

#' @title integral
#' @description ROpenCV 绑定。C++ 签名：<code>void integral(InputArray src, OutputArray sum, OutputArray sqsum, OutputArray tilted, int sdepth, int sqdepth)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
.ropecv_cv_integral__2 <- function(src, sdepth = -1, sqdepth = -1, sum = NULL, sqsum = NULL, tilted = NULL) {
  .Call(`_ROpenCV_cv_integral__2`, src, sdepth, sqdepth, sum, sqsum, tilted)
}

# cv_integral
#' @rdname cv_integral
#' @export
cv_integral <- local({
  .sigs <- list(
    list(f = .ropecv_cv_integral__0, p = c(src = "mat", sdepth = "int", dst = "mat"), r = c(TRUE, FALSE, FALSE), s = "src, sdepth = -1, dst = NULL"),
    list(f = .ropecv_cv_integral__1, p = c(src = "mat", sdepth = "int", sqdepth = "int", sum = "mat", sqsum = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE), s = "src, sdepth = -1, sqdepth = -1, sum = NULL, sqsum = NULL"),
    list(f = .ropecv_cv_integral__2, p = c(src = "mat", sdepth = "int", sqdepth = "int", sum = "mat", sqsum = "mat", tilted = "mat"), r = c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), s = "src, sdepth = -1, sqdepth = -1, sum = NULL, sqsum = NULL, tilted = NULL")
  )
  function(...) .ropecv_pick("cv_integral", .sigs, list(...))
})

#' @title intersectConvexConvex
#' @description ROpenCV 绑定。C++ 签名：<code>float intersectConvexConvex(InputArray p1, InputArray p2, OutputArray p12, bool handleNested)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_intersectConvexConvex <- function(p1, p2, handleNested = TRUE, dst = NULL) {
  .Call(`_ROpenCV_cv_intersectConvexConvex`, p1, p2, handleNested, dst)
}

#' @title invertAffineTransform
#' @description ROpenCV 绑定。C++ 签名：<code>void invertAffineTransform(InputArray M, OutputArray iM)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_invertAffineTransform <- function(M, dst = NULL) {
  .Call(`_ROpenCV_cv_invertAffineTransform`, M, dst)
}

#' @title isContourConvex
#' @description ROpenCV 绑定。C++ 签名：<code>bool isContourConvex(InputArray contour)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_isContourConvex <- function(contour) {
  .Call(`_ROpenCV_cv_isContourConvex`, contour)
}

#' @title line
#' @description ROpenCV 绑定。C++ 签名：<code>void line(InputOutputArray img, Point pt1, Point pt2, const Scalar&amp; color, int thickness, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_line <- function(img = NULL, pt1, pt2, color, thickness = 1, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_line`, img, pt1, pt2, color, thickness, lineType, shift)
}

#' @title linearPolar
#' @description ROpenCV 绑定。C++ 签名：<code>void linearPolar(InputArray src, OutputArray dst, Point2f center, double maxRadius, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_linearPolar <- function(src, center, maxRadius, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_linearPolar`, src, center, maxRadius, flags, dst)
}

#' @title logPolar
#' @description ROpenCV 绑定。C++ 签名：<code>void logPolar(InputArray src, OutputArray dst, Point2f center, double M, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_logPolar <- function(src, center, M, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_logPolar`, src, center, M, flags, dst)
}

#' @title matchShapes
#' @description ROpenCV 绑定。C++ 签名：<code>double matchShapes(InputArray contour1, InputArray contour2, int method, double parameter)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_matchShapes <- function(contour1, contour2, method, parameter) {
  .Call(`_ROpenCV_cv_matchShapes`, contour1, contour2, method, parameter)
}

#' @title matchTemplate
#' @description ROpenCV 绑定。C++ 签名：<code>void matchTemplate(InputArray image, InputArray templ, OutputArray result, int method, InputArray mask)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_matchTemplate <- function(image, templ, method, mask = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_matchTemplate`, image, templ, method, mask, dst)
}

#' @title medianBlur
#' @description ROpenCV 绑定。C++ 签名：<code>void medianBlur(InputArray src, OutputArray dst, int ksize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_medianBlur <- function(src, ksize, dst = NULL) {
  .Call(`_ROpenCV_cv_medianBlur`, src, ksize, dst)
}

#' @title minAreaRect
#' @description ROpenCV 绑定。C++ 签名：<code>RotatedRect minAreaRect(InputArray points)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_minAreaRect <- function(points) {
  .Call(`_ROpenCV_cv_minAreaRect`, points)
}

#' @title minEnclosingCircle
#' @description ROpenCV 绑定。C++ 签名：<code>void minEnclosingCircle(InputArray points, Point2f&amp; center, float&amp; radius)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_minEnclosingCircle <- function(points) {
  .Call(`_ROpenCV_cv_minEnclosingCircle`, points)
}

#' @title minEnclosingTriangle
#' @description ROpenCV 绑定。C++ 签名：<code>double minEnclosingTriangle(InputArray points, OutputArray triangle)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_minEnclosingTriangle <- function(points, dst = NULL) {
  .Call(`_ROpenCV_cv_minEnclosingTriangle`, points, dst)
}

#' @title moments
#' @description ROpenCV 绑定。C++ 签名：<code>Moments moments(InputArray array, bool binaryImage)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_moments <- function(array, binaryImage = FALSE) {
  .Call(`_ROpenCV_cv_moments`, array, binaryImage)
}

#' @title morphologyEx
#' @description ROpenCV 绑定。C++ 签名：<code>void morphologyEx(InputArray src, OutputArray dst, int op, InputArray kernel, Point anchor, int iterations, int borderType, const Scalar&amp; borderValue)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_morphologyEx <- function(src, op, kernel, anchor = c(-1, -1), iterations = 1, borderType = BORDER_CONSTANT, borderValue = c(Inf, Inf, Inf, Inf), dst = NULL) {
  .Call(`_ROpenCV_cv_morphologyEx`, src, op, kernel, anchor, iterations, borderType, borderValue, dst)
}

#' @title phaseCorrelate
#' @description ROpenCV 绑定。C++ 签名：<code>Point2d phaseCorrelate(InputArray src1, InputArray src2, InputArray window, double* response)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_phaseCorrelate <- function(src1, src2, window = NULL) {
  .Call(`_ROpenCV_cv_phaseCorrelate`, src1, src2, window)
}

#' @title pointPolygonTest
#' @description ROpenCV 绑定。C++ 签名：<code>double pointPolygonTest(InputArray contour, Point2f pt, bool measureDist)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_pointPolygonTest <- function(contour, pt, measureDist) {
  .Call(`_ROpenCV_cv_pointPolygonTest`, contour, pt, measureDist)
}

#' @title polylines
#' @description ROpenCV 绑定。C++ 签名：<code>void polylines(InputOutputArray img, InputArrayOfArrays pts, bool isClosed, const Scalar&amp; color, int thickness, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_polylines <- function(img = NULL, pts, isClosed, color, thickness = 1, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_polylines`, img, pts, isClosed, color, thickness, lineType, shift)
}

#' @title preCornerDetect
#' @description ROpenCV 绑定。C++ 签名：<code>void preCornerDetect(InputArray src, OutputArray dst, int ksize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_preCornerDetect <- function(src, ksize, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_preCornerDetect`, src, ksize, borderType, dst)
}

#' @title putText
#' @description ROpenCV 绑定。C++ 签名：<code>void putText(InputOutputArray img, const String&amp; text, Point org, int fontFace, double fontScale, Scalar color, int thickness, int lineType, bool bottomLeftOrigin)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_putText__0 <- function(img = NULL, text, org, fontFace, fontScale, color, thickness = 1, lineType = LINE_8, bottomLeftOrigin = FALSE) {
  .Call(`_ROpenCV_cv_putText__0`, img, text, org, fontFace, fontScale, color, thickness, lineType, bottomLeftOrigin)
}

#' @title putText
#' @description ROpenCV 绑定。C++ 签名：<code>Point putText(InputOutputArray img, const String&amp; text, Point org, Scalar color, FontFace&amp; fface, int size, int weight, PutTextFlags flags, Range wrap)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_putText__1 <- function(img = NULL, text, org, color, fface, size, weight = 0, flags = PUT_TEXT_ALIGN_LEFT, wrap) {
  .Call(`_ROpenCV_cv_putText__1`, img, text, org, color, fface, size, weight, flags, wrap)
}

# cv_putText
#' @rdname cv_putText
#' @export
cv_putText <- local({
  .sigs <- list(
    list(f = .ropecv_cv_putText__0, p = c(img = "mat", text = "chr", org = "pt", fontFace = "int", fontScale = "dbl", color = "scalar", thickness = "int", lineType = "int", bottomLeftOrigin = "lgl"), r = c(FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img = NULL, text, org, fontFace, fontScale, color, thickness = 1, lineType = LINE_8, bottomLeftOrigin = FALSE"),
    list(f = .ropecv_cv_putText__1, p = c(img = "mat", text = "chr", org = "pt", color = "scalar", fface = "any", size = "int", weight = "int", flags = "any", wrap = "rng"), r = c(FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE), s = "img = NULL, text, org, color, fface, size, weight = 0, flags = PUT_TEXT_ALIGN_LEFT, wrap")
  )
  function(...) .ropecv_pick("cv_putText", .sigs, list(...))
})

#' @title pyrDown
#' @description ROpenCV 绑定。C++ 签名：<code>void pyrDown(InputArray src, OutputArray dst, const Size&amp; dstsize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_pyrDown <- function(src, dstsize = NULL, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_pyrDown`, src, dstsize, borderType, dst)
}

#' @title pyrMeanShiftFiltering
#' @description ROpenCV 绑定。C++ 签名：<code>void pyrMeanShiftFiltering(InputArray src, OutputArray dst, double sp, double sr, int maxLevel, TermCriteria termcrit)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_pyrMeanShiftFiltering <- function(src, sp, sr, maxLevel = 1, termcrit = c(6, 5, 1), dst = NULL) {
  .Call(`_ROpenCV_cv_pyrMeanShiftFiltering`, src, sp, sr, maxLevel, termcrit, dst)
}

#' @title pyrUp
#' @description ROpenCV 绑定。C++ 签名：<code>void pyrUp(InputArray src, OutputArray dst, const Size&amp; dstsize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_pyrUp <- function(src, dstsize = NULL, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_pyrUp`, src, dstsize, borderType, dst)
}

#' @title rectangle
#' @description ROpenCV 绑定。C++ 签名：<code>void rectangle(InputOutputArray img, Rect rec, const Scalar&amp; color, int thickness, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_rectangle__0 <- function(img = NULL, rec, color, thickness = 1, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_rectangle__0`, img, rec, color, thickness, lineType, shift)
}

#' @title rectangle
#' @description ROpenCV 绑定。C++ 签名：<code>void rectangle(InputOutputArray img, Point pt1, Point pt2, const Scalar&amp; color, int thickness, int lineType, int shift)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>img</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
.ropecv_cv_rectangle__1 <- function(img = NULL, pt1, pt2, color, thickness = 1, lineType = LINE_8, shift = 0) {
  .Call(`_ROpenCV_cv_rectangle__1`, img, pt1, pt2, color, thickness, lineType, shift)
}

# cv_rectangle
#' @rdname cv_rectangle
#' @export
cv_rectangle <- local({
  .sigs <- list(
    list(f = .ropecv_cv_rectangle__0, p = c(img = "mat", rec = "rect", color = "scalar", thickness = "int", lineType = "int", shift = "int"), r = c(FALSE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img = NULL, rec, color, thickness = 1, lineType = LINE_8, shift = 0"),
    list(f = .ropecv_cv_rectangle__1, p = c(img = "mat", pt1 = "pt", pt2 = "pt", color = "scalar", thickness = "int", lineType = "int", shift = "int"), r = c(FALSE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE), s = "img = NULL, pt1, pt2, color, thickness = 1, lineType = LINE_8, shift = 0")
  )
  function(...) .ropecv_pick("cv_rectangle", .sigs, list(...))
})

#' @title remap
#' @description ROpenCV 绑定。C++ 签名：<code>void remap(InputArray src, OutputArray dst, InputArray map1, InputArray map2, int interpolation, int borderMode, const Scalar&amp; borderValue)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_remap <- function(src, map1, map2, interpolation, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_remap`, src, map1, map2, interpolation, borderMode, borderValue, dst)
}

#' @title resize
#' @description ROpenCV 绑定。C++ 签名：<code>void resize(InputArray src, OutputArray dst, Size dsize, double fx, double fy, int interpolation)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_resize <- function(src, dsize, fx = 0, fy = 0, interpolation = INTER_LINEAR, dst = NULL) {
  .Call(`_ROpenCV_cv_resize`, src, dsize, fx, fy, interpolation, dst)
}

#' @title rotatedRectangleIntersection
#' @description ROpenCV 绑定。C++ 签名：<code>int rotatedRectangleIntersection(const RotatedRect&amp; rect1, const RotatedRect&amp; rect2, OutputArray intersectingRegion)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_rotatedRectangleIntersection <- function(rect1, rect2, dst = NULL) {
  .Call(`_ROpenCV_cv_rotatedRectangleIntersection`, rect1, rect2, dst)
}

#' @title sepFilter2D
#' @description ROpenCV 绑定。C++ 签名：<code>void sepFilter2D(InputArray src, OutputArray dst, int ddepth, InputArray kernelX, InputArray kernelY, Point anchor, double delta, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_sepFilter2D <- function(src, ddepth, kernelX, kernelY, anchor = c(-1, -1), delta = 0, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_sepFilter2D`, src, ddepth, kernelX, kernelY, anchor, delta, borderType, dst)
}

#' @title spatialGradient
#' @description ROpenCV 绑定。C++ 签名：<code>void spatialGradient(InputArray src, OutputArray dx, OutputArray dy, int ksize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#' @return 命名 list，包含 C++ 签名里的各个输出参数。
#' @export
cv_spatialGradient <- function(src, ksize = 3, borderType = BORDER_DEFAULT, dx = NULL, dy = NULL) {
  .Call(`_ROpenCV_cv_spatialGradient`, src, ksize, borderType, dx, dy)
}

#' @title sqrBoxFilter
#' @description ROpenCV 绑定。C++ 签名：<code>void sqrBoxFilter(InputArray src, OutputArray dst, int ddepth, Size ksize, Point anchor, bool normalize, int borderType)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_sqrBoxFilter <- function(src, ddepth, ksize, anchor = c(-1, -1), normalize = TRUE, borderType = BORDER_DEFAULT, dst = NULL) {
  .Call(`_ROpenCV_cv_sqrBoxFilter`, src, ddepth, ksize, anchor, normalize, borderType, dst)
}

#' @title stackBlur
#' @description ROpenCV 绑定。C++ 签名：<code>void stackBlur(InputArray src, OutputArray dst, Size ksize)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_stackBlur <- function(src, ksize, dst = NULL) {
  .Call(`_ROpenCV_cv_stackBlur`, src, ksize, dst)
}

#' @title threshold
#' @description ROpenCV 绑定。C++ 签名：<code>double threshold(InputArray src, OutputArray dst, double thresh, double maxval, int type)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_threshold <- function(src, thresh, maxval, type, dst = NULL) {
  .Call(`_ROpenCV_cv_threshold`, src, thresh, maxval, type, dst)
}

#' @title warpAffine
#' @description ROpenCV 绑定。C++ 签名：<code>void warpAffine(InputArray src, OutputArray dst, InputArray M, Size dsize, int flags, int borderMode, const Scalar&amp; borderValue)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_warpAffine <- function(src, M, dsize, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_warpAffine`, src, M, dsize, flags, borderMode, borderValue, dst)
}

#' @title warpPerspective
#' @description ROpenCV 绑定。C++ 签名：<code>void warpPerspective(InputArray src, OutputArray dst, InputArray M, Size dsize, int flags, int borderMode, const Scalar&amp; borderValue)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_warpPerspective <- function(src, M, dsize, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_warpPerspective`, src, M, dsize, flags, borderMode, borderValue, dst)
}

#' @title warpPolar
#' @description ROpenCV 绑定。C++ 签名：<code>void warpPolar(InputArray src, OutputArray dst, Size dsize, Point2f center, double maxRadius, int flags)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_warpPolar <- function(src, dsize, center, maxRadius, flags, dst = NULL) {
  .Call(`_ROpenCV_cv_warpPolar`, src, dsize, center, maxRadius, flags, dst)
}

#' @title watershed
#' @description ROpenCV 绑定。C++ 签名：<code>void watershed(InputArray image, InputOutputArray markers)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>markers</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_watershed <- function(image, markers = NULL) {
  .Call(`_ROpenCV_cv_watershed`, image, markers)
}

#' @title wrapperEMD
#' @description ROpenCV 绑定。C++ 签名：<code>float wrapperEMD(InputArray signature1, InputArray signature2, int distType, InputArray cost, Ptr&lt;float&gt; lowerBound, OutputArray flow)</code>
#' @param ... 参数含义见 C++ 签名。
#'   输出参数 <code>dst</code> 可省略：省略时新建并返回，提供时在原对象上填充并返回它。
#' @return 输出图像；若函数有标量返回值，挂在 <code>attr(x, "value")</code>。
#' @export
cv_wrapperEMD <- function(signature1, signature2, distType, cost = NULL, lowerBound = NULL, dst = NULL) {
  .Call(`_ROpenCV_cv_wrapperEMD`, signature1, signature2, distType, cost, lowerBound, dst)
}
