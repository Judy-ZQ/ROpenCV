% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvHOGDescriptor}
\alias{cvHOGDescriptor}
\title{Implementation of HOG (Histogram of Oriented Gradients) descriptor and object detector}
\usage{cvHOGDescriptor(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvHOGDescriptor} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Implementation of HOG (Histogram of Oriented Gradients) descriptor and object detector.}
\details{
the HOG descriptor algorithm introduced by Navneet Dalal and Bill Triggs [63] .
useful links:
https://hal.inria.fr/inria-00548512/document/
https://en.wikipedia.org/wiki/Histogram_of_oriented_gradients
https://software.intel.com/en-us/ipp-dev-reference-histogram-of-oriented-gradients-hog-descriptor
http://www.learnopencv.com/histogram-of-oriented-gradients
http://www.learnopencv.com/handwritten-digits-classification-an-opencv-c-python-tutorial
\strong{C++ 头文件：}\code{#include <opencv2/xobjdetect.hpp>}
\strong{构造}
\preformatted{
cvHOGDescriptor(filename)
cvHOGDescriptor(winSize = c(64, 128), blockSize = c(16, 16), blockStride = c(8, 8), cellSize = c(8, 8), nbins = 9, derivAperture = 1, winSigma = -1, histogramNormType, L2HysThreshold = 0.2, gammaCorrection = TRUE, nlevels = DEFAULT_NLEVELS, signedGradient = FALSE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvHOGDescriptor(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{checkDetectorSize()}：Checks if detector size equal to descriptor size.
\item \code{compute(img, winStride = NULL, padding = NULL, locations = NULL)}：Computes HOG descriptors of given image.
\item \code{computeGradient(img, grad = NULL, angleOfs = NULL, paddingTL = NULL, paddingBR = NULL)}：Computes gradients and quantized gradient orientations.
\item \code{detect(img, hitThreshold = 0, winStride = NULL, padding = NULL, searchLocations = NULL)}：Performs object detection without a multi-scale window.
\item \code{detectMultiScale(img, hitThreshold = 0, winStride = NULL, padding = NULL, scale = 1.05, groupThreshold = 2.0, useMeanshiftGrouping = FALSE)}：Detects objects of different sizes in the input image. The detected objects are returned as a list of rectangles.
\item \code{getDescriptorSize()}：Returns the number of coefficients required for the classification.
\item \code{getWinSigma()}：Returns winSigma value.
\item \code{load(filename, objname = '')}：loads HOGDescriptor parameters and coefficients for the linear SVM classifier from a file
\item \code{save(filename, objname = '')}：saves HOGDescriptor parameters and coefficients for the linear SVM classifier to a file
\item \code{setSVMDetector(svmdetector)}：Sets coefficients for the linear SVM classifier.
}
}
\keyword{opencv}
