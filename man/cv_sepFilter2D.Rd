% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_sepFilter2D}
\alias{cv_sepFilter2D}
\title{Applies a separable linear filter to an image}
\usage{cv_sepFilter2D(src, ddepth, kernelX, kernelY, anchor = c(-1, -1), delta = 0,
    borderType = BORDER_DEFAULT, dst = NULL)}
\arguments{
\item{src}{Source image.}
\item{ddepth}{Destination image depth, see combinations}
\item{kernelX}{Coefficients for filtering each row.}
\item{kernelY}{Coefficients for filtering each column.}
\item{anchor}{Anchor position within the kernel. The default value means that the anchor is at the kernel center.}
\item{delta}{Value added to the filtered results before storing them.}
\item{borderType}{Pixel extrapolation method, see BorderTypes. BORDER_WRAP is not supported.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies a separable linear filter to an image.}
\details{
The function applies a separable linear filter to the image. That is, first, every row of src is filtered with the 1D kernel kernelX. Then, every column of the result is filtered with the 1D kernel kernelY. The final result shifted by delta is stored in dst .

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_filter2D}}、\code{\link{cv_Sobel}}、\code{\link{cv_GaussianBlur}}、\code{\link{cv_boxFilter}}、\code{\link{cv_blur}}}
\keyword{opencv}
