% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPyRotationWarper}
\alias{cvPyRotationWarper}
\title{cv::PyRotationWarper}
\usage{cvPyRotationWarper(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPyRotationWarper} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::PyRotationWarper} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::PyRotationWarper} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/stitching/warpers.hpp>}
\strong{构造}
\preformatted{
cvPyRotationWarper()
cvPyRotationWarper(type, scale)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPyRotationWarper(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{buildMaps(src_size, K, R, xmap = NULL, ymap = NULL)}：Builds the projection maps according to the given camera data.
\item \code{getScale()}
\item \code{setScale(float_)}
\item \code{warp(src, K, R, interp_mode, border_mode, dst = NULL)}：Projects the image.
\item \code{warpBackward(src, K, R, interp_mode, border_mode, dst_size, dst = NULL)}：Projects the image backward.
\item \code{warpPoint(pt, K, R)}：Projects the image point.
\item \code{warpPointBackward(pt, K, R)}：Projects the image point backward.
\item \code{warpRoi(src_size, K, R)}
}
}
\keyword{opencv}
