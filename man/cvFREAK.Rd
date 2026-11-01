% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvFREAK}
\alias{cvFREAK}
\title{Class implementing the FREAK (Fast Retina Keypoint) keypoint descriptor, described in [8] }
\usage{cvFREAK(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvFREAK} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the FREAK (Fast Retina Keypoint) keypoint descriptor, described in [8] .}
\details{
The algorithm propose a novel keypoint descriptor inspired by the human visual system and more precisely the retina, coined Fast Retina Key- point (FREAK). A cascade of binary strings is computed by efficiently comparing image intensities over a retinal sampling pattern. FREAKs are in general faster to compute with lower memory load and also more robust than SIFT, SURF or BRISK. They are competitive alternatives to existing keypoints in particular for embedded applications.
\itemize{
\item An example on how to use the FREAK descriptor can be found at opencv_source_code/samples/cpp/freak_demo.cpp
}
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvFREAK(orientationNormalized = TRUE, scaleNormalized = TRUE, patternScale = 22.0, nOctaves = 4, selectedPairs = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvFREAK(...)
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
\item \code{getNOctaves()}
\item \code{getOrientationNormalized()}
\item \code{getPatternScale()}
\item \code{getScaleNormalized()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setNOctaves(nOctaves)}
\item \code{setOrientationNormalized(orientationNormalized)}
\item \code{setPatternScale(patternScale)}
\item \code{setScaleNormalized(scaleNormalized)}：Member Data Documentation
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
