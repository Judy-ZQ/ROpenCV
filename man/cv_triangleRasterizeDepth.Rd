% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_triangleRasterizeDepth}
\alias{cv_triangleRasterizeDepth}
\title{Overloaded version of triangleRasterize with depth-only rendering}
\usage{cv_triangleRasterizeDepth(vertices, indices, depthBuf = NULL, world2cam,
    fovY, zNear, zFar, settings = NULL)}
\arguments{
\item{vertices}{vertices coordinates array. Should contain values of CV_32FC3 type or a compatible one (e.g. cv::Vec3f, etc.)}
\item{indices}{triangle vertices index array, 3 per triangle. Each index indicates a vertex in a vertices array. Should contain CV_32SC3 values or compatible}
\item{depthBuf}{an array of floats containing resulting Z buffer. Should contain float values and be the same size as colorBuf. Not cleared before rendering, i.e. the content is reused as there is some pre-rendered scene. Empty scene corresponds to all values set to zFar (or to 1.0 in INVDEPTH mode)}
\item{world2cam}{a 4x3 or 4x4 float or double matrix containing inverted (sic!) camera pose}
\item{fovY}{field of view in vertical direction, given in radians}
\item{zNear}{minimum Z value to render, everything closer is clipped}
\item{zFar}{maximum Z value to render, everything farther is clipped}
\item{settings}{see TriangleRasterizeSettings. By default the smooth shading is on, with CW culling and with disabled GL compatibility}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Overloaded version of triangleRasterize with depth-only rendering.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
