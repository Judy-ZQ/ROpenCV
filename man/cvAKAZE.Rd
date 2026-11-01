% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvAKAZE}
\alias{cvAKAZE}
\title{Class implementing the AKAZE keypoint detector and descriptor extractor, described in [10]}
\usage{cvAKAZE(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvAKAZE} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the AKAZE keypoint detector and descriptor extractor, described in [10].}
\details{
AKAZE descriptors can only be used with KAZE or AKAZE keypoints. This class is thread-safe.
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvAKAZE(descriptor_type = DESCRIPTOR_MLDB, descriptor_size = 0, descriptor_channels = 3, threshold = 0.001, nOctaves = 4, nOctaveLayers = 4, diffusivity = DIFF_PM_G2, max_points = -1)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvAKAZE(...)
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
\item \code{getDescriptorChannels()}
\item \code{getDescriptorSize()}
\item \code{getDescriptorType()}
\item \code{getDiffusivity()}
\item \code{getMaxPoints()}
\item \code{getNOctaveLayers()}
\item \code{getNOctaves()}
\item \code{getThreshold()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setDescriptorChannels(dch)}
\item \code{setDescriptorSize(dsize)}
\item \code{setDescriptorType(dtype)}
\item \code{setDiffusivity(diff)}
\item \code{setMaxPoints(max_points)}
\item \code{setNOctaveLayers(octaveLayers)}
\item \code{setNOctaves(octaves)}
\item \code{setThreshold(threshold)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
