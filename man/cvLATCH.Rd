% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLATCH}
\alias{cvLATCH}
\title{cv::xfeatures2d::LATCH}
\usage{cvLATCH(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvLATCH} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::xfeatures2d::LATCH} 的 R 包装：构造函数与可调方法见下。}
\details{
latch Class for computing the LATCH descriptor. If you find this code useful, please add a reference to the following paper in your work: Gil Levi and Tal Hassner, "LATCH: Learned Arrangements of Three Patch Codes", arXiv preprint arXiv:1501.03719, 15 Jan. 2015
LATCH is a binary descriptor based on learned comparisons of triplets of image patches.
bytes is the size of the descriptor - can be 64, 32, 16, 8, 4, 2 or 1 rotationInvariance - whether or not the descriptor should compansate for orientation changes. half_ssd_size - the size of half of the mini-patches size. For example, if we would like to compare triplets of patches of size 7x7x then the half_ssd_size should be (7-1)/2 = 3. sigma - sigma value for GaussianBlur smoothing of the source image. Source image will be used without smoothing in case sigma value is 0.
Note: the descriptor can be coupled with any keypoint extractor. The only demand is that if you use set rotationInvariance = True then you will have to use an extractor which estimates the patch orientation (in degrees). Examples for such extractors are ORB and SIFT.
Note: a complete example can be found under /samples/cpp/tutorial_code/xfeatures2D/latch_match.cpp
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvLATCH(bytes = 32, rotationInvariance = TRUE, half_ssd_size = 3, sigma = 2.0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvLATCH(...)
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
\item \code{getBytes()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getHalfSSDsize()}
\item \code{getRotationInvariance()}
\item \code{getSigma()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBytes(bytes)}
\item \code{setHalfSSDsize(half_ssd_size)}
\item \code{setRotationInvariance(rotationInvariance)}
\item \code{setSigma(sigma)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
