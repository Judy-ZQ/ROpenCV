% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_isRLMorphologyPossible}
\alias{cv_isRLMorphologyPossible}
\title{Check whether a custom made structuring element can be used with run length morphological operations}
\usage{cv_isRLMorphologyPossible(rlStructuringElement)}
\arguments{
\item{rlStructuringElement}{mask to be tested}
}
\value{逻辑标量。}
\description{Check whether a custom made structuring element can be used with run length morphological operations. (It must consist of a continuous array of single runs per row)}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/run_length_morphology.hpp>}
}
\keyword{opencv}
