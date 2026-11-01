% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readNetFromTFLite}
\alias{cv_readNetFromTFLite}
\title{Reads a network model stored in TFLite framework's format}
\usage{cv_readNetFromTFLite(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{Net object.}
\description{Reads a network model stored in TFLite framework's format.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Net readNetFromTFLite(CV_WRAP_FILE_PATH const String & model)

Net readNetFromTFLite(const std::vector<uchar>& bufferModel)

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
