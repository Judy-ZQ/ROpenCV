% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDynaFu}
\alias{cvDynaFu}
\title{cv::dynafu::DynaFu}
\usage{cvDynaFu(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDynaFu} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::dynafu::DynaFu} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::dynafu::DynaFu} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/rgbd/dynafu.hpp>}
\strong{构造}
\preformatted{
cvDynaFu(params)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDynaFu(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCloud(points = NULL, normals = NULL)}：Gets points and normals of current 3d mesh.
\item \code{getNormals(points, dst = NULL)}：Calculates normals for given points.
\item \code{getPoints(dst = NULL)}：Gets points of current 3d mesh.
\item \code{render(dst = NULL, cameraPose)}：Renders a volume into an image.
\item \code{reset()}：Resets the algorithm.
\item \code{update(depth)}：Process next depth frame.
}
}
\keyword{opencv}
