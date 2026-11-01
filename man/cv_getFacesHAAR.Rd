% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getFacesHAAR}
\alias{cv_getFacesHAAR}
\title{cv_getFacesHAAR}
\usage{cv_getFacesHAAR(image, face_cascade_name, dst = NULL)}
\arguments{
\item{image}{含义见下方 C++ 签名。}
\item{face_cascade_name}{含义见下方 C++ 签名。}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{R 侧入口 \code{cv_getFacesHAAR}，对应 C++ 的 \code{cv::face::getFacesHAAR}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/face/facemark_train.hpp>}
}
\keyword{opencv}
