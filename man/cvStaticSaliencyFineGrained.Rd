% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStaticSaliencyFineGrained}
\alias{cvStaticSaliencyFineGrained}
\title{the Fine Grained Saliency approach from [198]}
\usage{cvStaticSaliencyFineGrained(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStaticSaliencyFineGrained} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{the Fine Grained Saliency approach from [198]}
\details{
This method calculates saliency based on center-surround differences. High resolution saliency maps are generated in real time by using integral images.
\strong{C++ 头文件：}\code{#include <opencv2/saliency/saliencySpecializedClasses.hpp>}
\strong{构造}
\preformatted{
cvStaticSaliencyFineGrained()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStaticSaliencyFineGrained(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{computeBinaryMap(saliencyMap, dst = NULL)}：This function perform a binary map of given saliency map. This is obtained in this way
\item \code{computeSaliency(image, dst = NULL)}
}
}
\seealso{父类 \code{\link{cvStaticSaliency}}（\code{cv::saliency::StaticSaliency}）}
\keyword{opencv}
