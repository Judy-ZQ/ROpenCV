% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQuasiDenseStereo}
\alias{cvQuasiDenseStereo}
\title{Class containing the methods needed for Quasi Dense Stereo computation}
\usage{cvQuasiDenseStereo(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQuasiDenseStereo} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class containing the methods needed for Quasi Dense Stereo computation.}
\details{
This module contains the code to perform quasi dense stereo matching. The method initially starts with a sparse 3D reconstruction based on feature matching across a stereo image pair and subsequently propagates the structure into neighboring image regions. To obtain initial seed correspondences, the algorithm locates Shi and Tomashi features in the left image of the stereo pair and then tracks them using pyramidal Lucas-Kanade in the right image. To densify the sparse correspondences, the algorithm computes the zero-mean normalized cross-correlation (ZNCC) in small patches around every seed pair and uses it as a quality metric for each match. In this code, we introduce a custom structure to store the location and ZNCC value of correspondences called "Match". Seed Matches are stored in a priority queue sorted according to their ZNCC value, allowing for the best quality Match to be readily available. The algorithm pops Matches and uses them to extract new matches around them. This is done by considering a small neighboring area around each Seed and retrieving correspondences above a certain texture threshold that are not previously computed. New matches are stored in the seed priority queue and used as seeds. The propagation process ends when no additional matches can be retrieved.
Also the original growing scheme idea is described in [160]
\strong{C++ 头文件：}\code{#include <opencv2/xstereo/quasi_dense_stereo.hpp>}
\strong{构造}
\preformatted{
cvQuasiDenseStereo(monoImgSize, paramFilepath)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQuasiDenseStereo(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getDenseMatches()}：Get The dense corresponding points.
\item \code{getDisparity()}：Compute and return the disparity map based on the correspondences found in the "process" method.
\item \code{getMatch(x, y)}：Specify pixel coordinates in the left image and get its corresponding location in the right image.
\item \code{getSparseMatches()}：Get The sparse corresponding points.
\item \code{loadParameters(filepath)}：Load a file containing the configuration parameters of the class.
\item \code{process(imgLeft, imgRight)}：Main process of the algorithm. This method computes the sparse seeds and then densifies them.
\item \code{saveParameters(filepath)}：Save a file containing all the configuration parameters the class is currently set to.
}
}
\keyword{opencv}
