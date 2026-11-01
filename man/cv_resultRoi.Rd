% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_resultRoi}
\alias{cv_resultRoi}
\title{cv_resultRoi}
\usage{cv_resultRoi(corners, sizes)}
\arguments{
\item{corners}{含义见下方 C++ 签名。}
\item{sizes}{含义见下方 C++ 签名。}
}
\value{长度为 4 的整数向量 \code{c(x, y, width, height)}。}
\description{R 侧入口 \code{cv_resultRoi}，对应 C++ 的 \code{cv::detail::resultRoi}。}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Rect resultRoi(const std::vector<Point> & corners, const std::vector<UMat> & images)

Rect resultRoi(const std::vector<Point> & corners, const std::vector<Size> & sizes)

}

\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/util.hpp>}
}
\keyword{opencv}
