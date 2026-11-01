% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFileStorage}
\alias{cvFileStorage}
\title{XML/YAML/JSON file storage class that encapsulates all the information necessary for writing or reading data to/from a file}
\usage{cvFileStorage(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFileStorage} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{XML/YAML/JSON file storage class that encapsulates all the information necessary for writing or reading data to/from a file.}
\details{
C++ 类 \code{cv::FileStorage} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/core/persistence.hpp>}
\strong{构造}
\preformatted{
cvFileStorage()
cvFileStorage(filename, flags, encoding = '')
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFileStorage(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{endWriteStruct()}：Finishes writing nested structure (should pair startWriteStruct )
\item \code{getFirstTopLevelNode()}：Returns the first element of the top-level mapping.
\item \code{getFormat()}：Returns the current format.
\item \code{isOpened()}：Checks whether the file is opened.
\item \code{open(filename, flags, encoding = '')}：Opens a file.
\item \code{release()}：Closes the file and releases all the memory buffers.
\item \code{releaseAndGetString()}：Closes the file and releases all the memory buffers.
\item \code{root(streamidx = 0)}：Returns the top-level mapping.
\item \code{startWriteStruct(name, flags, typeName = '')}：Starts to write a nested structure (sequence or a mapping).
\item \code{write(name, val)}：Simplified writing API to use with bindings.
\item \code{writeComment(comment, append = FALSE)}：Writes a comment.
}
}
\keyword{opencv}
