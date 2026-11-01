% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getMotion}
\alias{cv_getMotion}
\title{Computes motion between two frames assuming that all the intermediate motions are known}
\usage{cv_getMotion(from, to, motions)}
\arguments{
\item{from}{Source frame index.}
\item{to}{Destination frame index.}
\item{motions}{Pair-wise motions. motions[i] denotes motion from the frame i to the frame i+1}
}
\value{Motion from the Source frame to the Destination frame.}
\description{Computes motion between two frames assuming that all the intermediate motions are known.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/videostab/global_motion.hpp>}
}
\keyword{opencv}
