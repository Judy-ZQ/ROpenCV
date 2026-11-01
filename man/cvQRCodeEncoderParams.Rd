% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQRCodeEncoderParams}
\alias{cvQRCodeEncoderParams}
\title{QR code encoder parameters}
\usage{cvQRCodeEncoderParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvQRCodeEncoderParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{QR code encoder parameters.}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::QRCodeEncoder::Params")} 查全部字段。

\itemize{

\item \code{correction_level}（\code{CorrectionLevel}）：The optional level of error correction (by default - the lowest).

\item \code{mode}（\code{EncodeMode}）：The optional encoding mode - Numeric, Alphanumeric, Byte, Kanji, ECI or Structured Append.

\item \code{structure_number}（\code{int}）：The optional number of QR codes to generate in Structured Append mode.

\item \code{version}（\code{int}）：The optional version of QR code (by default - maximum possible depending on the length of the string).

}

QR code encoder parameters.

\strong{C++ 头文件：}\code{#include <opencv2/objdetect.hpp>}
}
\keyword{opencv}
