% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createStructuredEdgeDetection}
\alias{cv_createStructuredEdgeDetection}
\title{The only constructor}
\usage{cv_createStructuredEdgeDetection(model, howToGetFeatures = NULL)}
\arguments{
\item{model}{: name of the file where the model is stored}
\item{howToGetFeatures}{: optional object inheriting from RFFeatureGetter. You need it only if you would like to train your own forest, pass NULL otherwise}
}
\value{\code{Ptr<StructuredEdgeDetection>} 对应的 R 对象。}
\description{The only constructor}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/structured_edge_detection.hpp>}
}
\keyword{opencv}
