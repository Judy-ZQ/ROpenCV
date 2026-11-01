% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_eigen}
\alias{cv_eigen}
\title{Calculates eigenvalues and eigenvectors of a symmetric matrix}
\usage{cv_eigen(src, eigenvalues = NULL, eigenvectors = NULL)}
\arguments{
\item{src}{input matrix that must have CV_32FC1 or CV_64FC1 type, square size and be symmetrical (src ^T^ == src).}
\item{eigenvalues}{output vector of eigenvalues of the same type as src; the eigenvalues are stored in the descending order.}
\item{eigenvectors}{output matrix of eigenvectors; it has the same size and type as src; the eigenvectors are stored as subsequent matrix rows, in the same order as the corresponding eigenvalues.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Calculates eigenvalues and eigenvectors of a symmetric matrix.}
\details{
The function cv::eigen calculates just eigenvalues, or eigenvalues and eigenvectors of the symmetric matrix src:

\strong{注意：}Use cv::eigenNonSymmetric for calculation of real eigenvalues and eigenvectors of non-symmetric matrix.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_eigenNonSymmetric}}、\code{\link{cv_completeSymm}}}
\keyword{opencv}
