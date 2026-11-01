% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvParamGrid}
\alias{cvParamGrid}
\title{The structure represents the logarithmic grid range of statmodel parameters}
\usage{cvParamGrid(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvParamGrid} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The structure represents the logarithmic grid range of statmodel parameters.}
\details{
It is used for optimizing statmodel accuracy by varying model parameters, the accuracy estimate being computed by cross-validation.
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvParamGrid(minVal = 0, maxVal = 0, logstep = 1)
}
}
\keyword{opencv}
