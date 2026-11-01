% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBEBLID}
\alias{cvBEBLID}
\title{Class implementing BEBLID (Boosted Efficient Binary Local Image Descriptor), described in [257] }
\usage{cvBEBLID(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBEBLID} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing BEBLID (Boosted Efficient Binary Local Image Descriptor), described in [257] .}
\details{
BEBLID [257] is a efficient binary descriptor learned with boosting. It is able to describe keypoints from any detector just by changing the scale_factor parameter. In several benchmarks it has proved to largely improve other binary descriptors like ORB or BRISK with the same efficiency. BEBLID describes using the difference of mean gray values in different regions of the image around the KeyPoint, the descriptor is specifically optimized for image matching and patch retrieval addressing the asymmetries of these problems.
If you find this code useful, please add a reference to the following paper:
Iago Suárez, Ghesn Sfeir, José M. Buenaposada, and Luis Baumela. BEBLID: Boosted efficient binary local image descriptor. Pattern Recognition Letters, 133:366–372, 2020.
The descriptor was trained using 1 million of randomly sampled pairs of patches (20\% positives and 80\% negatives) from the Liberty split of the UBC datasets [299] as described in the paper [257]. You can check in the AKAZE example how well BEBLID works. Detecting 10000 keypoints with ORB and describing with BEBLID obtains 561 inliers (75\%) whereas describing with ORB obtains only 493 inliers (63\%).
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvBEBLID(scale_factor, n_bits = SIZE_512_BITS)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBEBLID(...)
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
\item \code{getScaleFactor()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setScaleFactor(scale_factor)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
