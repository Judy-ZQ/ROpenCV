% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRotatedRect}
\alias{cvRotatedRect}
\title{The class represents rotated (i.e}
\usage{cvRotatedRect(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRotatedRect} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The class represents rotated (i.e. not up-right) rectangles on a plane.}
\details{
Each rectangle is specified by the center point (mass center), length of each side (represented by Size2f structure) and the rotation angle in degrees.
The sample below demonstrates how to use RotatedRect:
\strong{C++ 头文件：}\code{#include <opencv2/core/types.hpp>}
\strong{构造}
\preformatted{
cvRotatedRect()
cvRotatedRect(center, size, angle)
cvRotatedRect(point1, point2, point3)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRotatedRect(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{boundingRect()}：returns the minimal up-right integer rectangle containing the rotated rectangle
\item \code{boundingRect2f()}
\item \code{points()}：returns 4 vertices of the rotated rectangle
}
}
\keyword{opencv}
