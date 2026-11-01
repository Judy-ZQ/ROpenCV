% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_connectedComponentsWithStats}
\alias{cv_connectedComponentsWithStats}
\title{computes the connected components labeled image of boolean image and also produces a statistics output for each label}
\usage{cv_connectedComponentsWithStats(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{computes the connected components labeled image of boolean image and also produces a statistics output for each label}
\details{
image with 4 or 8 way connectivity - returns N, the total number of labels [0, N-1] where 0 represents the background label. ltype specifies the output label image type, an important consideration based on the total number of labels or alternatively the total number of pixels in the source image. ccltype specifies the connected components labeling algorithm to use, currently Bolelli (Spaghetti) [31], Grana (BBDT) [111] and Wu's (SAUF) [302] algorithms are supported, see the ConnectedComponentsAlgorithmsTypes for details. Note that SAUF algorithm forces a row major ordering of labels while Spaghetti and BBDT do not. This function uses parallel version of the algorithms (statistics included) if at least one allowed parallel framework is enabled and if the rows of the image are at least twice the number returned by getNumberOfCPUs.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

int connectedComponentsWithStats(InputArray image, OutputArray labels, OutputArray stats, OutputArray centroids, int connectivity, int ltype, int ccltype)

int connectedComponentsWithStats(InputArray image, OutputArray labels, OutputArray stats, OutputArray centroids, int connectivity = 8, int ltype = CV_32S)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
