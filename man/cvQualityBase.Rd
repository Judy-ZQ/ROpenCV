% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityBase}
\alias{cvQualityBase}
\title{cv::quality::QualityBase}
\usage{cvQualityBase(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQualityBase} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::quality::QualityBase} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::quality::QualityBase} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/quality/qualitybase.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQualityBase(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Implements Algorithm::clear
\item \code{compute(img)}：Compute quality score per channel with the per-channel score in each element of the resulting cv::Scalar. See specific algorithm for interpreting result scores.
\item \code{empty()}：Implements Algorithm::empty
\item \code{getQualityMap(dst = NULL)}：Returns output quality map that was generated during computation, if supported by the algorithm
}
}
\keyword{opencv}
