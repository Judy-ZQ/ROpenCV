% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvVideoWriter}
\alias{cvVideoWriter}
\title{Video writer class}
\usage{cvVideoWriter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvVideoWriter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Video writer class.}
\details{
The class provides C++ API for writing video files or image sequences.
\strong{C++ 头文件：}\code{#include <opencv2/videoio.hpp>}
\strong{构造}
\preformatted{
cvVideoWriter()
cvVideoWriter(filename, fourcc, fps, frameSize, isColor = TRUE)
cvVideoWriter(filename, fourcc, fps, frameSize, params)
cvVideoWriter(filename, apiPreference, fourcc, fps, frameSize, isColor = TRUE)
cvVideoWriter(filename, apiPreference, fourcc, fps, frameSize, params)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvVideoWriter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{get(propId)}：Returns the specified VideoWriter property.
\item \code{getBackendName()}：Returns used backend API name.
\item \code{isOpened()}：Returns true if video writer has been successfully initialized.
\item \code{open(filename, apiPreference, fourcc, fps, frameSize, isColor = TRUE)}：Initializes or reinitializes video writer.
\item \code{release()}：Closes the video writer.
\item \code{set(propId, value)}：Sets a property in the VideoWriter.
\item \code{write(image)}：Writes the next video frame.
}
}
\keyword{opencv}
