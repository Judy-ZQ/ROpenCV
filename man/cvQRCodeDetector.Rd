% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQRCodeDetector}
\alias{cvQRCodeDetector}
\title{cv::QRCodeDetector}
\usage{cvQRCodeDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQRCodeDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::QRCodeDetector} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::QRCodeDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/objdetect.hpp>}
\strong{构造}
\preformatted{
cvQRCodeDetector()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQRCodeDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{decode(img, points, dst = NULL)}：Decodes graphical code in image once it's found by the detect method.
\item \code{decodeCurved(img, points, dst = NULL)}：Decodes QR code on a curved surface in image once it's found by the detect method.
\item \code{decodeMulti(img, points, straight_code = NULL)}：Decodes graphical codes in image once it's found by the detect method.
\item \code{detect(img, dst = NULL)}：Detects graphical code in image and returns the quadrangle containing the code.
\item \code{detectAndDecode(img, points = NULL, straight_code = NULL)}：Both detects and decodes graphical code.
\item \code{detectAndDecodeCurved(img, points = NULL, straight_qrcode = NULL)}：Both detects and decodes QR code on a curved surface.
\item \code{detectAndDecodeMulti(img, points = NULL, straight_code = NULL)}：Both detects and decodes graphical codes.
\item \code{detectMulti(img, dst = NULL)}：Detects graphical codes in image and returns the vector of the quadrangles containing the codes.
\item \code{setEpsX(epsX)}：sets the epsilon used during the horizontal scan of QR code stop marker detection.
\item \code{setEpsY(epsY)}：sets the epsilon used during the vertical scan of QR code stop marker detection.
\item \code{setUseAlignmentMarkers(useAlignmentMarkers)}：use markers to improve the position of the corners of the QR code
}
}
\seealso{父类 \code{\link{cvGraphicalCodeDetector}}（\code{cv::GraphicalCodeDetector}）}
\keyword{opencv}
