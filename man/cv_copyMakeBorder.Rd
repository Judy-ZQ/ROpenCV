% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_copyMakeBorder}
\alias{cv_copyMakeBorder}
\title{Forms a border around an image}
\usage{cv_copyMakeBorder(src, top, bottom, left, right, borderType, value = NULL,
    dst = NULL)}
\arguments{
\item{src}{Source image.}
\item{top}{the top pixels}
\item{bottom}{the bottom pixels}
\item{left}{the left pixels}
\item{right}{Parameter specifying how many pixels in each direction from the source image rectangle to extrapolate. For example, top=1, bottom=1, left=1, right=1 mean that 1 pixel-wide border needs to be built.}
\item{borderType}{Border type. See borderInterpolate for details.}
\item{value}{Border value if borderType==BORDER_CONSTANT .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Forms a border around an image.}
\details{
The function copies the source image into the middle of the destination image. The areas to the left, to the right, above and below the copied source image will be filled with extrapolated pixels. This is not what filtering functions based on it do (they extrapolate pixels on-fly), but what other more complex functions, including your own, may do to simplify image boundary handling.

The function supports the mode when src is already in the middle of dst . In this case, the function does not copy src itself but simply constructs the border, for example:

\strong{注意：}When the source image is a part (ROI) of a bigger image, the function will try to use the pixels outside of the ROI to form a border. To disable this feature and always do extrapolation, as if src was not a ROI, use borderType | BORDER_ISOLATED.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_borderInterpolate}}}
\keyword{opencv}
