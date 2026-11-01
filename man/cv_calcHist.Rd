% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcHist}
\alias{cv_calcHist}
\title{Calculates a histogram of a set of arrays}
\usage{cv_calcHist(images, channels, mask = NULL, histSize, ranges,
    accumulate = FALSE, dst = NULL)}
\arguments{
\item{images}{Source arrays. They all should have the same depth, CV_8U, CV_16U or CV_32F , and the same size. Each of them can have an arbitrary number of channels.}
\item{channels}{List of the dims channels used to compute the histogram. The first array channels are numerated from 0 to images[0].channels -1 , the second array channels are counted from images[0].channels to images[0].channels + images[1].channels -1, and so on.}
\item{mask}{Optional mask. If the matrix is not empty, it must be an 8-bit array of the same size as images[i] . The non-zero mask elements mark the array elements counted in the histogram.}
\item{histSize}{Array of histogram sizes in each dimension.}
\item{ranges}{Array of the dims arrays of the histogram bin boundaries in each dimension. When the histogram is uniform ( uniform =true), then for each dimension i it is enough to specify the lower (inclusive) boundary of the 0-th histogram bin and the upper (exclusive) boundary for the last histogram bin histSize[i]-1 . That is, in case of a uniform histogram each of ranges[i] is an array of 2 elements. When the histogram is not uniform ( uniform=false ), then each of ranges[i] contains histSize[i]+1 elements: . The array elements, that are not between and , are not counted in the histogram.}
\item{accumulate}{Accumulation flag. If it is set, the histogram is not cleared in the beginning when it is allocated. This feature enables you to compute a single histogram from several sets of arrays, or to update the histogram in time.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates a histogram of a set of arrays.}
\details{
\strong{images 必须是 list。}这是 \code{InputArrayOfArrays} 参数，直接传单个 \code{cvMat} 不会说「少套了一层 list」，而是从 OpenCV 深处抛 \code{Mat} 的 rowRange 断言——报错位置和真正的原因完全不搭边。正确写法是 \code{cv_calcHist(list(img), 0L, NULL, 256L, c(0, 256))}。\code{ranges} 反过来：要数值向量 \code{c(0, 256)}，给 list 会报类型错。

The function cv::calcHist calculates the histogram of one or more arrays. The elements of a tuple used to increment a histogram bin are taken from the corresponding input arrays at the same location. The sample below shows how to compute a 2D Hue-Saturation histogram for a color image. :

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
