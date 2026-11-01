% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readNetFromDarknet}
\alias{cv_readNetFromDarknet}
\title{Reads a network model stored in Darknet model files}
\usage{cv_readNetFromDarknet(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{Network object that ready to do forward, throw an exception in failure cases.}
\description{Reads a network model stored in Darknet model files.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Net readNetFromDarknet(CV_WRAP_FILE_PATH const String & cfgFile, CV_WRAP_FILE_PATH const String & darknetModel = String())

Net readNetFromDarknet(const std::vector<uchar>& bufferCfg, const std::vector<uchar>& bufferModel = std::vector<uchar>())

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
