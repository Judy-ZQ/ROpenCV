% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readNetFromONNX}
\alias{cv_readNetFromONNX}
\title{Reads a network model ONNX}
\usage{cv_readNetFromONNX(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{Network object that ready to do forward, throw an exception in failure cases.}
\description{Reads a network model ONNX.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Net readNetFromONNX(CV_WRAP_FILE_PATH const String & onnxFile)

Net readNetFromONNX(const std::vector<uchar>& buffer)

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
