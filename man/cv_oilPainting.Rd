% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_oilPainting}
\alias{cv_oilPainting}
\title{oilPainting See the book [46] for details}
\usage{cv_oilPainting(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{oilPainting See the book [46] for details.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void oilPainting(InputArray src, OutputArray dst, int size, int dynRatio, int code)

void oilPainting(InputArray src, OutputArray dst, int size, int dynRatio)

}

\strong{C++ 头文件：}\code{#include <opencv2/xphoto/oilpainting.hpp>}
}
\keyword{opencv}
