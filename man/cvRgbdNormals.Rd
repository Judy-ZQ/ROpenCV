% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRgbdNormals}
\alias{cvRgbdNormals}
\title{cv::RgbdNormals}
\usage{cvRgbdNormals(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRgbdNormals} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::RgbdNormals} 的 R 包装：构造函数与可调方法见下。}
\details{
Object that can compute the normals in an image. It is an object as it can cache data for speed efficiency The implemented methods are either:
\itemize{
\item FALS (the fastest) and SRI from \code{Fast and Accurate Computation of Surface Normals from Range Images} by H. Badino, D. Huber, Y. Park and T. Kanade
\item the normals with bilateral filtering on a depth image from \code{Gradient Response Maps for Real-Time Detection of Texture-Less Objects} by S. Hinterstoisser, C. Cagniart, S. Ilic, P. Sturm, N. Navab, P. Fua, and V. Lepetit
}
\strong{C++ 头文件：}\code{#include <opencv2/3d/depth.hpp>}
\strong{构造}
\preformatted{
cvRgbdNormals(rows = 0, cols = 0, depth = 0, K = NULL, window_size = 5, diff_threshold = 50, method)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRgbdNormals(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{apply(points, dst = NULL)}：Given a set of 3d points in a depth image, compute the normals at each point.
\item \code{cache()}：Prepares cached data required for calculation If not called by user, called automatically at first calculation
\item \code{getCols()}
\item \code{getDepth()}
\item \code{getK(dst = NULL)}
\item \code{getMethod()}
\item \code{getRows()}
\item \code{getWindowSize()}
\item \code{setCols(val)}
\item \code{setK(val)}
\item \code{setRows(val)}
\item \code{setWindowSize(val)}
}
}
\keyword{opencv}
