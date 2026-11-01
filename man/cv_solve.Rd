% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_solve}
\alias{cv_solve}
\title{Solves one or more linear systems or least-squares problems}
\usage{cv_solve(src1, src2, flags = DECOMP_LU, dst = NULL)}
\arguments{
\item{src1}{input matrix on the left-hand side of the system.}
\item{src2}{input matrix on the right-hand side of the system.}
\item{flags}{solution (matrix inversion) method (DecompTypes)}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Solves one or more linear systems or least-squares problems.}
\details{
The function cv::solve solves a linear system or least-squares problem (the latter is possible with SVD or QR methods, or by specifying the flag DECOMP_NORMAL ):

If DECOMP_LU or DECOMP_CHOLESKY method is used, the function returns 1 if src1 (or ) is non-singular. Otherwise, it returns 0. In the latter case, dst is not valid. Other methods find a pseudo-solution in case of a singular left-hand side part.

\strong{注意：}If you want to find a unity-norm solution of an under-defined singular system , the function solve will not do the work. Use SVD::solveZ instead.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_invert}}、\code{\link{cv_eigen}}}
\keyword{opencv}
