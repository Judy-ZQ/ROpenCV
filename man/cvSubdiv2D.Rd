% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSubdiv2D}
\alias{cvSubdiv2D}
\title{cv::Subdiv2D}
\usage{cvSubdiv2D(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSubdiv2D} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::Subdiv2D} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::Subdiv2D} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
\strong{构造}
\preformatted{
cvSubdiv2D()
cvSubdiv2D(rect)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSubdiv2D(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{edgeDst(edge)}：Returns the edge destination.
\item \code{edgeOrg(edge)}：Returns the edge origin.
\item \code{findNearest(pt)}：Finds the subdivision vertex closest to the given point.
\item \code{getEdge(edge, nextEdgeType)}：Returns one of the edges related to the given edge.
\item \code{getEdgeList()}：Returns a list of all edges.
\item \code{getLeadingEdgeList()}：Returns a list of the leading edge ID connected to each triangle.
\item \code{getTriangleList()}：Returns a list of all triangles.
\item \code{getVertex(vertex)}：Returns vertex location from vertex ID.
\item \code{getVoronoiFacetList(idx)}：Returns a list of all Voronoi facets.
\item \code{initDelaunay(rect)}：Creates a new empty Delaunay subdivision.
\item \code{insert(ptvec)}：Insert multiple points into a Delaunay triangulation.
\item \code{locate(pt)}：Returns the location of a point within a Delaunay triangulation.
\item \code{nextEdge(edge)}：Returns next edge around the edge origin.
\item \code{rotateEdge(edge, rotate)}：Returns another edge of the same quad-edge.
\item \code{symEdge(edge)}：Member Data Documentation
}
}
\keyword{opencv}
