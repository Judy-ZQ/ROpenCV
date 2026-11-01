% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMSDDetector}
\alias{cvMSDDetector}
\title{Class implementing the MSD (Maximal Self-Dissimilarity) keypoint detector, described in [272]}
\usage{cvMSDDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMSDDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the MSD (Maximal Self-Dissimilarity) keypoint detector, described in [272].}
\details{
The algorithm implements a novel interest point detector stemming from the intuition that image patches which are highly dissimilar over a relatively large extent of their surroundings hold the property of being repeatable and distinctive. This concept of "contextual self-dissimilarity" reverses the key paradigm of recent successful techniques such as the Local Self-Similarity descriptor and the Non-Local Means filter, which build upon the presence of similar - rather than dissimilar - patches. Moreover, it extends to contextual information the local self-dissimilarity notion embedded in established detectors of corner-like interest points, thereby achieving enhanced repeatability, distinctiveness and localization accuracy.
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvMSDDetector(m_patch_radius = 3, m_search_area_radius = 5, m_nms_radius = 5, m_nms_scale_radius = 0, m_th_saliency = 250.0, m_kNN = 4, m_scale_factor = 1.25, m_n_scales = -1, m_compute_orientation = FALSE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMSDDetector(...)
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
\item \code{getComputeOrientation()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getKNN()}
\item \code{getNScales()}
\item \code{getNmsRadius()}
\item \code{getNmsScaleRadius()}
\item \code{getPatchRadius()}
\item \code{getScaleFactor()}
\item \code{getSearchAreaRadius()}
\item \code{getThSaliency()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setComputeOrientation(compute_orientation)}
\item \code{setKNN(kNN)}
\item \code{setNScales(use_orientation)}
\item \code{setNmsRadius(nms_radius)}
\item \code{setNmsScaleRadius(nms_scale_radius)}
\item \code{setPatchRadius(patch_radius)}
\item \code{setScaleFactor(scale_factor)}
\item \code{setSearchAreaRadius(use_orientation)}
\item \code{setThSaliency(th_saliency)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\keyword{opencv}
