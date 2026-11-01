% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createAMFilter}
\alias{cv_createAMFilter}
\title{Factory method, create instance of AdaptiveManifoldFilter and produce some initialization routines}
\usage{cv_createAMFilter(sigma_s, sigma_r, adjust_outliers = FALSE)}
\arguments{
\item{sigma_s}{spatial standard deviation.}
\item{sigma_r}{color space standard deviation, it is similar to the sigma in the color space into bilateralFilter.}
\item{adjust_outliers}{optional, specify perform outliers adjust operation or not, (Eq. 9) in the original paper.}
}
\value{\code{Ptr<AdaptiveManifoldFilter>} 对应的 R 对象。}
\description{Factory method, create instance of AdaptiveManifoldFilter and produce some initialization routines.}
\details{
For more details about Adaptive Manifold Filter parameters, see the original article [103] .

\strong{注意：}Joint images with CV_8U and CV_16U depth converted to images with CV_32F depth and [0; 1] color range before processing. Hence color space sigma sigma_r must be in [0; 1] range, unlike same sigmas in bilateralFilter and dtFilter functions.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
