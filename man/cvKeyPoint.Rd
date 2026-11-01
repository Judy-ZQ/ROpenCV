% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKeyPoint}
\alias{cvKeyPoint}
\title{Data structure for salient point detectors}
\usage{cvKeyPoint(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvKeyPoint} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Data structure for salient point detectors.}
\details{
The class instance stores a keypoint, i.e. a point feature found by one of many available keypoint detectors, such as Harris corner detector, FAST, StarDetector, SURF, SIFT etc.
The keypoint is characterized by the 2D position, scale (proportional to the diameter of the neighborhood that needs to be taken into account), orientation and some other parameters. The keypoint neighborhood is then analyzed by another algorithm that builds a descriptor (usually represented as a feature vector). The keypoints representing the same object in different images can then be matched using KDTree or another method.
\strong{C++ 头文件：}\code{#include <opencv2/core/types.hpp>}
\strong{构造}
\preformatted{
cvKeyPoint()
cvKeyPoint(x, y, size, angle = -1, response = 0, octave = 0, class_id = -1)
}
}
\keyword{opencv}
