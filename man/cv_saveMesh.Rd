% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_saveMesh}
\alias{cv_saveMesh}
\title{Saves a mesh to a specified file}
\usage{cv_saveMesh(filename, vertices, indices, normals = NULL, colors = NULL,
    texCoords = NULL)}
\arguments{
\item{filename}{Name of the file.}
\item{vertices}{vertex coordinates, each value contains 3 floats}
\item{indices}{per-face list of vertices, each value is a vector of ints}
\item{normals}{per-vertex normals, each value contains 3 floats}
\item{colors}{per-vertex colors, each value contains 3 floats}
\item{texCoords}{per-vertex texture coordinates, each value contains 2 or 3 floats}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Saves a mesh to a specified file.}
\details{
The function saves mesh to the specified file. File format is chosen based on the filename extension.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
