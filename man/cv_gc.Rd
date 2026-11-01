% 手写页面：cv_gc
\encoding{UTF-8}
\name{cv_gc}
\alias{cv_gc}
\title{回收原生内存}
\usage{
cv_gc()
}
\value{不可见地返回 \code{NULL}。}
\description{
\code{cvMat} 与 \code{cvObject} 靠 R 的 finalizer 释放原生对象。正常情况下
不需要手动调用；只有在长时间循环里反复创建大矩阵、又希望内存立刻降下来时才有用。
}
\keyword{opencv}
