% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvArucoDetector}
\alias{cvArucoDetector}
\title{The main functionality of ArucoDetector class is detection of markers in an image with detectMarkers method}
\usage{cvArucoDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvArucoDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The main functionality of ArucoDetector class is detection of markers in an image with detectMarkers method.}
\details{
After detecting some markers in the image, you can try to find undetected markers from this dictionary with refineDetectedMarkers method.
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_detector.hpp>}
\strong{构造}
\preformatted{
cvArucoDetector(dictionary = NULL, detectorParams = list(), refineParams = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvArucoDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{detectMarkers(image, corners = NULL, ids = NULL, rejectedImgPoints = NULL)}：Basic marker detection.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDetectorParameters()}
\item \code{getDictionary()}
\item \code{getRefineParameters()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{refineDetectedMarkers(image, board, detectedIds = NULL, cameraMatrix = NULL, distCoeffs = NULL, detectedCorners = NULL, rejectedCorners = NULL, recoveredIdxs = NULL)}：Refine not detected markers based on the already detected and the board layout.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setDetectorParameters(detectorParameters)}
\item \code{setDictionary(dictionary)}
\item \code{setRefineParameters(refineParameters)}
\item \code{write(fs, name)}：simplified API for language bindings
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
