% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTBMR}
\alias{cvTBMR}
\title{Class implementing the Tree Based Morse Regions (TBMR) as described in [308] extended with scaled extraction ability}
\usage{cvTBMR(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTBMR} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the Tree Based Morse Regions (TBMR) as described in [308] extended with scaled extraction ability.}
\details{
Features are ellipses (similar to MSER, however a MSER feature can never be a TBMR feature and vice versa).
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvTBMR(min_area = 60, max_area_relative = 0.01, scale_factor = 1.25, n_scales = -1)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTBMR(...)
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
\item \code{getMaxAreaRelative()}
\item \code{getMinArea()}
\item \code{getNScales()}
\item \code{getScaleFactor()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setMaxAreaRelative(maxArea)}
\item \code{setMinArea(minArea)}
\item \code{setNScales(n_scales)}
\item \code{setScaleFactor(scale_factor)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\keyword{opencv}
