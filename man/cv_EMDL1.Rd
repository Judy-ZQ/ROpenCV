% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_EMDL1}
\alias{cv_EMDL1}
\title{Computes the "minimal work" distance between two weighted point configurations base on the papers "EMD-L1: An efficient and Robust Algorith}
\usage{cv_EMDL1(signature1, signature2)}
\arguments{
\item{signature1}{First signature, a single column floating-point matrix. Each row is the value of the histogram in each bin.}
\item{signature2}{Second signature of the same format and size as signature1.}
}
\value{数值标量。}
\description{Computes the "minimal work" distance between two weighted point configurations base on the papers "EMD-L1: An efficient and Robust Algorithm for comparing histogram-based descriptors", by Haibin Ling and Kazunori Okuda; and "The Earth Mover's Distance is the Mallows Distance: Some Insights from Statistics", by Elizaveta Levina and Peter Bickel.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/shape/emdL1.hpp>}
}
\keyword{opencv}
