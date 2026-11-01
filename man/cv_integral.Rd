% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_integral}
\alias{cv_integral}
\title{Calculates the integral of an image}
\usage{cv_integral(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the integral of an image.}
\details{
The function calculates one or more integral images for the source image as follows:

Using these integral images, you can calculate sum, mean, and standard deviation over a specific up-right or rotated rectangular region of the image in a constant time, for example:

It makes possible to do a fast blurring or fast block correlation with a variable window size, for example. In case of multi-channel images, sums for each channel are accumulated independently.

As a practical example, the next figure shows the calculation of the integral of a straight rectangle Rect(4,4,3,2) and of a tilted rectangle Rect(5,1,2,3) . The selected pixels in the original image are shown, as well as the relative pixels in the integral images sum and tilted .

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void integral(InputArray src, OutputArray sum, OutputArray sqsum, OutputArray tilted, int sdepth = -1, int sqdepth = -1)

void integral(InputArray src, OutputArray sum, int sdepth = -1)

void integral(InputArray src, OutputArray sum, OutputArray sqsum, int sdepth = -1, int sqdepth = -1)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
