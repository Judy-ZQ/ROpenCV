% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readOpticalFlow}
\alias{cv_readOpticalFlow}
\title{Read a .flo file}
\usage{cv_readOpticalFlow(path)}
\arguments{
\item{path}{Path to the file to be loaded}
}
\value{\code{cvMat} 图像。}
\description{Read a .flo file.}
\details{
The function readOpticalFlow loads a flow field from a file and returns it as a single matrix. Resulting Mat has a type CV_32FC2 - floating-point, 2-channel. First channel corresponds to the flow in the horizontal direction (u), second - vertical (v).

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
