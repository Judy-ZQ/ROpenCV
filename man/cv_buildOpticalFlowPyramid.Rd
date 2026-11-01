% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_buildOpticalFlowPyramid}
\alias{cv_buildOpticalFlowPyramid}
\title{Constructs the image pyramid which can be passed to calcOpticalFlowPyrLK}
\usage{cv_buildOpticalFlowPyramid(img, winSize, maxLevel, withDerivatives = TRUE,
    pyrBorder = BORDER_REFLECT_101, derivBorder = BORDER_CONSTANT,
    tryReuseInputImage = TRUE, pyramid = NULL)}
\arguments{
\item{img}{8-bit input image.}
\item{winSize}{window size of optical flow algorithm. Must be not less than winSize argument of calcOpticalFlowPyrLK. It is needed to calculate required padding for pyramid levels.}
\item{maxLevel}{0-based maximal pyramid level number.}
\item{withDerivatives}{set to precompute gradients for the every pyramid level. If pyramid is constructed without the gradients then calcOpticalFlowPyrLK will calculate them internally.}
\item{pyrBorder}{the border mode for pyramid layers.}
\item{derivBorder}{the border mode for gradients.}
\item{tryReuseInputImage}{put ROI of input image into the pyramid if possible. You can pass false to force data copying.}
\item{pyramid}{output pyramid.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Constructs the image pyramid which can be passed to calcOpticalFlowPyrLK.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
