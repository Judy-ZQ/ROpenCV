% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findChessboardCorners}
\alias{cv_findChessboardCorners}
\title{Finds the positions of internal corners of the chessboard}
\usage{cv_findChessboardCorners(image, patternSize, flags, dst = NULL)}
\arguments{
\item{image}{Source chessboard view. It must be an 8-bit grayscale or color image.}
\item{patternSize}{Number of inner corners per a chessboard row and column ( patternSize = cv::Size(points_per_row,points_per_colum) = cv::Size(columns,rows) ).}
\item{flags}{Various operation flags that can be zero or a combination of the following values: CALIB_CB_ADAPTIVE_THRESH Use adaptive thresholding to convert the image to black and white, rather than a fixed threshold level (computed from the average image brightness). CALIB_CB_NORMALIZE_IMAGE Normalize the image gamma with equalizeHist before applying fixed or adaptive thresholding. CALIB_CB_FILTER_QUADS Use additional criteria (like contour area, perimeter, square-like shape) to filter out false quads extracted at the contour retrieval stage. CALIB_CB_FAST_CHECK Run a fast check on the image that looks for chessboard corners, and shortcut the call if none is found. This can drastically speed up the call in the degenerate condition when no chessboard is observed. CALIB_CB_PLAIN All other flags are ignored. The input image is taken as is. No image processing is done to improve to find the checkerboard. This has the effect of speeding up the execution of the function but could lead to not recognizing the checkerboard if the image is not previously binarized in the appropriate manner.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the positions of internal corners of the chessboard.}
\details{
The function attempts to determine whether the input image is a view of the chessboard pattern and locate the internal chessboard corners. The function returns a non-zero value if all of the corners are found and they are placed in a certain order (row by row, left to right in every row). Otherwise, if the function fails to find all the corners or reorder them, it returns 0. For example, a regular chessboard has 8 x 8 squares and 7 x 7 internal corners, that is, points where the black squares touch each other. The detected coordinates are approximate, and to determine their positions more accurately, the function calls cornerSubPix. You also may use the function cornerSubPix with different parameters if returned coordinates are not accurate enough.

Sample usage of detecting and drawing chessboard corners: :

Use gen_pattern.py (Create calibration pattern) to create checkerboard.

\strong{注意：}The function requires white space (like a square-thick border, the wider the better) around the board to make the detection more robust in various environments. Otherwise, if there is no border and the background is dark, the outer black squares cannot be segmented properly and so the square grouping and ordering algorithm fails.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
