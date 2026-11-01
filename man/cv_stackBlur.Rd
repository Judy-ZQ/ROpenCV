% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_stackBlur}
\alias{cv_stackBlur}
\title{Blurs an image using the stackBlur}
\usage{cv_stackBlur(src, ksize, dst = NULL)}
\arguments{
\item{src}{input image. The number of channels can be arbitrary, but the depth should be one of CV_8U, CV_16U, CV_16S or CV_32F.}
\item{ksize}{stack-blurring kernel size. The ksize.width and ksize.height can differ but they both must be positive and odd.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Blurs an image using the stackBlur.}
\details{
The function applies and stackBlur to an image. stackBlur can generate similar results as Gaussian blur, and the time consumption does not increase with the increase of kernel size. It creates a kind of moving stack of colors whilst scanning through the image. Thereby it just has to add one new block of color to the right side of the stack and remove the leftmost color. The remaining colors on the topmost layer of the stack are either added on or reduced by one, depending on if they are on the right or on the left side of the stack. The only supported borderType is BORDER_REPLICATE. Original paper was proposed by Mario Klingemann, which can be found http://underdestruction.com/2004/02/25/stackblur-2004.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
