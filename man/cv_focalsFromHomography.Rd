% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_focalsFromHomography}
\alias{cv_focalsFromHomography}
\title{Tries to estimate focal lengths from the given homography under the assumption that the camera undergoes rotations around its centre only}
\usage{cv_focalsFromHomography(H, f0 = NULL, f1 = NULL, f0_ok = NULL, f1_ok = NULL)}
\arguments{
\item{H}{Homography.}
\item{f0}{Estimated focal length along X axis.}
\item{f1}{Estimated focal length along Y axis.}
\item{f0_ok}{True, if f0 was estimated successfully, false otherwise.}
\item{f1_ok}{True, if f1 was estimated successfully, false otherwise.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Tries to estimate focal lengths from the given homography under the assumption that the camera undergoes rotations around its centre only.}
\details{
See "Construction of Panoramic Image Mosaics with Global and Local Alignment" by Heung-Yeung Shum and Richard Szeliski.

\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/autocalib.hpp>}
}
\keyword{opencv}
