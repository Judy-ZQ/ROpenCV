% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_inRange}
\alias{cv_inRange}
\title{Checks if array elements lie between the elements of two other arrays}
\usage{cv_inRange(src, lowerb, upperb, dst = NULL)}
\arguments{
\item{src}{first input array.}
\item{lowerb}{inclusive lower boundary array or a scalar.}
\item{upperb}{inclusive upper boundary array or a scalar.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Checks if array elements lie between the elements of two other arrays.}
\details{
The function checks the range as follows:

\itemize{
\item For every element of a single-channel input array:
\item For two-channel arrays:
\item and so forth.
}

That is, dst (I) is set to 255 (all 1 -bits) if src (I) is within the specified 1D, 2D, 3D, ... box and 0 otherwise.

When the lower and/or upper boundary parameters are scalars, the indexes (I) at lowerb and upperb in the above formulas should be omitted.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
