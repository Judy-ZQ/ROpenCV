% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadMesh}
\alias{cv_loadMesh}
\title{Loads a mesh from a file}
\usage{cv_loadMesh(filename, vertices = NULL, indices = NULL, normals = NULL,
    colors = NULL, texCoords = NULL)}
\arguments{
\item{filename}{Name of the file}
\item{vertices}{vertex coordinates, each value contains 3 floats}
\item{indices}{per-face list of vertices, each value is a vector of ints}
\item{normals}{per-vertex normals, each value contains 3 floats}
\item{colors}{per-vertex colors, each value contains 3 floats}
\item{texCoords}{per-vertex texture coordinates, each value contains 2 or 3 floats}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Loads a mesh from a file.}
\details{
The function loads mesh from the specified file and returns it. If the mesh cannot be read, throws an error Vertex attributes (i.e. space and texture coodinates, normals and colors) are returned in same-sized arrays with corresponding elements having the same indices. This means that if a face uses a vertex with a normal or a texture coordinate with different indices (which is typical for OBJ files for example), this vertex will be duplicated for each face it uses.

Currently, the following file formats are supported:

\itemize{
\item Wavefront obj file *.obj (ONLY TRIANGULATED FACES)
\item Polygon File Format *.ply
}

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
