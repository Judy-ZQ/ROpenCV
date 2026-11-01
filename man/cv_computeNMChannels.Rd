% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeNMChannels}
\alias{cv_computeNMChannels}
\title{Compute the different channels to be processed independently in the N&M algorithm [205]}
\usage{cv_computeNMChannels(src, mode, channels = NULL)}
\arguments{
\item{src}{含义见下方 C++ 签名。}
\item{mode}{含义见下方 C++ 签名。}
\item{channels}{含义见下方 C++ 签名。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Compute the different channels to be processed independently in the N&M algorithm [205].}
\details{
In N&M algorithm, the combination of intensity (I), hue (H), saturation (S), and gradient magnitude channels (Grad) are used in order to obtain high localization recall. This implementation also provides an alternative combination of red (R), green (G), blue (B), lightness (L), and gradient magnitude (Grad).

\strong{C++ 头文件：}\code{#include <opencv2/text/erfilter.hpp>}
}
\keyword{opencv}
