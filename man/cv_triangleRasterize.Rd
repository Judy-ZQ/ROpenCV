% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_triangleRasterize}
\alias{cv_triangleRasterize}
\title{Renders a set of triangles on a depth and color image}
\usage{cv_triangleRasterize(vertices, indices, colors, colorBuf = NULL,
    depthBuf = NULL, world2cam, fovY, zNear, zFar, settings = NULL)}
\arguments{
\item{vertices}{vertices coordinates array. Should contain values of CV_32FC3 type or a compatible one (e.g. cv::Vec3f, etc.)}
\item{indices}{triangle vertices index array, 3 per triangle. Each index indicates a vertex in a vertices array. Should contain CV_32SC3 values or compatible}
\item{colors}{per-vertex colors of CV_32FC3 type or compatible. Can be empty or the same size as vertices array. If the values are out of [0; 1] range, the result correctness is not guaranteed}
\item{colorBuf}{an array representing the final rendered image. Should containt CV_32FC3 values and be the same size as depthBuf. Not cleared before rendering, i.e. the content is reused as there is some pre-rendered scene.}
\item{depthBuf}{an array of floats containing resulting Z buffer. Should contain float values and be the same size as colorBuf. Not cleared before rendering, i.e. the content is reused as there is some pre-rendered scene. Empty scene corresponds to all values set to zFar (or to 1.0 in INVDEPTH mode)}
\item{world2cam}{a 4x3 or 4x4 float or double matrix containing inverted (sic!) camera pose}
\item{fovY}{field of view in vertical direction, given in radians}
\item{zNear}{minimum Z value to render, everything closer is clipped}
\item{zFar}{maximum Z value to render, everything farther is clipped}
\item{settings}{see TriangleRasterizeSettings. By default the smooth shading is on, with CW culling and with disabled GL compatibility}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Renders a set of triangles on a depth and color image.}
\details{
Triangles can be drawn white (1.0, 1.0, 1.0), flat-shaded or with a color interpolation between vertices. In flat-shaded mode the 1st vertex color of each triangle is used to fill the whole triangle.

The world2cam is an inverted camera pose matrix in fact. It transforms vertices from world to camera coordinate system.

The camera coordinate system emulates the OpenGL's coordinate system having coordinate origin in a screen center, X axis pointing right, Y axis pointing up and Z axis pointing towards the viewer except that image is vertically flipped after the render. This means that all visible objects are placed in z-negative area, or exactly in -zNear > z > -zFar since zNear and zFar are positive. For example, at fovY = PI/2 the point (0, 1, -1) will be projected to (width/2, 0) screen point, (1, 0, -1) to (width/2 + height/2, height/2). Increasing fovY makes projection smaller and vice versa.

The function does not create or clear output images before the rendering. This means that it can be used for drawing over an existing image or for rendering a model into a 3D scene using pre-filled Z-buffer.

Empty scene results in a depth buffer filled by the maximum value since every pixel is infinitely far from the camera. Therefore, before rendering anything from scratch the depthBuf should be filled by zFar values (or by ones in INVDEPTH mode).

There are special versions of this function named triangleRasterizeDepth and triangleRasterizeColor for cases if a user needs a color image or a depth image alone; they may run slightly faster.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
