% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createDTFilter}
\alias{cv_createDTFilter}
\title{Factory method, create instance of DTFilter and produce initialization routines}
\usage{cv_createDTFilter(guide, sigmaSpatial, sigmaColor, mode = DTF_NC, numIters = 3)}
\arguments{
\item{guide}{guided image (used to build transformed distance, which describes edge structure of guided image).}
\item{sigmaSpatial}{parameter in the original article, it's similar to the sigma in the coordinate space into bilateralFilter.}
\item{sigmaColor}{parameter in the original article, it's similar to the sigma in the color space into bilateralFilter.}
\item{mode}{one form three modes DTF_NC, DTF_RF and DTF_IC which corresponds to three modes for filtering 2D signals in the article.}
\item{numIters}{optional number of iterations used for filtering, 3 is quite enough.}
}
\value{\code{Ptr<DTFilter>} 对应的 R 对象。}
\description{Factory method, create instance of DTFilter and produce initialization routines.}
\details{
For more details about Domain Transform filter parameters, see the original article [102] and Domain Transform filter homepage.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
