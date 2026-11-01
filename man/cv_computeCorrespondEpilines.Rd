% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeCorrespondEpilines}
\alias{cv_computeCorrespondEpilines}
\title{For points in an image of a stereo pair, computes the corresponding epilines in the other image}
\usage{cv_computeCorrespondEpilines(points, whichImage, F, dst = NULL)}
\arguments{
\item{points}{Input points. or matrix of type CV_32FC2 or vector<Point2f> .}
\item{whichImage}{Index of the image (1 or 2) that contains the points .}
\item{F}{Fundamental matrix that can be estimated using findFundamentalMat or stereoRectify .}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{For points in an image of a stereo pair, computes the corresponding epilines in the other image.}
\details{
For every point in one of the two images of a stereo pair, the function finds the equation of the corresponding epipolar line in the other image.

From the fundamental matrix definition (see findFundamentalMat ), line in the second image for the point in the first image (when whichImage=1 ) is computed as:

And vice versa, when whichImage=2, is computed from as:

Line coefficients are defined up to a scale. They are normalized so that .

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
