% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_writeOpticalFlow}
\alias{cv_writeOpticalFlow}
\title{Write a .flo to disk}
\usage{cv_writeOpticalFlow(path, flow)}
\arguments{
\item{path}{Path to the file to be written}
\item{flow}{Flow field to be stored}
}
\value{逻辑标量。}
\description{Write a .flo to disk.}
\details{
The function stores a flow field in a file, returns true on success, false otherwise. The flow field must be a 2-channel, floating-point matrix (CV_32FC2). First channel corresponds to the flow in the horizontal direction (u), second - vertical (v).

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
