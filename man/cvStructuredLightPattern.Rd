% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStructuredLightPattern}
\alias{cvStructuredLightPattern}
\title{Abstract base class for generating and decoding structured light patterns}
\usage{cvStructuredLightPattern(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStructuredLightPattern} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Abstract base class for generating and decoding structured light patterns.}
\details{
C++ 类 \code{cv::structured_light::StructuredLightPattern} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/structured_light/structured_light.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStructuredLightPattern(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{decode(patternImages, blackImages = NULL, whiteImages = NULL, flags = DECODE_3D_UNDERWORLD, dst = NULL)}：Decodes the structured light pattern, generating a disparity map.
\item \code{generate(patternImages = NULL)}：Generates the structured light pattern to project.
}
}
\keyword{opencv}
