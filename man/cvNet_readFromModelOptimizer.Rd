% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvNet_readFromModelOptimizer}
\alias{cvNet_readFromModelOptimizer}
\title{Create a network from Intel's Model Optimizer intermediate representation (IR)}
\usage{cvNet_readFromModelOptimizer(bufferModelConfig, bufferWeights)}
\arguments{
\item{bufferModelConfig}{buffer with model's configuration.}
\item{bufferWeights}{buffer with model's trained weights.}
}
\value{\code{static Net} 对应的 R 对象。}
\description{Create a network from Intel's Model Optimizer intermediate representation (IR).}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

static Net readFromModelOptimizer(CV_WRAP_FILE_PATH const String& xml, CV_WRAP_FILE_PATH const String& bin)

static Net readFromModelOptimizer(const std::vector<uchar>& bufferModelConfig, const std::vector<uchar>& bufferWeights)

}
}
\keyword{opencv}
