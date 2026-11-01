% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcCovarMatrix}
\alias{cv_calcCovarMatrix}
\title{cv_calcCovarMatrix}
\usage{cv_calcCovarMatrix(samples, mean = NULL, flags, ctype = CV_64F, covar = NULL)}
\arguments{
\item{samples}{samples stored as rows/columns of a single matrix.}
\item{mean}{input or output (depending on the flags) array as the average value of the input vectors.}
\item{flags}{operation flags as a combination of CovarFlags}
\item{ctype}{type of the matrixl; it equals 'CV_64F' by default.}
\item{covar}{output covariance matrix of the type ctype and square size.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{R 侧入口 \code{cv_calcCovarMatrix}，对应 C++ 的 \code{cv::calcCovarMatrix}。}
\details{
\strong{注意：}use COVAR_ROWS or COVAR_COLS flag

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
