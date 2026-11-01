% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_distanceTransform}
\alias{cv_distanceTransform}
\title{Calculates the distance to the closest zero pixel for each pixel of the source image}
\usage{cv_distanceTransform(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the distance to the closest zero pixel for each pixel of the source image.}
\details{
The function cv::distanceTransform calculates the approximate or precise distance from every binary image pixel to the nearest zero pixel. For zero image pixels, the distance will obviously be zero.

When maskSize == DIST_MASK_PRECISE and distanceType == DIST_L2 , the function runs the algorithm described in [85] . This algorithm is parallelized with the TBB library.

In other cases, the algorithm [34] is used. This means that for a pixel the function finds the shortest path to the nearest zero pixel consisting of basic shifts: horizontal, vertical, diagonal, or knight's move (the latest is available for a mask). The overall distance is calculated as a sum of these basic distances. Since the distance function should be symmetric, all of the horizontal and vertical shifts must have the same cost (denoted as a ), all the diagonal shifts must have the same cost (denoted as \code{b}), and all knight's moves must have the same cost (denoted as \code{c}). For the DIST_C and DIST_L1 types, the distance is calculated precisely, whereas for DIST_L2 (Euclidean distance) the distance can be calculated only with a relative error (a mask gives more accurate results). For \code{a},\code{b}, and \code{c}, OpenCV uses the values suggested in the original paper:

\itemize{
\item DIST_L1: \code{a = 1, b = 2}
\item DIST_L2: \code{3 x 3}: \code{a=0.955, b=1.3693}
\item \code{5 x 5}: \code{a=1, b=1.4, c=2.1969}
}

Typically, for a fast, coarse distance estimation DIST_L2, a mask is used. For a more accurate distance estimation DIST_L2, a mask or the precise algorithm is used. Note that both the precise and the approximate algorithms are linear on the number of pixels.

This variant of the function does not only compute the minimum distance for each pixel but also identifies the nearest connected component consisting of zero pixels (labelType==DIST_LABEL_CCOMP) or the nearest zero pixel (labelType==DIST_LABEL_PIXEL). Index of the component/pixel is stored in \code{labels(x, y)}. When labelType==DIST_LABEL_CCOMP, the function automatically finds connected components of zero pixels in the input image and marks them with distinct labels. When labelType==DIST_LABEL_PIXEL, the function scans through the input image and marks all the zero pixels with distinct labels.

In this mode, the complexity is still linear. That is, the function provides a very fast way to compute the Voronoi diagram for a binary image. Currently, the second variant can use only the approximate distance transform algorithm, i.e. maskSize=DIST_MASK_PRECISE is not supported yet.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void distanceTransform(InputArray src, OutputArray dst, OutputArray labels, int distanceType, int maskSize, int labelType = DIST_LABEL_CCOMP)

void distanceTransform(InputArray src, OutputArray dst, int distanceType, int maskSize, int dstType = CV_32F)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
