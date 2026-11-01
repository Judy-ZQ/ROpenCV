% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGeneralizedHoughBallard}
\alias{cvGeneralizedHoughBallard}
\title{finds arbitrary template in the grayscale image using Generalized Hough Transform}
\usage{cvGeneralizedHoughBallard(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGeneralizedHoughBallard} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{finds arbitrary template in the grayscale image using Generalized Hough Transform}
\details{
Detects position only without translation and rotation [15] .
\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGeneralizedHoughBallard(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{detect(edges, dx, dy, positions = NULL, votes = NULL)}：find template on image
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getCannyHighThresh()}
\item \code{getCannyLowThresh()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDp()}
\item \code{getLevels()}
\item \code{getMaxBufferSize()}
\item \code{getMinDist()}
\item \code{getVotesThreshold()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setCannyHighThresh(cannyHighThresh)}：Canny high threshold.
\item \code{setCannyLowThresh(cannyLowThresh)}：Canny low threshold.
\item \code{setDp(dp)}：Inverse ratio of the accumulator resolution to the image resolution.
\item \code{setLevels(levels)}：R-Table levels.
\item \code{setMaxBufferSize(maxBufferSize)}：Maximal size of inner buffers.
\item \code{setMinDist(minDist)}：Minimum distance between the centers of the detected objects.
\item \code{setTemplate(edges, dx, dy, templCenter = c(-1, -1))}：set template to search
\item \code{setVotesThreshold(votesThreshold)}：The accumulator threshold for the template centers at the detection stage. The smaller it is, the more false positions may be detected.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvGeneralizedHough}}（\code{cv::GeneralizedHough}）}
\keyword{opencv}
