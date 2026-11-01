% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMotionSaliencyBinWangApr2014}
\alias{cvMotionSaliencyBinWangApr2014}
\title{the Fast Self-tuning Background Subtraction Algorithm from [292]}
\usage{cvMotionSaliencyBinWangApr2014(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMotionSaliencyBinWangApr2014} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{the Fast Self-tuning Background Subtraction Algorithm from [292]}
\details{
A Fast Self-tuning Background Subtraction Algorithm.
This background subtraction algorithm is inspired to the work of B. Wang and P. Dudek [2] [2] B. Wang and P. Dudek "A Fast Self-tuning Background Subtraction Algorithm", in proc of IEEE Workshop on Change Detection, 2014
\strong{C++ 头文件：}\code{#include <opencv2/saliency/saliencySpecializedClasses.hpp>}
\strong{构造}
\preformatted{
cvMotionSaliencyBinWangApr2014()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMotionSaliencyBinWangApr2014(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{computeSaliency(image, dst = NULL)}
\item \code{getImageHeight()}
\item \code{getImageWidth()}
\item \code{init()}：This function allows the correct initialization of all data structures that will be used by the algorithm.
\item \code{setImageHeight(val)}
\item \code{setImageWidth(val)}
\item \code{setImagesize(W, H)}：This is a utility function that allows to set the correct size (taken from the input image) in the corresponding variables that will be used to size the data structures of the algorithm.
}
}
\keyword{opencv}
