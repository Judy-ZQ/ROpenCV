% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_HoughLinesWithAccumulator}
\alias{cv_HoughLinesWithAccumulator}
\title{Finds lines in a binary image using the standard Hough transform and get accumulator}
\usage{cv_HoughLinesWithAccumulator(image, rho, theta, threshold, srn = 0, stn = 0,
    min_theta = 0, max_theta = pi, dst = NULL)}
\arguments{
\item{image}{含义见下方 C++ 签名。}
\item{rho}{含义见下方 C++ 签名。}
\item{theta}{含义见下方 C++ 签名。}
\item{threshold}{含义见下方 C++ 签名。}
\item{srn}{含义见下方 C++ 签名。}
\item{stn}{含义见下方 C++ 签名。}
\item{min_theta}{含义见下方 C++ 签名。}
\item{max_theta}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{static inline void} 对应的 R 对象。}
\description{Finds lines in a binary image using the standard Hough transform and get accumulator.}
\details{
\strong{注意：}This function is for bindings use only. Use original function in C++ code
}
\seealso{\code{\link{cv_HoughLines}}}
\keyword{opencv}
