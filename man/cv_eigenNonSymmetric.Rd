% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_eigenNonSymmetric}
\alias{cv_eigenNonSymmetric}
\title{Calculates eigenvalues and eigenvectors of a non-symmetric matrix (real eigenvalues only)}
\usage{cv_eigenNonSymmetric(src, eigenvalues = NULL, eigenvectors = NULL)}
\arguments{
\item{src}{input matrix (CV_32FC1 or CV_64FC1 type).}
\item{eigenvalues}{output vector of eigenvalues (type is the same type as src).}
\item{eigenvectors}{output matrix of eigenvectors (type is the same type as src). The eigenvectors are stored as subsequent matrix rows, in the same order as the corresponding eigenvalues.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates eigenvalues and eigenvectors of a non-symmetric matrix (real eigenvalues only).}
\details{
The function calculates eigenvalues and eigenvectors (optional) of the square matrix src:

\strong{注意：}Assumes real eigenvalues.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_eigen}}}
\keyword{opencv}
