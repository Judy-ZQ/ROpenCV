% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_readNetFromModelOptimizer}
\alias{cv_readNetFromModelOptimizer}
\title{Load a network from Intel's Model Optimizer intermediate representation}
\usage{cv_readNetFromModelOptimizer(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{Net object. Networks imported from Intel's Model Optimizer are launched in Intel's Inference Engine backend.}
\description{Load a network from Intel's Model Optimizer intermediate representation.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Net readNetFromModelOptimizer(CV_WRAP_FILE_PATH const String & xml, CV_WRAP_FILE_PATH const String & bin = "")

Net readNetFromModelOptimizer(const std::vector<uchar>& bufferModelConfig, const std::vector<uchar>& bufferWeights)

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
