% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_scaleAdd}
\alias{cv_scaleAdd}
\title{Calculates the sum of a scaled array and another array}
\usage{cv_scaleAdd(src1, alpha, src2, dst = NULL)}
\arguments{
\item{src1}{first input array.}
\item{alpha}{scale factor for the first array.}
\item{src2}{second input array of the same size and type as src1.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates the sum of a scaled array and another array.}
\details{
The function scaleAdd is one of the classical primitive linear algebra operations, known as DAXPY or SAXPY in BLAS. It calculates the sum of a scaled array and another array:

The function can also be emulated with a matrix expression, for example:

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_add}}、\code{\link{cv_addWeighted}}、\code{\link{cv_subtract}}}
\keyword{opencv}
