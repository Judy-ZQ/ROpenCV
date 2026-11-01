% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQRCodeDetectorArucoParams}
\alias{cvQRCodeDetectorArucoParams}
\title{\code{cv::QRCodeDetectorAruco::Params} 参数对象}
\usage{cvQRCodeDetectorArucoParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvQRCodeDetectorArucoParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::QRCodeDetectorAruco::Params} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::QRCodeDetectorAruco::Params")} 查全部字段。

\itemize{

\item \code{maxColorsMismatch}（\code{float}）：The maximum allowed relative color mismatch in the timing pattern, default 0.2f.

\item \code{maxModuleSizeMismatch}（\code{float}）：The maximum allowed relative mismatch in module sizes for finder patterns in the same QR code, default 1.75f.

\item \code{maxPenalties}（\code{float}）：The maximum allowed percentage of penalty points out of total pins in timing pattern, default 0.4f.

\item \code{maxRotation}（\code{float}）：The maximum allowed relative rotation for finder patterns in the same QR code, default pi/12.

\item \code{maxTimingPatternMismatch}（\code{float}）：The maximum allowed module relative mismatch for timing pattern module, default 2.f.

\item \code{minModuleSizeInPyramid}（\code{float}）：The minimum allowed pixel size of a QR module in the smallest image in the image pyramid, default 4.f.

\item \code{scaleTimingPatternScore}（\code{float}）：The algorithm find QR codes with almost minimum timing pattern score and minimum size, default 0.9f.

}

\strong{C++ 头文件：}\code{#include <opencv2/objdetect.hpp>}
}
\keyword{opencv}
