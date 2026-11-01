% 手写页面：mat_info
\encoding{UTF-8}
\name{mat_info}
\alias{mat_info}
\title{查询矩阵的尺寸与类型}
\usage{
mat_info(m)
}
\arguments{
\item{m}{\code{cvMat} 对象。}
}
\value{长度为 5 的整数向量 \code{c(rows, cols, channels, type, depth)}。}
\description{
返回底层 \code{cv::Mat} 的 \code{rows}、\code{cols}、通道数、完整类型码
和深度码。类型码可以直接和 \code{CV_8UC3} 之类的常量比较。
}
\seealso{\code{\link{Mat}}、\code{\link{as_array}}}
\keyword{opencv}
