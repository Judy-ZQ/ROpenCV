% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQRCodeDetectorAruco}
\alias{cvQRCodeDetectorAruco}
\title{cv::QRCodeDetectorAruco}
\usage{cvQRCodeDetectorAruco(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQRCodeDetectorAruco} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::QRCodeDetectorAruco} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::QRCodeDetectorAruco} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/objdetect.hpp>}
\strong{构造}
\preformatted{
cvQRCodeDetectorAruco()
cvQRCodeDetectorAruco(params)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQRCodeDetectorAruco(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{decode(img, points, dst = NULL)}：Decodes graphical code in image once it's found by the detect method.
\item \code{decodeMulti(img, points, straight_code = NULL)}：Decodes graphical codes in image once it's found by the detect method.
\item \code{detect(img, dst = NULL)}：Detects graphical code in image and returns the quadrangle containing the code.
\item \code{detectAndDecode(img, points = NULL, straight_code = NULL)}：Both detects and decodes graphical code.
\item \code{detectAndDecodeMulti(img, points = NULL, straight_code = NULL)}：Both detects and decodes graphical codes.
\item \code{detectMulti(img, dst = NULL)}：Detects graphical codes in image and returns the vector of the quadrangles containing the codes.
\item \code{getArucoParameters()}：Aruco detector parameters are used to search for the finder patterns.
\item \code{getDetectorParameters()}：Detector parameters getter. See cv::QRCodeDetectorAruco::Params.
\item \code{setArucoParameters(params)}：Aruco detector parameters are used to search for the finder patterns.
\item \code{setDetectorParameters(params)}：Detector parameters setter. See cv::QRCodeDetectorAruco::Params.
}
}
\seealso{父类 \code{\link{cvGraphicalCodeDetector}}（\code{cv::GraphicalCodeDetector}）}
\section{Params 的字段}{
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{maxColorsMismatch}（\code{float}）：The maximum allowed relative color mismatch in the timing pattern, default 0.2f.
\item \code{maxModuleSizeMismatch}（\code{float}）：The maximum allowed relative mismatch in module sizes for finder patterns in the same QR code, default 1.75f.
\item \code{maxPenalties}（\code{float}）：The maximum allowed percentage of penalty points out of total pins in timing pattern, default 0.4f.
\item \code{maxRotation}（\code{float}）：The maximum allowed relative rotation for finder patterns in the same QR code, default pi/12.
\item \code{maxTimingPatternMismatch}（\code{float}）：The maximum allowed module relative mismatch for timing pattern module, default 2.f.
\item \code{minModuleSizeInPyramid}（\code{float}）：The minimum allowed pixel size of a QR module in the smallest image in the image pyramid, default 4.f.
\item \code{scaleTimingPatternScore}（\code{float}）：The algorithm find QR codes with almost minimum timing pattern score and minimum size, default 0.9f.
}
}
\keyword{opencv}
