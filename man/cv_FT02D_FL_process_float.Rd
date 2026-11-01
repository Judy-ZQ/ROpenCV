% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FT02D_FL_process_float}
\alias{cv_FT02D_FL_process_float}
\title{Sligtly less accurate version of -transfrom computation optimized for higher speed}
\usage{cv_FT02D_FL_process_float(matrix, radius, dst = NULL)}
\arguments{
\item{matrix}{Input 3 channels matrix.}
\item{radius}{Radius of the \code{ft::LINEAR} basic function.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Sligtly less accurate version of -transfrom computation optimized for higher speed. The methods counts with linear basic function.}
\details{
This function computes F-transfrom and inverse F-transfotm using linear basic function in one step. It is ~9 times faster then \code{ft::FT02D_process} method and more accurate than \code{ft::FT02D_FL_process} method.

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_F0_math.hpp>}
}
\keyword{opencv}
