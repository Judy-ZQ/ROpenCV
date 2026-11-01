% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGeneralizedHoughGuil}
\alias{cvGeneralizedHoughGuil}
\title{finds arbitrary template in the grayscale image using Generalized Hough Transform}
\usage{cvGeneralizedHoughGuil(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGeneralizedHoughGuil} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{finds arbitrary template in the grayscale image using Generalized Hough Transform}
\details{
Detects position, translation and rotation [115] .
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGeneralizedHoughGuil(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{detect(edges, dx, dy, positions = NULL, votes = NULL)}：find template on image
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getAngleEpsilon()}
\item \code{getAngleStep()}
\item \code{getAngleThresh()}
\item \code{getCannyHighThresh()}
\item \code{getCannyLowThresh()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDp()}
\item \code{getLevels()}
\item \code{getMaxAngle()}
\item \code{getMaxBufferSize()}
\item \code{getMaxScale()}
\item \code{getMinAngle()}
\item \code{getMinDist()}
\item \code{getMinScale()}
\item \code{getPosThresh()}
\item \code{getScaleStep()}
\item \code{getScaleThresh()}
\item \code{getXi()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAngleEpsilon(angleEpsilon)}：Maximal difference between angles that treated as equal.
\item \code{setAngleStep(angleStep)}：Angle step in degrees.
\item \code{setAngleThresh(angleThresh)}：Angle votes threshold.
\item \code{setCannyHighThresh(cannyHighThresh)}：Canny high threshold.
\item \code{setCannyLowThresh(cannyLowThresh)}：Canny low threshold.
\item \code{setDp(dp)}：Inverse ratio of the accumulator resolution to the image resolution.
\item \code{setLevels(levels)}：Feature table levels.
\item \code{setMaxAngle(maxAngle)}：Maximal rotation angle to detect in degrees.
\item \code{setMaxBufferSize(maxBufferSize)}：Maximal size of inner buffers.
\item \code{setMaxScale(maxScale)}：Maximal scale to detect.
\item \code{setMinAngle(minAngle)}：Minimal rotation angle to detect in degrees.
\item \code{setMinDist(minDist)}：Minimum distance between the centers of the detected objects.
\item \code{setMinScale(minScale)}：Minimal scale to detect.
\item \code{setPosThresh(posThresh)}：Position votes threshold.
\item \code{setScaleStep(scaleStep)}：Scale step.
\item \code{setScaleThresh(scaleThresh)}：Scale votes threshold.
\item \code{setTemplate(edges, dx, dy, templCenter = c(-1, -1))}：set template to search
\item \code{setXi(xi)}：Angle difference in degrees between two points in feature.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvGeneralizedHough}}（\code{cv::GeneralizedHough}）}
\keyword{opencv}
