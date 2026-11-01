% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_rectify3Collinear}
\alias{cv_rectify3Collinear}
\title{cv_rectify3Collinear}
\usage{cv_rectify3Collinear(cameraMatrix1, distCoeffs1, cameraMatrix2, distCoeffs2,
    cameraMatrix3, distCoeffs3, imgpt1, imgpt3, imageSize, Rmat12, Tmat12,
    Rmat13, Tmat13, alpha, newImgSize, flags, Rmat1 = NULL, Rmat2 = NULL,
    Rmat3 = NULL, Pmat1 = NULL, Pmat2 = NULL, Pmat3 = NULL, Qmat = NULL)}
\arguments{
\item{cameraMatrix1}{含义见下方 C++ 签名。}
\item{distCoeffs1}{含义见下方 C++ 签名。}
\item{cameraMatrix2}{含义见下方 C++ 签名。}
\item{distCoeffs2}{含义见下方 C++ 签名。}
\item{cameraMatrix3}{含义见下方 C++ 签名。}
\item{distCoeffs3}{含义见下方 C++ 签名。}
\item{imgpt1}{含义见下方 C++ 签名。}
\item{imgpt3}{含义见下方 C++ 签名。}
\item{imageSize}{含义见下方 C++ 签名。}
\item{Rmat12}{含义见下方 C++ 签名。}
\item{Tmat12}{含义见下方 C++ 签名。}
\item{Rmat13}{含义见下方 C++ 签名。}
\item{Tmat13}{含义见下方 C++ 签名。}
\item{alpha}{含义见下方 C++ 签名。}
\item{newImgSize}{含义见下方 C++ 签名。}
\item{flags}{含义见下方 C++ 签名。}
\item{Rmat1}{含义见下方 C++ 签名。}
\item{Rmat2}{含义见下方 C++ 签名。}
\item{Rmat3}{含义见下方 C++ 签名。}
\item{Pmat1}{含义见下方 C++ 签名。}
\item{Pmat2}{含义见下方 C++ 签名。}
\item{Pmat3}{含义见下方 C++ 签名。}
\item{Qmat}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{float}）挂在 \code{attr(x, "value")} 上。}
\description{R 侧入口 \code{cv_rectify3Collinear}，对应 C++ 的 \code{cv::rectify3Collinear}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stereo.hpp>}
}
\keyword{opencv}
