% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createKernel}
\alias{cv_createKernel}
\title{Creates kernel from basic functions}
\usage{cv_createKernel(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Creates kernel from basic functions.}
\details{
The function creates kernel usable for latter fuzzy image processing.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void createKernel(InputArray A, InputArray B, OutputArray kernel, const int chn)

void createKernel(int function, int radius, OutputArray kernel, const int chn)

}

\strong{C++ 头文件：}\code{#include <opencv2/fuzzy/fuzzy_image.hpp>}
}
\keyword{opencv}
