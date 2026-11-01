% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_completeSymm}
\alias{cv_completeSymm}
\title{Copies the lower or the upper half of a square matrix to its another half}
\usage{cv_completeSymm(m = NULL, lowerToUpper = FALSE)}
\arguments{
\item{m}{input-output floating-point square matrix.}
\item{lowerToUpper}{operation flag; if true, the lower half is copied to the upper half. Otherwise, the upper half is copied to the lower half.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Copies the lower or the upper half of a square matrix to its another half.}
\details{
The function cv::completeSymm copies the lower or the upper half of a square matrix to its another half. The matrix diagonal remains unchanged:

\itemize{
\item for if lowerToUpper=false
\item for if lowerToUpper=true
}

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_flip}}、\code{\link{cv_transpose}}}
\keyword{opencv}
