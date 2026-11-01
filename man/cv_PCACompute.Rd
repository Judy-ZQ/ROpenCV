% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_PCACompute}
\alias{cv_PCACompute}
\title{wrap PCA::operator}
\usage{cv_PCACompute(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{wrap PCA::operator}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, int maxComponents = 0)

void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, OutputArray eigenvalues, int maxComponents = 0)

void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, double retainedVariance)

void PCACompute(InputArray data, InputOutputArray mean, OutputArray eigenvectors, OutputArray eigenvalues, double retainedVariance)

}

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
