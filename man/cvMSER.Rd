% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMSER}
\alias{cvMSER}
\title{Maximally stable extremal region extractor}
\usage{cvMSER(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMSER} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Maximally stable extremal region extractor.}
\details{
The class encapsulates all the parameters of the MSER extraction algorithm (see wiki article).
\itemize{
\item there are two different implementation of MSER: one for grey image, one for color image
\item the grey image algorithm is taken from: [208] ; the paper claims to be faster than union-find method; it actually get 1.5~2m/s on my centrino L7200 1.2GHz laptop.
\item the color image algorithm is taken from: [95] ; it should be much slower than grey image method ( 3~4 times )
\item (Python) A complete example showing the use of the MSER detector can be found at samples/python/mser.py
}
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvMSER(delta = 5, min_area = 60, max_area = 14400, max_variation = 0.25, min_diversity = 0.2, max_evolution = 200, area_threshold = 1.01, min_margin = 0.003, edge_blur_size = 5)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMSER(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{compute(images, descriptors = NULL)}
\item \code{defaultNorm()}
\item \code{descriptorSize()}
\item \code{descriptorType()}
\item \code{detect(images, masks = NULL)}
\item \code{detectAndCompute(image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL)}：Detects keypoints and computes the descriptors
\item \code{detectRegions(image)}：Detect MSER regions.
\item \code{empty()}：Return true if detector object is empty.
\item \code{getAreaThreshold()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDelta()}
\item \code{getEdgeBlurSize()}
\item \code{getMaxArea()}
\item \code{getMaxEvolution()}
\item \code{getMaxVariation()}
\item \code{getMinArea()}
\item \code{getMinDiversity()}
\item \code{getMinMargin()}
\item \code{getPass2Only()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAreaThreshold(areaThreshold)}
\item \code{setDelta(delta)}
\item \code{setEdgeBlurSize(edge_blur_size)}
\item \code{setMaxArea(maxArea)}
\item \code{setMaxEvolution(maxEvolution)}
\item \code{setMaxVariation(maxVariation)}
\item \code{setMinArea(minArea)}
\item \code{setMinDiversity(minDiversity)}
\item \code{setMinMargin(min_margin)}
\item \code{setPass2Only(f)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
