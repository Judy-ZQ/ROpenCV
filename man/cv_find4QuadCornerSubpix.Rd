% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_find4QuadCornerSubpix}
\alias{cv_find4QuadCornerSubpix}
\title{finds subpixel-accurate positions of the chessboard corners}
\usage{cv_find4QuadCornerSubpix(img, corners = NULL, region_size)}
\arguments{
\item{img}{含义见下方 C++ 签名。}
\item{corners}{含义见下方 C++ 签名。}
\item{region_size}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{finds subpixel-accurate positions of the chessboard corners}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
