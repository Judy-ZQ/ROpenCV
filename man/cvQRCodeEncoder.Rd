% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQRCodeEncoder}
\alias{cvQRCodeEncoder}
\title{cv::QRCodeEncoder}
\usage{cvQRCodeEncoder(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQRCodeEncoder} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::QRCodeEncoder} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::QRCodeEncoder} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/objdetect.hpp>}
\strong{构造}
\preformatted{
cvQRCodeEncoder(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQRCodeEncoder(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{encode(encoded_info, dst = NULL)}：Generates QR code from input string.
\item \code{encodeStructuredAppend(encoded_info, qrcodes = NULL)}：Generates QR code from input string in Structured Append mode. The encoded message is splitting over a number of QR codes.
}
}
\section{Params 的字段}{
QR code encoder parameters.
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{correction_level}（\code{CorrectionLevel}）：The optional level of error correction (by default - the lowest).
\item \code{mode}（\code{EncodeMode}）：The optional encoding mode - Numeric, Alphanumeric, Byte, Kanji, ECI or Structured Append.
\item \code{structure_number}（\code{int}）：The optional number of QR codes to generate in Structured Append mode.
\item \code{version}（\code{int}）：The optional version of QR code (by default - maximum possible depending on the length of the string).
}
}
\keyword{opencv}
