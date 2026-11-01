% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKeyLine}
\alias{cvKeyLine}
\title{cv::line_descriptor::KeyLine}
\usage{cvKeyLine(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvKeyLine} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::line_descriptor::KeyLine} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::line_descriptor::KeyLine} 的 R 绑定。
\strong{构造}
\preformatted{
cvKeyLine()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvKeyLine(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getEndPoint()}：Returns the end point of the line in the original image
\item \code{getEndPointInOctave()}：Returns the end point of the line in the octave it was extracted from
\item \code{getStartPoint()}：Returns the start point of the line in the original image
\item \code{getStartPointInOctave()}：Returns the start point of the line in the octave it was extracted from
}
}
\keyword{opencv}
