% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOctree}
\alias{cvOctree}
\title{Octree for 3D vision}
\usage{cvOctree(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvOctree} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Octree for 3D vision.}
\details{
In 3D vision filed, the Octree is used to process and accelerate the pointcloud data. The class Octree represents the Octree data structure. Each Octree will have a fixed depth. The depth of Octree refers to the distance from the root node to the leaf node.All OctreeNodes will not exceed this depth.Increasing the depth will increase the amount of calculation exponentially. And the small number of depth refers low resolution of Octree. Each node contains 8 children, which are used to divide the space cube into eight parts. Each octree node represents a cube. And these eight children will have a fixed order, the order is described as follows:
For illustration, assume,
rootNode: origin == (0, 0, 0), size == 2
Then,
children[0]: origin == (0, 0, 0), size == 1
children[1]: origin == (1, 0, 0), size == 1, along X-axis next to child 0
children[2]: origin == (0, 1, 0), size == 1, along Y-axis next to child 0
children[3]: origin == (1, 1, 0), size == 1, in X-Y plane
children[4]: origin == (0, 0, 1), size == 1, along Z-axis next to child 0
children[5]: origin == (1, 0, 1), size == 1, in X-Z plane
children[6]: origin == (0, 1, 1), size == 1, in Y-Z plane
children[7]: origin == (1, 1, 1), size == 1, furthest from child 0
\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvOctree(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{KNNSearch(query, K, points = NULL, colors = NULL, squareDists = NULL)}：K Nearest Neighbor Search in Octree.
\item \code{clear()}：Reset all octree parameter.
\item \code{deletePoint(point)}：Delete a given point from the Octree.
\item \code{empty()}：returns true if the rootnode is NULL.
\item \code{getPointCloudByOctree(restoredPointCloud = NULL, restoredColor = NULL)}：restore point cloud data from Octree.
\item \code{insertPoint(point, color)}：Insert a point data with color to a OctreeNode.
\item \code{isPointInBound(point)}：Determine whether the point is within the space range of the specific cube.
\item \code{radiusNNSearch(query, radius, points = NULL, colors = NULL, squareDists = NULL)}：Radius Nearest Neighbor Search in Octree.
}
}
\keyword{opencv}
