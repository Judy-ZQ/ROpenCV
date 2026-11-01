% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTextDetector}
\alias{cvTextDetector}
\title{An abstract class providing interface for text detection algorithms}
\usage{cvTextDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTextDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{An abstract class providing interface for text detection algorithms.}
\details{
C++ 类 \code{cv::text::TextDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/text/textDetector.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTextDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{detect(inputImage)}：Method that provides a quick and simple interface to detect text inside an image.
}
}
\keyword{opencv}
