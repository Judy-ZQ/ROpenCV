% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStaticSaliencySpectralResidual}
\alias{cvStaticSaliencySpectralResidual}
\title{the Spectral Residual approach from [128]}
\usage{cvStaticSaliencySpectralResidual(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStaticSaliencySpectralResidual} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{the Spectral Residual approach from [128]}
\details{
Starting from the principle of natural image statistics, this method simulate the behavior of pre-attentive visual search. The algorithm analyze the log spectrum of each image and obtain the spectral residual. Then transform the spectral residual to spatial domain to obtain the saliency map, which suggests the positions of proto-objects.
\strong{C++ 头文件：}\code{#include <opencv2/saliency/saliencySpecializedClasses.hpp>}
\strong{构造}
\preformatted{
cvStaticSaliencySpectralResidual()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStaticSaliencySpectralResidual(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{computeBinaryMap(saliencyMap, dst = NULL)}：This function perform a binary map of given saliency map. This is obtained in this way
\item \code{computeSaliency(image, dst = NULL)}
\item \code{getImageHeight()}
\item \code{getImageWidth()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{setImageHeight(val)}
\item \code{setImageWidth(val)}
}
}
\seealso{父类 \code{\link{cvStaticSaliency}}（\code{cv::saliency::StaticSaliency}）}
\keyword{opencv}
