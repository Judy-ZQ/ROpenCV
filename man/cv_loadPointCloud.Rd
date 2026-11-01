% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadPointCloud}
\alias{cv_loadPointCloud}
\title{Loads a point cloud from a file}
\usage{cv_loadPointCloud(filename, vertices = NULL, normals = NULL, rgb = NULL)}
\arguments{
\item{filename}{Name of the file}
\item{vertices}{vertex coordinates, each value contains 3 floats}
\item{normals}{per-vertex normals, each value contains 3 floats}
\item{rgb}{per-vertex colors, each value contains 3 floats}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Loads a point cloud from a file.}
\details{
The function loads point cloud from the specified file and returns it. If the cloud cannot be read, throws an error. Vertex coordinates, normals and colors are returned as they are saved in the file even if these arrays have different sizes and their elements do not correspond to each other (which is typical for OBJ files for example)

Currently, the following file formats are supported:

\itemize{
\item Wavefront obj file *.obj
\item Polygon File Format *.ply
}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
