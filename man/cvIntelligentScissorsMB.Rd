% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvIntelligentScissorsMB}
\alias{cvIntelligentScissorsMB}
\title{Intelligent Scissors image segmentation}
\usage{cvIntelligentScissorsMB(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvIntelligentScissorsMB} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Intelligent Scissors image segmentation.}
\details{
This class is used to find the path (contour) between two points which can be used for image segmentation.
Usage example:
\strong{C++ 头文件：}\code{#include <opencv2/imgproc/segmentation.hpp>}
\strong{构造}
\preformatted{
cvIntelligentScissorsMB()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvIntelligentScissorsMB(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{applyImage(image)}：Specify input image and extract image features.
\item \code{applyImageFeatures(non_edge, gradient_direction, gradient_magnitude, image = NULL)}：Specify custom features of input image.
\item \code{buildMap(sourcePt)}：Prepares a map of optimal paths for the given source point on the image.
\item \code{getContour(targetPt, backward = FALSE, dst = NULL)}：Extracts optimal contour for the given target point on the image.
\item \code{setEdgeFeatureCannyParameters(threshold1, threshold2, apertureSize = 3, L2gradient = FALSE)}：Switch edge feature extractor to use Canny edge detector.
\item \code{setEdgeFeatureZeroCrossingParameters(gradient_magnitude_min_value = 0.0)}：Switch to "Laplacian Zero-Crossing" edge feature extractor and specify its parameters.
\item \code{setGradientMagnitudeMaxLimit(gradient_magnitude_threshold_max = 0.0)}：Specify gradient magnitude max value threshold.
\item \code{setWeights(weight_non_edge, weight_gradient_direction, weight_gradient_magnitude)}：Specify weights of feature functions.
}
}
\keyword{opencv}
