% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_initWideAngleProjMap}
\alias{cv_initWideAngleProjMap}
\title{initializes maps for remap for wide-angle}
\usage{cv_initWideAngleProjMap(cameraMatrix, distCoeffs, imageSize, destImageWidth,
    m1type, projType = PROJ_SPHERICAL_EQRECT, alpha = 0, map1 = NULL,
    map2 = NULL)}
\arguments{
\item{cameraMatrix}{含义见下方 C++ 签名。}
\item{distCoeffs}{含义见下方 C++ 签名。}
\item{imageSize}{含义见下方 C++ 签名。}
\item{destImageWidth}{含义见下方 C++ 签名。}
\item{m1type}{含义见下方 C++ 签名。}
\item{projType}{含义见下方 C++ 签名。}
\item{alpha}{含义见下方 C++ 签名。}
\item{map1}{含义见下方 C++ 签名。}
\item{map2}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{float}）挂在 \code{attr(x, "value")} 上。}
\description{initializes maps for remap for wide-angle}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
