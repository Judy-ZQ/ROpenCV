% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_compareHist}
\alias{cv_compareHist}
\title{Compares two histograms}
\usage{cv_compareHist(H1, H2, method)}
\arguments{
\item{H1}{First compared histogram.}
\item{H2}{Second compared histogram of the same size as H1 .}
\item{method}{Comparison method, see HistCompMethods}
}
\value{数值标量。}
\description{Compares two histograms.}
\details{
The function cv::compareHist compares two dense or two sparse histograms using the specified method.

The function returns .

While the function works well with 1-, 2-, 3-dimensional dense histograms, it may not be suitable for high-dimensional sparse histograms. In such histograms, because of aliasing and sampling problems, the coordinates of non-zero histogram bins can slightly shift. To compare such histograms or more general sparse configurations of weighted points, consider using the EMD function.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
