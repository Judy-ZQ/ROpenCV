% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDictValue}
\alias{cvDictValue}
\title{cv::dnn::DictValue}
\usage{cvDictValue(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDictValue} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::dnn::DictValue} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::dnn::DictValue} 的 R 绑定。
\strong{构造}
\preformatted{
cvDictValue(i)
cvDictValue(p)
cvDictValue(chr)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDictValue(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getIntValue(idx = -1)}
\item \code{getRealValue(idx = -1)}
\item \code{getStringValue(idx = -1)}
\item \code{isInt()}
\item \code{isReal()}
\item \code{isString()}
}
}
\keyword{opencv}
