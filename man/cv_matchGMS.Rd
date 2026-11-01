% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_matchGMS}
\alias{cv_matchGMS}
\title{GMS (Grid-based Motion Statistics) feature matching strategy described in [26] }
\usage{cv_matchGMS(size1, size2, keypoints1, keypoints2, matches1to2,
    withRotation = FALSE, withScale = FALSE, thresholdFactor = 6)}
\arguments{
\item{size1}{Input size of image1.}
\item{size2}{Input size of image2.}
\item{keypoints1}{Input keypoints of image1.}
\item{keypoints2}{Input keypoints of image2.}
\item{matches1to2}{Input 1-nearest neighbor matches.}
\item{withRotation}{Take rotation transformation into account.}
\item{withScale}{Take scale transformation into account.}
\item{thresholdFactor}{The higher, the less matches.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{GMS (Grid-based Motion Statistics) feature matching strategy described in [26] .}
\details{
\strong{注意：}Since GMS works well when the number of features is large, we recommend to use the ORB feature and set FastThreshold to 0 to get as many as possible features quickly. If matching results are not satisfying, please add more features. (We use 10000 for images with 640 X 480). If your images have big rotation and scale changes, please set withRotation or withScale to true.

\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
}
\keyword{opencv}
