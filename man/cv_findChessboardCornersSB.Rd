% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findChessboardCornersSB}
\alias{cv_findChessboardCornersSB}
\title{Finds the positions of internal corners of the chessboard using a sector based approach}
\usage{cv_findChessboardCornersSB(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{bool}）挂在 \code{attr(x, "value")} 上。}
\description{Finds the positions of internal corners of the chessboard using a sector based approach.}
\details{
The function is analog to findChessboardCorners but uses a localized radon transformation approximated by box filters being more robust to all sort of noise, faster on larger images and is able to directly return the sub-pixel position of the internal chessboard corners. The Method is based on the paper [74] "Accurate Detection and Localization of Checkerboard Corners for Calibration" demonstrating that the returned sub-pixel positions are more accurate than the one returned by cornerSubPix allowing a precise camera calibration for demanding applications.

In the case, the flags CALIB_CB_LARGER or CALIB_CB_MARKER are given, the result can be recovered from the optional meta array. Both flags are helpful to use calibration patterns exceeding the field of view of the camera. These oversized patterns allow more accurate calibrations as corners can be utilized, which are as close as possible to the image borders. For a consistent coordinate system across all images, the optional marker (see image below) can be used to move the origin of the board to the location where the black circle is located.

Use gen_pattern.py (Create calibration pattern) to create checkerboard.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

bool findChessboardCornersSB(InputArray image, Size patternSize, OutputArray corners, int flags, OutputArray meta)

inline bool findChessboardCornersSB(InputArray image, Size patternSize, OutputArray corners, int flags = 0)

}

\strong{注意：}The function requires a white boarder with roughly the same width as one of the checkerboard fields around the whole board to improve the detection in various environments. In addition, because of the localized radon transformation it is beneficial to use round corners for the field corners which are located on the outside of the board. The following figure illustrates a sample checkerboard optimized for the detection. However, any other checkerboard can be used as well.

\strong{C++ 头文件：}\code{#include <opencv2/calib.hpp>}
}
\keyword{opencv}
