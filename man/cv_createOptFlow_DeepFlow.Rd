% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createOptFlow_DeepFlow}
\alias{cv_createOptFlow_DeepFlow}
\title{DeepFlow optical flow algorithm implementation}
\usage{cv_createOptFlow_DeepFlow()}
\value{\code{Ptr<DenseOpticalFlow>} 对应的 R 对象。}
\description{DeepFlow optical flow algorithm implementation.}
\details{
The class implements the DeepFlow optical flow algorithm described in [297] . See also http://lear.inrialpes.fr/src/deepmatching/ . Parameters - class fields - that may be modified after creating a class instance:

\itemize{
\item member float alpha Smoothness assumption weight
\item member float delta Color constancy assumption weight
\item member float gamma Gradient constancy weight
\item member float sigma Gaussian smoothing parameter
\item member int minSize Minimal dimension of an image in the pyramid (next, smaller images in the pyramid are generated until one of the dimensions reaches this size)
\item member float downscaleFactor Scaling factor in the image pyramid (must be < 1)
\item member int fixedPointIterations How many iterations on each level of the pyramid
\item member int sorIterations Iterations of Succesive Over-Relaxation (solver)
\item member float omega Relaxation factor in SOR
}

\strong{C++ 头文件：}\code{#include <opencv2/optflow.hpp>}
}
\keyword{opencv}
