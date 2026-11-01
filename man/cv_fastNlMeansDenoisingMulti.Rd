% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fastNlMeansDenoisingMulti}
\alias{cv_fastNlMeansDenoisingMulti}
\title{Modification of fastNlMeansDenoising function for images sequence where consecutive images have been captured in small period of time}
\usage{cv_fastNlMeansDenoisingMulti(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Modification of fastNlMeansDenoising function for images sequence where consecutive images have been captured in small period of time. For example video. This version of the function is for grayscale images or for manual manipulation with colorspaces. See [44] for more details (open access here).}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void fastNlMeansDenoisingMulti(InputArrayOfArrays srcImgs, OutputArray dst, int imgToDenoiseIndex, int temporalWindowSize, float h = 3, int templateWindowSize = 7, int searchWindowSize = 21)

void fastNlMeansDenoisingMulti(InputArrayOfArrays srcImgs, OutputArray dst, int imgToDenoiseIndex, int temporalWindowSize, const std::vector<float>& h, int templateWindowSize = 7, int searchWindowSize = 21, int normType = NORM_L2)

}

\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
}
\keyword{opencv}
