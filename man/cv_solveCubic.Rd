% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solveCubic}
\alias{cv_solveCubic}
\title{Finds the real roots of a cubic equation}
\usage{cv_solveCubic(coeffs, dst = NULL)}
\arguments{
\item{coeffs}{equation coefficients, an array of 3 or 4 elements.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{int}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the real roots of a cubic equation.}
\details{
The function solveCubic finds the real roots of a cubic equation:

\itemize{
\item if coeffs is a 4-element vector:
\item if coeffs is a 3-element vector:
}

The roots are stored in the roots array.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
