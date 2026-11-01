% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOdometry}
\alias{cvOdometry}
\title{cv::Odometry}
\usage{cvOdometry(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvOdometry} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::Odometry} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::Odometry} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/3d/odometry.hpp>}
\strong{构造}
\preformatted{
cvOdometry()
cvOdometry(otype)
cvOdometry(otype, settings, algtype)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvOdometry(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{compute(srcDepth, srcRGB, dstDepth, dstRGB, dst = NULL)}：Compute Rigid Transformation between two frames so that Rt * src = dst.
\item \code{getNormalsComputer()}：Get the normals computer object used for normals calculation (if presented). The normals computer is generated at first need during prepareFrame when normals are required for the ICP algorithm but not presented by a user. Re-generated each time the related settings change or a new frame arrives with the different size.
\item \code{prepareFrame(frame)}：Prepare frame for odometry calculation
\item \code{prepareFrames(srcFrame, dstFrame)}：Prepare frame for odometry calculation
}
}
\keyword{opencv}
