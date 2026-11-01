% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createFastGlobalSmootherFilter}
\alias{cv_createFastGlobalSmootherFilter}
\title{Factory method, create instance of FastGlobalSmootherFilter and execute the initialization routines}
\usage{cv_createFastGlobalSmootherFilter(guide, lambda, sigma_color,
    lambda_attenuation = 0.25, num_iter = 3)}
\arguments{
\item{guide}{image serving as guide for filtering. It should have 8-bit depth and either 1 or 3 channels.}
\item{lambda}{parameter defining the amount of regularization}
\item{sigma_color}{parameter, that is similar to color space sigma in bilateralFilter.}
\item{lambda_attenuation}{internal parameter, defining how much lambda decreases after each iteration. Normally, it should be 0.25. Setting it to 1.0 may lead to streaking artifacts.}
\item{num_iter}{number of iterations used for filtering, 3 is usually enough.}
}
\value{\code{Ptr<FastGlobalSmootherFilter>} 对应的 R 对象。}
\description{Factory method, create instance of FastGlobalSmootherFilter and execute the initialization routines.}
\details{
For more details about Fast Global Smoother parameters, see the original paper [194]. However, please note that there are several differences. Lambda attenuation described in the paper is implemented a bit differently so do not expect the results to be identical to those from the paper; sigma_color values from the paper should be multiplied by 255.0 to achieve the same effect. Also, in case of image filtering where source and guide image are the same, authors propose to dynamically update the guide image after each iteration. To maximize the performance this feature was not implemented here.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
