% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_filter2D}
\alias{cv_filter2D}
\title{Convolves an image with the kernel}
\usage{cv_filter2D(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Convolves an image with the kernel.}
\details{
The function applies an arbitrary linear filter to an image. In-place operation is supported. When the aperture is partially outside the image, the function interpolates outlier pixel values according to the specified border mode.

The function does actually compute correlation, not the convolution:

That is, the kernel is not mirrored around the anchor point. If you need a real convolution, flip the kernel using flip and set the new anchor to \code{(kernel.cols - anchor.x - 1, kernel.rows - anchor.y - 1)}.

The function uses the DFT-based algorithm in case of sufficiently large kernels (~\code{11 x 11} or larger) and the direct algorithm for small kernels.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void filter2D(InputArray src, OutputArray dst, int ddepth, InputArray kernel, Point anchor = Point(-1,-1), double delta = 0, int borderType = BORDER_DEFAULT)

void filter2D(InputArray src, OutputArray dst, InputArray kernel, const Filter2DParams& params = Filter2DParams())

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_sepFilter2D}}、\code{\link{cv_dft}}、\code{\link{cv_matchTemplate}}}
\keyword{opencv}
