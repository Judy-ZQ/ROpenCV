% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBoard}
\alias{cvBoard}
\title{Board of ArUco markers}
\usage{cvBoard(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBoard} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Board of ArUco markers.}
\details{
A board is a set of markers in the 3D space with a common coordinate system. The common form of a board of marker is a planar (2D) board, however any 3D layout can be used. A Board object is composed by:
\itemize{
\item The object points of the marker corners, i.e. their coordinates respect to the board system.
\item The dictionary which indicates the type of markers of the board
\item The identifier of all the markers in the board.
}
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_board.hpp>}
\strong{构造}
\preformatted{
cvBoard(objPoints, dictionary, ids)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBoard(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{generateImage(outSize, marginSize = 0, borderBits = 1, dst = NULL)}：Draw a planar board.
\item \code{getDictionary()}：return the Dictionary of markers employed for this board
\item \code{getIds()}：vector of the identifiers of the markers in the board (should be the same size as objPoints)
\item \code{getObjPoints()}：return array of object points of all the marker corners in the board.
\item \code{getRightBottomCorner()}：get coordinate of the bottom right corner of the board, is set when calling the function create
\item \code{matchImagePoints(detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL)}：Given a board configuration and a set of detected markers, returns the corresponding image points and object points, can be used in solvePnP
}
}
\keyword{opencv}
