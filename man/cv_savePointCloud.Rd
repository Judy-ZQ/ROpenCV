% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_savePointCloud}
\alias{cv_savePointCloud}
\title{Saves a point cloud to a specified file}
\usage{cv_savePointCloud(filename, vertices, normals = NULL, rgb = NULL)}
\arguments{
\item{filename}{Name of the file}
\item{vertices}{vertex coordinates, each value contains 3 floats}
\item{normals}{per-vertex normals, each value contains 3 floats}
\item{rgb}{per-vertex colors, each value contains 3 floats}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Saves a point cloud to a specified file.}
\details{
The function saves point cloud to the specified file. File format is chosen based on the filename extension.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
