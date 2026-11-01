% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvCharucoDetector}
\alias{cvCharucoDetector}
\title{cv::aruco::CharucoDetector}
\usage{cvCharucoDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvCharucoDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::aruco::CharucoDetector} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::aruco::CharucoDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/charuco_detector.hpp>}
\strong{构造}
\preformatted{
cvCharucoDetector(board, charucoParams = list(), detectorParams = list(), refineParams = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvCharucoDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{detectBoard(image, markerIds = NULL, charucoCorners = NULL, charucoIds = NULL, markerCorners = NULL)}：detect aruco markers and interpolate position of ChArUco board corners
\item \code{detectDiamonds(image, markerIds = NULL, diamondCorners = NULL, diamondIds = NULL, markerCorners = NULL)}：Detect ChArUco Diamond markers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBoard()}
\item \code{getCharucoParameters()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDetectorParameters()}
\item \code{getRefineParameters()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBoard(board)}
\item \code{setCharucoParameters(charucoParameters = NULL)}
\item \code{setDetectorParameters(detectorParameters)}
\item \code{setRefineParameters(refineParameters)}：Member Data Documentation
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
