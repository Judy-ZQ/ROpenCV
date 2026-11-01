% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_BIMEF}
\alias{cv_BIMEF}
\title{Given an input color image, enhance low-light images using the BIMEF method ([311] [312])}
\usage{cv_BIMEF(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Given an input color image, enhance low-light images using the BIMEF method ([311] [312]).}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void BIMEF(InputArray input, OutputArray output, float mu = 0.5f, float a = -0.3293f, float b = 1.1258f)

void BIMEF(InputArray input, OutputArray output, float k, float mu, float a, float b)

}

\strong{警告：}This is a C++ implementation of the original MATLAB algorithm. Compared to the original code, this implementation is a little bit slower and does not provide the same results. In particular, quality of the image enhancement is degraded for the bright areas in certain conditions.

\strong{C++ 头文件：}\code{#include <opencv2/intensity_transform.hpp>}
}
\keyword{opencv}
