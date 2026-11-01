% 手写页面：as_array
\encoding{UTF-8}
\name{as_array}
\alias{as_array}
\title{把 cvMat 取回 R 数组}
\usage{
as_array(m, numeric = FALSE)
}
\arguments{
\item{m}{\code{cvMat} 对象。}
\item{numeric}{为 \code{TRUE} 时统一转成 \code{double} 数组，否则按 dtype
映射（\code{CV_8U} -> \code{raw}，\code{CV_32S} -> \code{integer}，浮点 -> \code{double}）。}
}
\value{R 数组；单通道返回二维矩阵，多通道返回 \code{(h, w, c)} 三维数组。
空矩阵返回 \code{NULL}。}
\description{
把原生矩阵搬回 R。多通道矩阵按 OpenCV 的通道交错布局还原成三维数组，
和 \code{Mat()} 的输入约定互逆。
}
\seealso{\code{\link{Mat}}、\code{\link{mat_info}}}
\keyword{opencv}
