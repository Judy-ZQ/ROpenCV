% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOctree_createWithResolution}
\alias{cvOctree_createWithResolution}
\title{Creates an empty Octree with given resolution}
\usage{cvOctree_createWithResolution(resolution, size, origin, withColors = FALSE)}
\arguments{
\item{resolution}{The size of the octree leaf node}
\item{size}{bounding box size for the Octree}
\item{origin}{Initial center coordinate}
\item{withColors}{Whether to keep per-point colors or not}
}
\value{resulting Octree}
\description{Creates an empty Octree with given resolution.}
\details{
This is an overloaded member function, provided for convenience. It differs from the above function only in what argument(s) it accepts.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

static Ptr<Octree> createWithResolution(double resolution, double size, const Point3f& origin = \{ \}, bool withColors = false)

static Ptr<Octree> createWithResolution(double resolution, InputArray pointCloud, InputArray colors = noArray())

}
}
\keyword{opencv}
