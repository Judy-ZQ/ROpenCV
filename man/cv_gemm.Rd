% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_gemm}
\alias{cv_gemm}
\title{Performs generalized matrix multiplication}
\usage{cv_gemm(src1, src2, alpha, src3, beta, flags = 0, dst = NULL)}
\arguments{
\item{src1}{first multiplied input matrix that could be real(CV_32FC1, CV_64FC1) or complex(CV_32FC2, CV_64FC2).}
\item{src2}{second multiplied input matrix of the same type as src1.}
\item{alpha}{weight of the matrix product.}
\item{src3}{third optional delta matrix added to the matrix product; it should have the same type as src1 and src2.}
\item{beta}{weight of src3.}
\item{flags}{operation flags (cv::GemmFlags)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs generalized matrix multiplication.}
\details{
The function cv::gemm performs generalized matrix multiplication similar to the gemm functions in BLAS level 3. For example, \code{gemm(src1, src2, alpha, src3, beta, dst, GEMM_1_T + GEMM_3_T)} corresponds to

In case of complex (two-channel) data, performed a complex matrix multiplication.

The function can be replaced with a matrix expression. For example, the above call can be replaced with:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_mulTransposed}}、\code{\link{cv_transform}}}
\keyword{opencv}
