% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createLineSegmentDetector}
\alias{cv_createLineSegmentDetector}
\title{Creates a smart pointer to a LineSegmentDetector object and initializes it}
\usage{cv_createLineSegmentDetector(refine = LSD_REFINE_STD, scale = 0.8,
    sigma_scale = 0.6, quant = 2, ang_th = 22.5, log_eps = 0,
    density_th = 0.7, n_bins = 1024)}
\arguments{
\item{refine}{The way found lines will be refined, see LineSegmentDetectorModes}
\item{scale}{The scale of the image that will be used to find the lines. Range (0..1].}
\item{sigma_scale}{Sigma for Gaussian filter. It is computed as sigma = sigma_scale/scale.}
\item{quant}{Bound to the quantization error on the gradient norm.}
\item{ang_th}{Gradient angle tolerance in degrees.}
\item{log_eps}{Detection threshold: -log10(NFA) > log_eps. Used only when advance refinement is chosen.}
\item{density_th}{Minimal density of aligned region points in the enclosing rectangle.}
\item{n_bins}{Number of bins in pseudo-ordering of gradient modulus.}
}
\value{\code{Ptr<LineSegmentDetector>} 对应的 R 对象。}
\description{Creates a smart pointer to a LineSegmentDetector object and initializes it.}
\details{
The LineSegmentDetector algorithm is defined using the standard values. Only advanced users may want to edit those, as to tailor it for their own application.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
