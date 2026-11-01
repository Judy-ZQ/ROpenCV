% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_grabCut}
\alias{cv_grabCut}
\title{Runs the GrabCut algorithm}
\usage{cv_grabCut(img, mask = NULL, rect, bgdModel = NULL, fgdModel = NULL,
    iterCount, mode = GC_EVAL)}
\arguments{
\item{img}{Input 8-bit 3-channel image.}
\item{mask}{Input/output 8-bit single-channel mask. The mask is initialized by the function when mode is set to GC_INIT_WITH_RECT. Its elements may have one of the GrabCutClasses.}
\item{rect}{ROI containing a segmented object. The pixels outside of the ROI are marked as "obvious background". The parameter is only used when mode==GC_INIT_WITH_RECT .}
\item{bgdModel}{Temporary array for the background model. Do not modify it while you are processing the same image.}
\item{fgdModel}{Temporary arrays for the foreground model. Do not modify it while you are processing the same image.}
\item{iterCount}{Number of iterations the algorithm should make before returning the result. Note that the result can be refined with further calls with mode==GC_INIT_WITH_MASK or mode==GC_EVAL .}
\item{mode}{Operation mode that could be one of the GrabCutModes}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Runs the GrabCut algorithm.}
\details{
The function implements the GrabCut image segmentation algorithm.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
