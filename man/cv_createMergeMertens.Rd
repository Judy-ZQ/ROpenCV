% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createMergeMertens}
\alias{cv_createMergeMertens}
\title{Creates MergeMertens object}
\usage{cv_createMergeMertens(contrast_weight = 1, saturation_weight = 1,
    exposure_weight = 0)}
\arguments{
\item{contrast_weight}{contrast measure weight. See MergeMertens.}
\item{saturation_weight}{saturation measure weight}
\item{exposure_weight}{well-exposedness measure weight}
}
\value{\code{Ptr<MergeMertens>} 对应的 R 对象。}
\description{Creates MergeMertens object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
