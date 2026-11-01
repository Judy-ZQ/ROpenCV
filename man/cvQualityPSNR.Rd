% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityPSNR}
\alias{cvQualityPSNR}
\title{Full reference peak signal to noise ratio (PSNR) algorithm https://en.wikipedia.org/wiki/Peak_signal-to-noise_ratio}
\usage{cvQualityPSNR(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQualityPSNR} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Full reference peak signal to noise ratio (PSNR) algorithm https://en.wikipedia.org/wiki/Peak_signal-to-noise_ratio.}
\details{
C++ 类 \code{cv::quality::QualityPSNR} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/quality/qualitypsnr.hpp>}
\strong{构造}
\preformatted{
cvQualityPSNR(ref, maxPixelValue = 255)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQualityPSNR(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Implements Algorithm::clear
\item \code{compute(cmp)}：static method for computing quality
\item \code{empty()}：Implements Algorithm::empty
\item \code{getMaxPixelValue()}：return the maximum pixel value used for PSNR computation
\item \code{getQualityMap(dst = NULL)}：Returns output quality map that was generated during computation, if supported by the algorithm
\item \code{setMaxPixelValue(val)}：sets the maximum pixel value used for PSNR computation
}
}
\seealso{父类 \code{\link{cvQualityBase}}（\code{cv::quality::QualityBase}）}
\keyword{opencv}
