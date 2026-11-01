% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_LUT}
\alias{cv_LUT}
\title{Performs a look-up table transform of an array}
\usage{cv_LUT(src, lut, dst = NULL)}
\arguments{
\item{src}{input array of 8-bit elements.}
\item{lut}{look-up table of 256 elements; in case of multi-channel input array, the table should either have a single channel (in this case the same table is used for all channels) or the same number of channels as in the input array.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Performs a look-up table transform of an array.}
\details{
The function LUT fills the output array with values from the look-up table. Indices of the entries are taken from the input array. That is, the function processes each element of src as follows:

where

\strong{注意：}CV_16F/CV_16BF/CV_Bool/CV_64U/CV_64S/CV_32U are not supported for lut.

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\seealso{\code{\link{cv_convertScaleAbs}}}
\keyword{opencv}
