% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMapAffine}
\alias{cvMapAffine}
\title{cv::reg::MapAffine}
\usage{cvMapAffine(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMapAffine} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::reg::MapAffine} 的 R 包装：构造函数与可调方法见下。}
\details{
Defines an affine transformation
\strong{C++ 头文件：}\code{#include <opencv2/reg/mapaffine.hpp>}
\strong{构造}
\preformatted{
cvMapAffine()
cvMapAffine(linTr, shift)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMapAffine(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{compose(map)}：Changes the map composing the current transformation with the one provided in the call. The order is first the current transformation, then the input argument.
\item \code{getLinTr(dst = NULL)}：Return linear part of the affine transformation
\item \code{getShift(dst = NULL)}：Return displacement part of the affine transformation
\item \code{inverseMap()}：Calculates the inverse map
\item \code{inverseWarp(img1, dst = NULL)}：Warps image to a new coordinate frame. The calculation is img2(x)=img1(T(x)), so in fact this is the inverse warping as we are taking the value of img1 with the forward transformation of the points.
\item \code{scale(factor)}：Scales the map by a given factor as if the coordinates system is expanded/compressed by that factor.
\item \code{warp(img1, dst = NULL)}：Warps image to a new coordinate frame. The calculation is img2(x)=img1(T^\{-1\}(x)), as we have to apply the inverse transformation to the points to move them to were the values of img2 are.
}
}
\seealso{父类 \code{\link{cvMap}}（\code{cv::reg::Map}）}
\keyword{opencv}
