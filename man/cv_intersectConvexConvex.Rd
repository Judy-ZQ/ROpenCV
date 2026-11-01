% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_intersectConvexConvex}
\alias{cv_intersectConvexConvex}
\title{Finds intersection of two convex polygons}
\usage{cv_intersectConvexConvex(p1, p2, handleNested = TRUE, dst = NULL)}
\arguments{
\item{p1}{First polygon}
\item{p2}{Second polygon}
\item{handleNested}{When true, an intersection is found if one of the polygons is fully enclosed in the other. When false, no intersection is found. If the polygons share a side or the vertex of one polygon lies on an edge of the other, they are not considered nested and an intersection will be found regardless of the value of handleNested.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{float}）挂在 \code{attr(x, "value")} 上。}
\description{Finds intersection of two convex polygons.}
\details{
\strong{注意：}intersectConvexConvex doesn't confirm that both polygons are convex and will return invalid results if they aren't.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
