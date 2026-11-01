% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvAdaptiveManifoldFilter}
\alias{cvAdaptiveManifoldFilter}
\title{Interface for Adaptive Manifold Filter realizations}
\usage{cvAdaptiveManifoldFilter(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvAdaptiveManifoldFilter} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Interface for Adaptive Manifold Filter realizations.}
\details{
For more details about this filter see [103] and References_.
Below listed optional parameters which may be set up with Algorithm::set function.
\itemize{
\item member double sigma_s = 16.0 Spatial standard deviation.
\item member double sigma_r = 0.2 Color space standard deviation.
\item member int tree_height = -1 Height of the manifold tree (default = -1 : automatically computed).
\item member int num_pca_iterations = 1 Number of iterations to computed the eigenvector.
\item member bool adjust_outliers = false Specify adjust outliers using Eq. 9 or not.
\item member bool use_RNG = true Specify use random number generator to compute eigenvector or not.
}
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
\strong{构造}
\preformatted{
cvAdaptiveManifoldFilter()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvAdaptiveManifoldFilter(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{filter(src, joint = NULL, dst = NULL)}：Apply high-dimensional filtering using adaptive manifolds.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
