% 手写页面：is_cvObject
\encoding{UTF-8}
\name{is_cvObject}
\alias{is_cvObject}
\title{判断是否为 cvObject}
\usage{
is_cvObject(x)
}
\arguments{
\item{x}{任意对象。}
}
\value{逻辑标量。}
\description{
判断 \code{x} 是不是一个 \code{cvObject}，也就是某个 OpenCV 类实例的 R 包装
（\code{cvSIFT}、\code{cvCLAHE}、\code{cvBFMatcher} …）。
}
\details{
\code{cvObject} 的方法通过 \code{$} 取用，例如 \code{obj$apply(img)}；
\code{names(obj)} 列出可用的方法名。
}
\seealso{\code{\link{is_cvMat}}}
\keyword{opencv}
