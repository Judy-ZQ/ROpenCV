% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBRISK}
\alias{cvBRISK}
\title{Class implementing the BRISK keypoint detector and descriptor extractor, described in [159] }
\usage{cvBRISK(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBRISK} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the BRISK keypoint detector and descriptor extractor, described in [159] .}
\details{
C++ 类 \code{cv::BRISK} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvBRISK(thresh = 30, octaves = 3, patternScale = 1.0)
cvBRISK(radiusList, numberList, dMax = 5.85, dMin = 8.2, indexChange = NULL)
cvBRISK(thresh, octaves, radiusList, numberList, dMax = 5.85, dMin = 8.2, indexChange = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBRISK(...)
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
\item \code{getOctaves()}
\item \code{getPatternScale()}
\item \code{getThreshold()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setOctaves(octaves)}：Set detection octaves.
\item \code{setPatternScale(patternScale)}：Set detection patternScale.
\item \code{setThreshold(threshold)}：Set detection threshold.
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
