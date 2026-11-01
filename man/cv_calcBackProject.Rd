% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcBackProject}
\alias{cv_calcBackProject}
\title{Calculates the back projection of a histogram}
\usage{cv_calcBackProject(images, channels, hist, ranges, scale, dst = NULL)}
\arguments{
\item{images}{Source arrays. They all should have the same depth, CV_8U, CV_16U or CV_32F , and the same size. Each of them can have an arbitrary number of channels.}
\item{channels}{The list of channels used to compute the back projection. The number of channels must match the histogram dimensionality. The first array channels are numerated from 0 to images[0].channels -1 , the second array channels are counted from images[0].channels to images[0].channels + images[1].channels -1, and so on.}
\item{hist}{Input histogram that can be dense or sparse.}
\item{ranges}{Array of arrays of the histogram bin boundaries in each dimension. See calcHist .}
\item{scale}{Optional scale factor for the output back projection.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the back projection of a histogram.}
\details{
The function cv::calcBackProject calculates the back project of the histogram. That is, similarly to calcHist , at each location (x, y) the function collects the values from the selected channels in the input images and finds the corresponding histogram bin. But instead of incrementing it, the function reads the bin value, scales it by scale , and stores in backProject(x,y) . In terms of statistics, the function computes probability of each element value in respect with the empirical probability distribution represented by the histogram. See how, for example, you can find and track a bright-colored object in a scene:

\itemize{
\item Before tracking, show the object to the camera so that it covers almost the whole frame. Calculate a hue histogram. The histogram may have strong maximums, corresponding to the dominant colors in the object.
\item When tracking, calculate a back projection of a hue plane of each input video frame using that pre-computed histogram. Threshold the back projection to suppress weak colors. It may also make sense to suppress pixels with non-sufficient color saturation and too dark or too bright pixels.
\item Find connected components in the resulting picture and choose, for example, the largest component.
}

This is an approximate algorithm of the CamShift color object tracker.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\seealso{\code{\link{cv_calcHist}}、\code{\link{cv_compareHist}}}
\keyword{opencv}
