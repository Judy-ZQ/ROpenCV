% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createGuidedFilter}
\alias{cv_createGuidedFilter}
\title{Factory method, create instance of GuidedFilter and produce initialization routines}
\usage{cv_createGuidedFilter(guide, radius, eps, scale = 1)}
\arguments{
\item{guide}{guided image (or array of images) with up to 3 channels, if it have more then 3 channels then only first 3 channels will be used.}
\item{radius}{radius of Guided Filter.}
\item{eps}{regularization term of Guided Filter. is similar to the sigma in the color space into bilateralFilter.}
\item{scale}{subsample factor of Fast Guided Filter, use a scale less than 1 to speeds up computation with almost no visible degradation. (e.g. scale==0.5 shrinks the image by 2x inside the filter)}
}
\value{\code{Ptr<GuidedFilter>} 对应的 R 对象。}
\description{Factory method, create instance of GuidedFilter and produce initialization routines.}
\details{
For more details about (Fast) Guided Filter parameters, see the original articles [122] [121] .

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
