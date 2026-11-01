% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvHarrisLaplaceFeatureDetector}
\alias{cvHarrisLaplaceFeatureDetector}
\title{Class implementing the Harris-Laplace feature detector as described in [193]}
\usage{cvHarrisLaplaceFeatureDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvHarrisLaplaceFeatureDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the Harris-Laplace feature detector as described in [193].}
\details{
C++ 类 \code{cv::xfeatures2d::HarrisLaplaceFeatureDetector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvHarrisLaplaceFeatureDetector(numOctaves = 6, corn_thresh = 0.01, DOG_thresh = 0.01, maxCorners = 5000, num_layers = 4)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvHarrisLaplaceFeatureDetector(...)
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
\item \code{getCornThresh()}
\item \code{getDOGThresh()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getMaxCorners()}
\item \code{getNumLayers()}
\item \code{getNumOctaves()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setCornThresh(corn_thresh_)}
\item \code{setDOGThresh(DOG_thresh_)}
\item \code{setMaxCorners(maxCorners_)}
\item \code{setNumLayers(num_layers_)}
\item \code{setNumOctaves(numOctaves_)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
