% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOCRTesseract}
\alias{cvOCRTesseract}
\title{OCRTesseract class provides an interface with the tesseract-ocr API (v3.02.02) in C++}
\usage{cvOCRTesseract(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvOCRTesseract} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{OCRTesseract class provides an interface with the tesseract-ocr API (v3.02.02) in C++.}
\details{
Notice that it is compiled only when tesseract-ocr is correctly installed.
\itemize{
\item (C++) An example of OCRTesseract recognition combined with scene text detection can be found at the end_to_end_recognition demo: https://github.com/opencv/opencv_contrib/blob/master/modules/text/samples/end_to_end_recognition.cpp (C++) Another example of OCRTesseract recognition combined with scene text detection can be found at the webcam_demo: https://github.com/opencv/opencv_contrib/blob/master/modules/text/samples/webcam_demo.cpp
}
\strong{C++ 头文件：}\code{#include <opencv2/text/ocr.hpp>}
\strong{构造}
\preformatted{
cvOCRTesseract(datapath = NULL, language = NULL, char_whitelist = NULL, oem = OEM_DEFAULT, psmode = PSM_AUTO)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvOCRTesseract(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{run(image, mask = NULL, min_confidence, component_level = 0)}：Implements cv::text::BaseOCR.
\item \code{setWhiteList(char_whitelist)}
}
}
\keyword{opencv}
