% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvEdgeAwareInterpolator}
\alias{cvEdgeAwareInterpolator}
\title{Sparse match interpolation algorithm based on modified locally-weighted affine estimator from [226] and Fast Global Smoother as post-proces}
\usage{cvEdgeAwareInterpolator(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvEdgeAwareInterpolator} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Sparse match interpolation algorithm based on modified locally-weighted affine estimator from [226] and Fast Global Smoother as post-processing filter.}
\details{
C++ 类 \code{cv::ximgproc::EdgeAwareInterpolator} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/sparse_match_interpolator.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvEdgeAwareInterpolator(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getFGSLambda()}
\item \code{getFGSSigma()}
\item \code{getK()}
\item \code{getLambda()}
\item \code{getSigma()}
\item \code{getUsePostProcessing()}
\item \code{interpolate(from_image, from_points, to_image, to_points, dst = NULL)}：Interpolate input sparse matches.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setCostMap(costMap)}：Interface to provide a more elaborated cost map, i.e. edge map, for the edge-aware term. This implementation is based on a rather simple gradient-based edge map estimation. To used more complex edge map estimator (e.g. StructuredEdgeDetection that has been used in the original publication) that may lead to improved accuracies, the internal edge map estimation can be bypassed here.
\item \code{setFGSLambda(lambda)}：Sets the respective fastGlobalSmootherFilter parameter.
\item \code{setFGSSigma(sigma)}
\item \code{setK(k)}：Parameter to tune the approximate size of the superpixel used for oversegmentation.
\item \code{setLambda(lambda)}：Lambda is a parameter defining the weight of the edge-aware term in geodesic distance, should be in the range of 0 to 1000.
\item \code{setSigma(sigma)}：Sigma is a parameter defining how fast the weights decrease in the locally-weighted affine fitting. Higher values can help preserve fine details, lower values can help to get rid of noise in the output flow.
\item \code{setUsePostProcessing(use_post_proc)}：Sets whether the fastGlobalSmootherFilter post-processing is employed. It is turned on by default.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvSparseMatchInterpolator}}（\code{cv::ximgproc::SparseMatchInterpolator}）}
\keyword{opencv}
