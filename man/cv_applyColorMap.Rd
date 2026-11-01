% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_applyColorMap}
\alias{cv_applyColorMap}
\title{Applies a GNU Octave/MATLAB equivalent colormap on a given image}
\usage{cv_applyColorMap(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies a GNU Octave/MATLAB equivalent colormap on a given image.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void applyColorMap(InputArray src, OutputArray dst, int colormap)

void applyColorMap(InputArray src, OutputArray dst, InputArray userColor)

}

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
