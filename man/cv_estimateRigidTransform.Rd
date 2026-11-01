% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateRigidTransform}
\alias{cv_estimateRigidTransform}
\title{Computes an optimal affine transformation between two 2D point sets}
\usage{cv_estimateRigidTransform(src, dst, fullAffine)}
\arguments{
\item{src}{First input 2D point set stored in std::vector or Mat, or an image stored in Mat.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{fullAffine}{If true, the function finds an optimal affine transformation with no additional restrictions (6 degrees of freedom). Otherwise, the class of transformations to choose from is limited to combinations of translation, rotation, and uniform scaling (4 degrees of freedom).}
}
\value{\code{cvMat} 图像。}
\description{Computes an optimal affine transformation between two 2D point sets.}
\details{
The function finds an optimal affine transform [A|b] (a 2 x 3 floating-point matrix) that approximates best the affine transformation between:

In case of point sets, the problem is formulated as follows: you need to find a 2x2 matrix A and 2x1 vector b so that:

where src[i] and dst[i] are the i-th points in src and dst, respectively can be either arbitrary (when fullAffine=true ) or have a form of

when fullAffine=false.

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\seealso{\code{\link{cv_estimateAffine2D}}、\code{\link{cv_estimateAffinePartial2D}}、\code{\link{cv_getAffineTransform}}、\code{\link{cv_getPerspectiveTransform}}、\code{\link{cv_findHomography}}}
\keyword{opencv}
