% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvCharucoBoard}
\alias{cvCharucoBoard}
\title{ChArUco board is a planar chessboard where the markers are placed inside the white squares of a chessboard}
\usage{cvCharucoBoard(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvCharucoBoard} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{ChArUco board is a planar chessboard where the markers are placed inside the white squares of a chessboard.}
\details{
The benefits of ChArUco boards is that they provide both, ArUco markers versatility and chessboard corner precision, which is important for calibration and pose estimation. The board image can be drawn using generateImage method.
\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_board.hpp>}
\strong{构造}
\preformatted{
cvCharucoBoard(size, squareLength, markerLength, dictionary, ids = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvCharucoBoard(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{checkCharucoCornersCollinear(charucoIds)}：check whether the ChArUco markers are collinear
\item \code{generateImage(outSize, marginSize = 0, borderBits = 1, dst = NULL)}：Draw a planar board.
\item \code{getChessboardCorners()}：get CharucoBoard::chessboardCorners
\item \code{getChessboardSize()}
\item \code{getDictionary()}：return the Dictionary of markers employed for this board
\item \code{getIds()}：vector of the identifiers of the markers in the board (should be the same size as objPoints)
\item \code{getLegacyPattern()}
\item \code{getMarkerLength()}
\item \code{getObjPoints()}：return array of object points of all the marker corners in the board.
\item \code{getRightBottomCorner()}：get coordinate of the bottom right corner of the board, is set when calling the function create
\item \code{getSquareLength()}
\item \code{matchImagePoints(detectedCorners, detectedIds, objPoints = NULL, imgPoints = NULL)}：Given a board configuration and a set of detected markers, returns the corresponding image points and object points, can be used in solvePnP
\item \code{setLegacyPattern(legacyPattern)}：set legacy chessboard pattern.
}
}
\seealso{父类 \code{\link{cvBoard}}（\code{cv::aruco::Board}）}
\keyword{opencv}
