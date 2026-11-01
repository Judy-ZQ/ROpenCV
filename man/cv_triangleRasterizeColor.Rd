% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_triangleRasterizeColor}
\alias{cv_triangleRasterizeColor}
\title{Overloaded version of triangleRasterize with color-only rendering}
\usage{cv_triangleRasterizeColor(vertices, indices, colors, colorBuf = NULL,
    world2cam, fovY, zNear, zFar, settings = NULL)}
\arguments{
\item{vertices}{vertices coordinates array. Should contain values of CV_32FC3 type or a compatible one (e.g. cv::Vec3f, etc.)}
\item{indices}{triangle vertices index array, 3 per triangle. Each index indicates a vertex in a vertices array. Should contain CV_32SC3 values or compatible}
\item{colors}{per-vertex colors of CV_32FC3 type or compatible. Can be empty or the same size as vertices array. If the values are out of [0; 1] range, the result correctness is not guaranteed}
\item{colorBuf}{an array representing the final rendered image. Should containt CV_32FC3 values and be the same size as depthBuf. Not cleared before rendering, i.e. the content is reused as there is some pre-rendered scene.}
\item{world2cam}{a 4x3 or 4x4 float or double matrix containing inverted (sic!) camera pose}
\item{fovY}{field of view in vertical direction, given in radians}
\item{zNear}{minimum Z value to render, everything closer is clipped}
\item{zFar}{maximum Z value to render, everything farther is clipped}
\item{settings}{see TriangleRasterizeSettings. By default the smooth shading is on, with CW culling and with disabled GL compatibility}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Overloaded version of triangleRasterize with color-only rendering.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
