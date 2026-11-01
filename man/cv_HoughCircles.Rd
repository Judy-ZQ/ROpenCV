% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_HoughCircles}
\alias{cv_HoughCircles}
\title{Finds circles in a grayscale image using the Hough transform}
\usage{cv_HoughCircles(image, method, dp, minDist, param1 = 100, param2 = 100,
    minRadius = 0, maxRadius = 0, dst = NULL)}
\arguments{
\item{image}{8-bit, single-channel, grayscale input image.}
\item{method}{Detection method, see HoughModes. The available methods are HOUGH_GRADIENT and HOUGH_GRADIENT_ALT.}
\item{dp}{Inverse ratio of the accumulator resolution to the image resolution. For example, if dp=1 , the accumulator has the same resolution as the input image. If dp=2 , the accumulator has half as big width and height. For HOUGH_GRADIENT_ALT the recommended value is dp=1.5, unless some small very circles need to be detected.}
\item{minDist}{Minimum distance between the centers of the detected circles. If the parameter is too small, multiple neighbor circles may be falsely detected in addition to a true one. If it is too large, some circles may be missed.}
\item{param1}{First method-specific parameter. In case of HOUGH_GRADIENT and HOUGH_GRADIENT_ALT, it is the higher threshold of the two passed to the Canny edge detector (the lower one is twice smaller). Note that HOUGH_GRADIENT_ALT uses Scharr algorithm to compute image derivatives, so the threshold value should normally be higher, such as 300 or normally exposed and contrasty images.}
\item{param2}{Second method-specific parameter. In case of HOUGH_GRADIENT, it is the accumulator threshold for the circle centers at the detection stage. The smaller it is, the more false circles may be detected. Circles, corresponding to the larger accumulator values, will be returned first. In the case of HOUGH_GRADIENT_ALT algorithm, this is the circle "perfectness" measure. The closer it to 1, the better shaped circles algorithm selects. In most cases 0.9 should be fine. If you want get better detection of small circles, you may decrease it to 0.85, 0.8 or even less. But then also try to limit the search range [minRadius, maxRadius] to avoid many false circles.}
\item{minRadius}{Minimum circle radius.}
\item{maxRadius}{Maximum circle radius. If <= 0, uses the maximum image dimension. If < 0, HOUGH_GRADIENT returns centers without finding the radius. HOUGH_GRADIENT_ALT always computes circle radiuses.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds circles in a grayscale image using the Hough transform.}
\details{
The function finds circles in a grayscale image using a modification of the Hough transform.

Example: :

It also helps to smooth image a bit unless it's already soft. For example, GaussianBlur with 7x7 kernel and 1.5x1.5 sigma or similar blurring may help.

\strong{注意：}Usually the function detects the centers of circles well. However, it may fail to find correct radii. You can assist to the function by specifying the radius range ( minRadius and maxRadius ) if you know it. Or, in the case of HOUGH_GRADIENT method you may set maxRadius to a negative number to return centers only without radius search, and find the correct radius using an additional procedure.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_fitEllipse}}、\code{\link{cv_minEnclosingCircle}}}
\keyword{opencv}
