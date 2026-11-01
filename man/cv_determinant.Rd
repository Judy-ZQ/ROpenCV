% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_determinant}
\alias{cv_determinant}
\title{Returns the determinant of a square floating-point matrix}
\usage{cv_determinant(mtx)}
\arguments{
\item{mtx}{input matrix that must have CV_32FC1 or CV_64FC1 type and square size.}
}
\value{数值标量。}
\description{Returns the determinant of a square floating-point matrix.}
\details{
The function cv::determinant calculates and returns the determinant of the specified matrix. For small matrices ( mtx.cols=mtx.rows<=3 ), the direct method is used. For larger matrices, the function uses LU factorization with partial pivoting.

For symmetric positively-determined matrices, it is also possible to use eigen decomposition to calculate the determinant.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_trace}}、\code{\link{cv_invert}}、\code{\link{cv_solve}}、\code{\link{cv_eigen}}}
\keyword{opencv}
