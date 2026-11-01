% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvGFTTDetector}
\alias{cvGFTTDetector}
\title{Wrapping class for feature detection using the goodFeaturesToTrack function}
\usage{cvGFTTDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvGFTTDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Wrapping class for feature detection using the goodFeaturesToTrack function.}
\details{
C++ 类 \code{cv::GFTTDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvGFTTDetector(maxCorners = 1000, qualityLevel = 0.01, minDistance = 1, blockSize = 3, useHarrisDetector = FALSE, k = 0.04)
cvGFTTDetector(maxCorners, qualityLevel, minDistance, blockSize, gradiantSize, useHarrisDetector = FALSE, k = 0.04)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvGFTTDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{compute(images, descriptors = NULL)}
\item \code{defaultNorm()}
\item \code{descriptorSize()}
\item \code{descriptorType()}
\item \code{detect(images, masks = NULL)}
\item \code{detectAndCompute(image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL)}：Detects keypoints and computes the descriptors
\item \code{empty()}：Return true if detector object is empty.
\item \code{getBlockSize()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getGradientSize()}
\item \code{getHarrisDetector()}
\item \code{getK()}
\item \code{getMaxFeatures()}
\item \code{getMinDistance()}
\item \code{getQualityLevel()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBlockSize(blockSize)}
\item \code{setGradientSize(gradientSize_)}
\item \code{setHarrisDetector(val)}
\item \code{setK(k)}
\item \code{setMaxFeatures(maxFeatures)}
\item \code{setMinDistance(minDistance)}
\item \code{setQualityLevel(qlevel)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
