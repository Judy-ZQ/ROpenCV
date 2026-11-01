% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStitcher}
\alias{cvStitcher}
\title{High level image stitcher}
\usage{cvStitcher(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStitcher} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{High level image stitcher.}
\details{
It's possible to use this class without being aware of the entire stitching pipeline. However, to be able to achieve higher stitching stability and quality of the final images at least being familiar with the theory is recommended.
\itemize{
\item A basic example on image stitching can be found at opencv_source_code/samples/cpp/stitching.cpp
\item A basic example on image stitching in Python can be found at opencv_source_code/samples/python/stitching.py
\item A detailed example on image stitching can be found at opencv_source_code/samples/cpp/stitching_detailed.cpp
}
\strong{C++ 头文件：}\code{#include <opencv2/stitching.hpp>}
\strong{构造}
\preformatted{
cvStitcher(mode = PANORAMA)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStitcher(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{composePanorama(images, dst = NULL)}：These functions try to compose the given images (or images stored internally from the other function calls) into the final pano under the assumption that the image transformations were estimated before.
\item \code{compositingResol()}
\item \code{estimateTransform(images, masks = NULL)}：These functions try to match the given images and to estimate rotations of each camera.
\item \code{interpolationFlags()}
\item \code{panoConfidenceThresh()}
\item \code{registrationResol()}
\item \code{seamEstimationResol()}
\item \code{setCompositingResol(resol_mpx)}
\item \code{setInterpolationFlags(interp_flags)}
\item \code{setPanoConfidenceThresh(conf_thresh)}
\item \code{setRegistrationResol(resol_mpx)}
\item \code{setSeamEstimationResol(resol_mpx)}
\item \code{setWaveCorrection(flag)}
\item \code{stitch(images, masks, dst = NULL)}：These functions try to stitch the given images.
\item \code{waveCorrection()}
\item \code{workScale()}：Member Data Documentation
}
}
\keyword{opencv}
