% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_jointBilateralFilter}
\alias{cv_jointBilateralFilter}
\title{Applies the joint bilateral filter to an image}
\usage{cv_jointBilateralFilter(joint, src, d, sigmaColor, sigmaSpace,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{joint}{Joint 8-bit or floating-point, 1-channel or 3-channel image.}
\item{src}{Source 8-bit or floating-point, 1-channel or 3-channel image with the same depth as joint image.}
\item{d}{Diameter of each pixel neighborhood that is used during filtering. If it is non-positive, it is computed from sigmaSpace .}
\item{sigmaColor}{Filter sigma in the color space. A larger value of the parameter means that farther colors within the pixel neighborhood (see sigmaSpace ) will be mixed together, resulting in larger areas of semi-equal color.}
\item{sigmaSpace}{Filter sigma in the coordinate space. A larger value of the parameter means that farther pixels will influence each other as long as their colors are close enough (see sigmaColor ). When d>0 , it specifies the neighborhood size regardless of sigmaSpace . Otherwise, d is proportional to sigmaSpace .}
\item{borderType}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies the joint bilateral filter to an image.}
\details{
\strong{注意：}bilateralFilter and jointBilateralFilter use L1 norm to compute difference between colors.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\seealso{\code{\link{cv_bilateralFilter}}、\code{\link{cv_amFilter}}}
\keyword{opencv}
