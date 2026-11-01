% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRefineParameters}
\alias{cvRefineParameters}
\title{cv::aruco::RefineParameters}
\usage{cvRefineParameters(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRefineParameters} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::aruco::RefineParameters} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::aruco::RefineParameters} 的 R 绑定。
\strong{构造}
\preformatted{
cvRefineParameters(minRepDistance = 10, errorCorrectionRate = 3, checkAllOrders = TRUE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRefineParameters(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{readRefineParameters(fn)}：Read a new set of RefineParameters from FileNode (use FileStorage.root ).
\item \code{writeRefineParameters(fs, name = '')}：Write a set of RefineParameters to FileStorage.
}
}
\keyword{opencv}
