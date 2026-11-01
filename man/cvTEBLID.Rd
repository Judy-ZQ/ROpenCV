% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTEBLID}
\alias{cvTEBLID}
\title{Class implementing TEBLID (Triplet-based Efficient Binary Local Image Descriptor), described in [258]}
\usage{cvTEBLID(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTEBLID} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing TEBLID (Triplet-based Efficient Binary Local Image Descriptor), described in [258].}
\details{
TEBLID stands for Triplet-based Efficient Binary Local Image Descriptor, although originally it was called BAD [258]. It is an improvement over BEBLID [257], that uses triplet loss, hard negative mining, and anchor swap to improve the image matching results. It is able to describe keypoints from any detector just by changing the scale_factor parameter. TEBLID is as efficient as ORB, BEBLID or BRISK, but the triplet-based training objective selected more discriminative features that explain the accuracy gain. It is also more compact than BEBLID, when running the AKAZE example with 10000 keypoints detected by ORB, BEBLID obtains 561 inliers (75\%) with 512 bits, whereas TEBLID obtains 621 (75.2\%) with 256 bits. ORB obtains only 493 inliers (63\%).
If you find this code useful, please add a reference to the following paper:
Iago Suárez, José M. Buenaposada, and Luis Baumela. Revisiting Binary Local Image Description for Resource Limited Devices. IEEE Robotics and Automation Letters, vol. 6, no. 4, pp. 8317-8324, Oct. 2021.
The descriptor was trained in Liberty split of the UBC datasets [299] .
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvTEBLID(scale_factor, n_bits = SIZE_256_BITS)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTEBLID(...)
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
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
