% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityMSE}
\alias{cvQualityMSE}
\title{Full reference mean square error algorithm https://en.wikipedia.org/wiki/Mean_squared_error}
\usage{cvQualityMSE(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQualityMSE} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Full reference mean square error algorithm https://en.wikipedia.org/wiki/Mean_squared_error.}
\details{
C++ 类 \code{cv::quality::QualityMSE} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/quality/qualitymse.hpp>}
\strong{构造}
\preformatted{
cvQualityMSE(ref)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQualityMSE(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Implements Algorithm::clear
\item \code{compute(cmpImgs)}：static method for computing quality
\item \code{empty()}：Implements Algorithm::empty
\item \code{getQualityMap(dst = NULL)}：Returns output quality map that was generated during computation, if supported by the algorithm
}
}
\seealso{父类 \code{\link{cvQualityBase}}（\code{cv::quality::QualityBase}）}
\keyword{opencv}
