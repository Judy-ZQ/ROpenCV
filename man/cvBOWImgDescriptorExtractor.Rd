% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBOWImgDescriptorExtractor}
\alias{cvBOWImgDescriptorExtractor}
\title{Class to compute an image descriptor using the bag of visual words}
\usage{cvBOWImgDescriptorExtractor(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBOWImgDescriptorExtractor} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class to compute an image descriptor using the bag of visual words.}
\details{
Such a computation consists of the following steps:
\enumerate{
\item Compute descriptors for a given image and its keypoints set.
\item Find the nearest visual words from the vocabulary for each keypoint descriptor.
\item Compute the bag-of-words image descriptor as is a normalized histogram of vocabulary words encountered in the image. The i-th bin of the histogram is a frequency of i-th word of the vocabulary in the given image.
}
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvBOWImgDescriptorExtractor(dextractor, dmatcher)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBOWImgDescriptorExtractor(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{descriptorSize()}：Returns an image descriptor size if the vocabulary is set. Otherwise, it returns 0.
\item \code{descriptorType()}：Returns an image descriptor type.
\item \code{getVocabulary()}：Returns the set vocabulary.
\item \code{setVocabulary(vocabulary)}：Sets a visual vocabulary.
}
}
\keyword{opencv}
