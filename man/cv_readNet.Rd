% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readNet}
\alias{cv_readNet}
\title{Read deep learning network represented in one of the supported formats}
\usage{cv_readNet(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{Net object.}
\description{Read deep learning network represented in one of the supported formats.}
\details{
This function automatically detects an origin framework of trained model and calls an appropriate function such readNetFromCaffe, readNetFromTensorflow or readNetFromDarknet. An order of \code{model} and \code{config} arguments does not matter.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Net readNet(CV_WRAP_FILE_PATH const String& model, CV_WRAP_FILE_PATH const String& config = "", const String& framework = "")

Net readNet(const String& framework, const std::vector<uchar>& bufferModel, const std::vector<uchar>& bufferConfig = std::vector<uchar>())

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
