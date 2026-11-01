% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solvePoly}
\alias{cv_solvePoly}
\title{Finds the real or complex roots of a polynomial equation}
\usage{cv_solvePoly(coeffs, maxIters = 300, dst = NULL)}
\arguments{
\item{coeffs}{array of polynomial coefficients.}
\item{maxIters}{maximum number of iterations the algorithm does.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the real or complex roots of a polynomial equation.}
\details{
The function cv::solvePoly finds real and complex roots of a polynomial equation:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
