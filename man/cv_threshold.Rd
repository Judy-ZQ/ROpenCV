% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_threshold}
\alias{cv_threshold}
\title{Applies a fixed-level threshold to each array element}
\usage{cv_threshold(src, thresh, maxval, type, dst = NULL)}
\arguments{
\item{src}{input array (multiple-channel, 8-bit or 32-bit floating point).}
\item{thresh}{threshold value.}
\item{maxval}{maximum value to use with the THRESH_BINARY and THRESH_BINARY_INV thresholding types.}
\item{type}{thresholding type (see ThresholdTypes).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Applies a fixed-level threshold to each array element.}
\details{
The function applies fixed-level thresholding to a multiple-channel array. The function is typically used to get a bi-level (binary) image out of a grayscale image ( compare could be also used for this purpose) or for removing a noise, that is, filtering out pixels with too small or too large values. There are several types of thresholding supported by the function. They are determined by type parameter.

Also, the special values THRESH_OTSU or THRESH_TRIANGLE may be combined with one of the above values. In these cases, the function determines the optimal threshold value using the Otsu's or Triangle algorithm and uses it instead of the specified thresh.

\strong{注意：}Currently, the Otsu's and Triangle methods are implemented only for 8-bit single-channel images.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_adaptiveThreshold}}、\code{\link{cv_findContours}}、\code{\link{cv_compare}}、\code{\link{cv_min}}、\code{\link{cv_max}}}
\keyword{opencv}
