% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvAgastFeatureDetector}
\alias{cvAgastFeatureDetector}
\title{Wrapping class for feature detection using the AGAST method}
\usage{cvAgastFeatureDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvAgastFeatureDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Wrapping class for feature detection using the AGAST method.}
\details{
C++ 类 \code{cv::AgastFeatureDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvAgastFeatureDetector(threshold = 10, nonmaxSuppression = TRUE, type = OAST_9_16)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvAgastFeatureDetector(...)
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
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getNonmaxSuppression()}
\item \code{getThreshold()}
\item \code{getType()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setNonmaxSuppression(f)}
\item \code{setThreshold(threshold)}
\item \code{setType(type)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
