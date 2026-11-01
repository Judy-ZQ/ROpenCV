% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStaticSaliency}
\alias{cvStaticSaliency}
\title{cv::saliency::StaticSaliency}
\usage{cvStaticSaliency(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStaticSaliency} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::saliency::StaticSaliency} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::saliency::StaticSaliency} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/saliency/saliencyBaseClasses.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStaticSaliency(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{computeBinaryMap(saliencyMap, dst = NULL)}：This function perform a binary map of given saliency map. This is obtained in this way
}
}
\keyword{opencv}
