% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createCLAHE}
\alias{cv_createCLAHE}
\title{Creates a smart pointer to a cv::CLAHE class and initializes it}
\usage{cv_createCLAHE(clipLimit = 40, tileGridSize = c(8, 8))}
\arguments{
\item{clipLimit}{Threshold for contrast limiting.}
\item{tileGridSize}{Size of grid for histogram equalization. Input image will be divided into equally sized rectangular tiles. tileGridSize defines the number of tiles in row and column.}
}
\value{\code{Ptr<CLAHE>} 对应的 R 对象。}
\description{Creates a smart pointer to a cv::CLAHE class and initializes it.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
