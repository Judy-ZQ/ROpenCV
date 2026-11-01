% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGridBoard}
\alias{cvGridBoard}
\title{Planar board with grid arrangement of markers}
\usage{cvGridBoard(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGridBoard} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Planar board with grid arrangement of markers.}
\details{
More common type of board. All markers are placed in the same plane in a grid arrangement. The board image can be drawn using generateImage method.
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_board.hpp>}
\strong{构造}
\preformatted{
cvGridBoard(size, markerLength, markerSeparation, dictionary, ids = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGridBoard(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{generateImage(outSize, marginSize = 0, borderBits = 1, dst = NULL)}：Draw a planar board.
\item \code{getDictionary()}：return the Dictionary of markers employed for this board
\item \code{getGridSize()}
\item \code{getIds()}：vector of the identifiers of the markers in the board (should be the same size as objPoints)
\item \code{getMarkerLength()}
\item \code{getMarkerSeparation()}
\item \code{getObjPoints()}：return array of object points of all the marker corners in the board.
\item \code{getRightBottomCorner()}：get coordinate of the bottom right corner of the board, is set when calling the function create
\item \code{matchImagePoints(detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL)}：Given a board configuration and a set of detected markers, returns the corresponding image points and object points, can be used in solvePnP
}
}
\seealso{父类 \code{\link{cvBoard}}（\code{cv::aruco::Board}）}
\keyword{opencv}
