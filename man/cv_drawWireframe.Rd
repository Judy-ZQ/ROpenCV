% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawWireframe}
\alias{cv_drawWireframe}
\title{Draw a wireframe of a triangle mesh}
\usage{cv_drawWireframe(img = NULL, pts2d, tris, color, type = LINE_8,
    cullBackface = FALSE)}
\arguments{
\item{img}{the output image}
\item{pts2d}{the 2d points obtained by projectPoints}
\item{tris}{triangle face connectivity}
\item{color}{line color}
\item{type}{line type. See LineTypes.}
\item{cullBackface}{enable back-face culling based on CCW order}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Draw a wireframe of a triangle mesh}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/rapid.hpp>}
}
\keyword{opencv}
