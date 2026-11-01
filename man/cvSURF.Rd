% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSURF}
\alias{cvSURF}
\title{Class for extracting Speeded Up Robust Features from an image [20] }
\usage{cvSURF(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSURF} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class for extracting Speeded Up Robust Features from an image [20] .}
\details{
The algorithm parameters:
\itemize{
\item member int extended 0 means that the basic descriptors (64 elements each) shall be computed
\item 1 means that the extended descriptors (128 elements each) shall be computed
}
\itemize{
\item 0 means that detector computes orientation of each feature.
\item 1 means that the orientation is not computed (which is much, much faster). For example, if you match images from a stereo pair, or do image stitching, the matched features likely have very similar angles, and you can speed up feature extraction by setting upright=1.
}
\itemize{
\item An example using the SURF feature detector can be found at opencv_source_code/samples/cpp/generic_descriptor_match.cpp Another example using the SURF feature detector, extractor and matcher can be found at opencv_source_code/samples/cpp/matcher_simple.cpp
}
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d/nonfree.hpp>}
\strong{构造}
\preformatted{
cvSURF(hessianThreshold = 100, nOctaves = 4, nOctaveLayers = 3, extended = FALSE, upright = FALSE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSURF(...)
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
\item \code{getExtended()}
\item \code{getHessianThreshold()}
\item \code{getNOctaveLayers()}
\item \code{getNOctaves()}
\item \code{getUpright()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setExtended(extended)}
\item \code{setHessianThreshold(hessianThreshold)}
\item \code{setNOctaveLayers(nOctaveLayers)}
\item \code{setNOctaves(nOctaves)}
\item \code{setUpright(upright)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
