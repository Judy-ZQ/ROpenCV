% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_weightedMedianFilter}
\alias{cv_weightedMedianFilter}
\title{Applies weighted median filter to an image}
\usage{cv_weightedMedianFilter(joint, src, r, sigma = 25.5, weightType = WMF_EXP,
    mask = NULL, dst = NULL)}
\arguments{
\item{joint}{Joint 8-bit, 1-channel or 3-channel image.}
\item{src}{Source 8-bit or floating-point, 1-channel or 3-channel image.}
\item{r}{Radius of filtering kernel, should be a positive integer.}
\item{sigma}{Filter range standard deviation for the joint image.}
\item{weightType}{weightType The type of weight definition, see WMFWeightType}
\item{mask}{A 0-1 mask that has the same size with I. This mask is used to ignore the effect of some pixels. If the pixel value on mask is 0, the pixel will be ignored when maintaining the joint-histogram. This is useful for applications like optical flow occlusion handling.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies weighted median filter to an image.}
\details{
For more details about this implementation, please see [319]
}
\seealso{\code{\link{cv_medianBlur}}、\code{\link{cv_jointBilateralFilter}}}
\keyword{opencv}
