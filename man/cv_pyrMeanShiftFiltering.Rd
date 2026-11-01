% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_pyrMeanShiftFiltering}
\alias{cv_pyrMeanShiftFiltering}
\title{Performs initial step of meanshift segmentation of an image}
\usage{cv_pyrMeanShiftFiltering(src, sp, sr, maxLevel = 1, termcrit = c(6, 5, 1),
    dst = NULL)}
\arguments{
\item{src}{The source 8-bit, 3-channel image.}
\item{sp}{The spatial window radius.}
\item{sr}{The color window radius.}
\item{maxLevel}{Maximum level of the pyramid for the segmentation.}
\item{termcrit}{Termination criteria: when to stop meanshift iterations.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs initial step of meanshift segmentation of an image.}
\details{
The function implements the filtering stage of meanshift segmentation, that is, the output of the function is the filtered "posterized" image with color gradients and fine-grain texture flattened. At every pixel (X,Y) of the input image (or down-sized input image, see below) the function executes meanshift iterations, that is, the pixel (X,Y) neighborhood in the joint space-color hyperspace is considered:

where (R,G,B) and (r,g,b) are the vectors of color components at (X,Y) and (x,y), respectively (though, the algorithm does not depend on the color space used, so any 3-component color space can be used instead). Over the neighborhood the average spatial value (X',Y') and average color vector (R',G',B') are found and they act as the neighborhood center on the next iteration:

After the iterations over, the color components of the initial pixel (that is, the pixel from where the iterations started) are set to the final value (average color at the last iteration):

When maxLevel > 0, the gaussian pyramid of maxLevel+1 levels is built, and the above procedure is run on the smallest layer first. After that, the results are propagated to the larger layer and the iterations are run again only on those pixels where the layer colors differ by more than sr from the lower-resolution layer of the pyramid. That makes boundaries of color regions sharper. Note that the results will be actually different from the ones obtained by running the meanshift procedure on the whole original image (i.e. when maxLevel==0).

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
