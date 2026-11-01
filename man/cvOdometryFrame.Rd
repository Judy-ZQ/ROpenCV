% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOdometryFrame}
\alias{cvOdometryFrame}
\title{An object that keeps per-frame data for Odometry algorithms from user-provided images to algorithm-specific precalculated data}
\usage{cvOdometryFrame(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvOdometryFrame} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{An object that keeps per-frame data for Odometry algorithms from user-provided images to algorithm-specific precalculated data. When not empty, it contains a depth image, a mask of valid pixels and a set of pyramids generated from that data. A BGR/Gray image and normals are optional. OdometryFrame is made to be used together with Odometry class to reuse precalculated data between Rt data calculations. A correct way to do that is to call Odometry::prepareFrames on prev and next frames and then pass them to Odometry::compute method.}
\details{
C++ 类 \code{cv::OdometryFrame} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/3d/odometry_frame.hpp>}
\strong{构造}
\preformatted{
cvOdometryFrame(depth = NULL, image = NULL, mask = NULL, normals = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvOdometryFrame(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getDepth(dst = NULL)}：Get the original user-provided depth image.
\item \code{getGrayImage(dst = NULL)}：Get the gray image generated from the user-provided BGR/Gray image.
\item \code{getImage(dst = NULL)}：Get the original user-provided BGR/Gray image.
\item \code{getMask(dst = NULL)}：Get the valid pixels mask generated for the ICP calculations intersected with the user-provided mask.
\item \code{getNormals(dst = NULL)}：Get the normals image either generated for the ICP calculations or user-provided.
\item \code{getProcessedDepth(dst = NULL)}：Get the depth image generated from the user-provided one after conversion, rescale or filtering for ICP algorithm needs.
\item \code{getPyramidAt(dst = NULL, pyrType, level)}：Get the image generated for the ICP calculations from one of the pyramids specified by pyrType. Returns empty image if the pyramid is empty or there's no such pyramid level.
\item \code{getPyramidLevels()}：Get the amount of levels in pyramids (all of them if not empty should have the same number of levels) or 0 if no pyramids were prepared yet.
}
}
\keyword{opencv}
