% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_blobFromImages}
\alias{cv_blobFromImages}
\title{Creates 4-dimensional blob from series of images}
\usage{cv_blobFromImages(images, scalefactor = 1, size = NULL, mean = NULL,
    swapRB = FALSE, crop = FALSE, ddepth = CV_32F)}
\arguments{
\item{images}{input images (all with 1-, 3- or 4-channels).}
\item{scalefactor}{multiplier for \code{images} values.}
\item{size}{spatial size for output image}
\item{mean}{scalar with mean values which are subtracted from channels. Values are intended to be in (mean-R, mean-G, mean-B) order if \code{image} has BGR ordering and \code{swapRB} is true.}
\item{swapRB}{flag which indicates that swap first and last channels in 3-channel image is necessary.}
\item{crop}{flag which indicates whether image will be cropped after resize or not}
\item{ddepth}{Depth of output blob. Choose CV_32F or CV_8U.}
}
\value{4-dimensional Mat with NCHW dimensions order.}
\description{Creates 4-dimensional blob from series of images. Optionally resizes and crops \code{images} from center, subtract \code{mean} values, scales values by \code{scalefactor}, swap Blue and Red channels.}
\details{
if \code{crop} is true, input image is resized so one side after resize is equal to corresponding dimension in \code{size} and another one is equal or larger. Then, crop from the center is performed. If \code{crop} is false, direct resize without cropping and preserving aspect ratio is performed.

\strong{注意：}The order and usage of \code{scalefactor} and \code{mean} are (input - mean) * scalefactor.

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
