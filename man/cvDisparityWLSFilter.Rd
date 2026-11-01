% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDisparityWLSFilter}
\alias{cvDisparityWLSFilter}
\title{Disparity map filter based on Weighted Least Squares filter (in form of Fast Global Smoother that is a lot faster than traditional Weighted}
\usage{cvDisparityWLSFilter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDisparityWLSFilter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Disparity map filter based on Weighted Least Squares filter (in form of Fast Global Smoother that is a lot faster than traditional Weighted Least Squares filter implementations) and optional use of left-right-consistency-based confidence to refine the results in half-occlusions and uniform areas.}
\details{
C++ 类 \code{cv::ximgproc::DisparityWLSFilter} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/disparity_filter.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDisparityWLSFilter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{filter(disparity_map_left, left_view, disparity_map_right = NULL, ROI = NULL, right_view = NULL, dst = NULL)}：Apply filtering to the disparity map.
\item \code{getConfidenceMap()}：Get the confidence map that was used in the last filter call. It is a CV_32F one-channel image with values ranging from 0.0 (totally untrusted regions of the raw disparity map) to 255.0 (regions containing correct disparity values with a high degree of confidence).
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDepthDiscontinuityRadius()}：DepthDiscontinuityRadius is a parameter used in confidence computation. It defines the size of low-confidence regions around depth discontinuities.
\item \code{getLRCthresh()}：LRCthresh is a threshold of disparity difference used in left-right-consistency check during confidence map computation. The default value of 24 (1.5 pixels) is virtually always good enough.
\item \code{getLambda()}：Lambda is a parameter defining the amount of regularization during filtering. Larger values force filtered disparity map edges to adhere more to source image edges. Typical value is 8000.
\item \code{getROI()}：Get the ROI used in the last filter call.
\item \code{getSigmaColor()}：SigmaColor is a parameter defining how sensitive the filtering process is to source image edges. Large values can lead to disparity leakage through low-contrast edges. Small values can make the filter too sensitive to noise and textures in the source image. Typical values range from 0.8 to 2.0.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setDepthDiscontinuityRadius(disc_radius)}
\item \code{setLRCthresh(LRC_thresh)}
\item \code{setLambda(lambda)}
\item \code{setSigmaColor(sigma_color)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDisparityFilter}}（\code{cv::ximgproc::DisparityFilter}）}
\keyword{opencv}
