% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createEdgeBoxes}
\alias{cv_createEdgeBoxes}
\title{Creates a Edgeboxes}
\usage{cv_createEdgeBoxes(alpha = 0.65, beta = 0.75, eta = 1, minScore = 0.01,
    maxBoxes = 10000, edgeMinMag = 0.1, edgeMergeThr = 0.5,
    clusterMinMag = 0.5, maxAspectRatio = 3, minBoxArea = 1000, gamma = 2,
    kappa = 1.5)}
\arguments{
\item{alpha}{step size of sliding window search.}
\item{beta}{nms threshold for object proposals.}
\item{eta}{adaptation rate for nms threshold.}
\item{minScore}{min score of boxes to detect.}
\item{maxBoxes}{max number of boxes to detect.}
\item{edgeMinMag}{edge min magnitude. Increase to trade off accuracy for speed.}
\item{edgeMergeThr}{edge merge threshold. Increase to trade off accuracy for speed.}
\item{clusterMinMag}{cluster min magnitude. Increase to trade off accuracy for speed.}
\item{maxAspectRatio}{max aspect ratio of boxes.}
\item{minBoxArea}{minimum area of boxes.}
\item{gamma}{affinity sensitivity.}
\item{kappa}{scale sensitivity.}
}
\value{\code{Ptr<EdgeBoxes>} 对应的 R 对象。}
\description{Creates a Edgeboxes.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edgeboxes.hpp>}
}
\keyword{opencv}
