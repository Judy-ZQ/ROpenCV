% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_matMulDeriv}
\alias{cv_matMulDeriv}
\title{Computes partial derivatives of the matrix product for each multiplied matrix}
\usage{cv_matMulDeriv(A, B, dABdA = NULL, dABdB = NULL)}
\arguments{
\item{A}{First multiplied matrix.}
\item{B}{Second multiplied matrix.}
\item{dABdA}{First output derivative matrix d(A*B)/dA of size .}
\item{dABdB}{Second output derivative matrix d(A*B)/dB of size .}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes partial derivatives of the matrix product for each multiplied matrix.}
\details{
The function computes partial derivatives of the elements of the matrix product with regard to the elements of each of the two input matrices. The function is used to compute the Jacobian matrices in stereoCalibrate but can also be used in any other similar optimization function.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
