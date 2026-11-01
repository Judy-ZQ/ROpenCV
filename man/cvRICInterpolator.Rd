% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRICInterpolator}
\alias{cvRICInterpolator}
\title{Sparse match interpolation algorithm based on modified piecewise locally-weighted affine estimator called Robust Interpolation method of Co}
\usage{cvRICInterpolator(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvRICInterpolator} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Sparse match interpolation algorithm based on modified piecewise locally-weighted affine estimator called Robust Interpolation method of Correspondences or RIC from [130] and Variational and Fast Global Smoother as post-processing filter. The RICInterpolator is a extension of the EdgeAwareInterpolator. Main concept of this extension is an piece-wise affine model based on over-segmentation via SLIC superpixel estimation. The method contains an efficient propagation mechanism to estimate among the pieces-wise models.}
\details{
C++ 类 \code{cv::ximgproc::RICInterpolator} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/sparse_match_interpolator.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvRICInterpolator(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getAlpha()}：Alpha is a parameter defining a global weight for transforming geodesic distance into weight.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getFGSLambda()}：Sets the respective fastGlobalSmootherFilter parameter.
\item \code{getFGSSigma()}：Sets the respective fastGlobalSmootherFilter parameter.
\item \code{getK()}：K is a number of nearest-neighbor matches considered, when fitting a locally affine model for a superpixel segment. However, lower values would make the interpolation noticeably faster. The original implementation of [130] uses 32.
\item \code{getMaxFlow()}：MaxFlow is a threshold to validate the predictions using a certain piece-wise affine model. If the prediction exceeds the treshold the translational model will be applied instead.
\item \code{getModelIter()}：Parameter defining the number of iterations for piece-wise affine model estimation.
\item \code{getRefineModels()}：Parameter to choose wether additional refinement of the piece-wise affine models is employed.
\item \code{getSuperpixelMode()}：Parameter to choose superpixel algorithm variant to use
\item \code{getSuperpixelNNCnt()}：Parameter defines the number of nearest-neighbor matches for each superpixel considered, when fitting a locally affine model.
\item \code{getSuperpixelRuler()}：Parameter to tune enforcement of superpixel smoothness factor used for oversegmentation.
\item \code{getSuperpixelSize()}：Get the internal cost, i.e. edge map, used for estimating the edge-aware term.
\item \code{getUseGlobalSmootherFilter()}：Sets whether the fastGlobalSmootherFilter post-processing is employed.
\item \code{getUseVariationalRefinement()}：Parameter to choose wether the VariationalRefinement post-processing is employed.
\item \code{interpolate(from_image, from_points, to_image, to_points, dst = NULL)}：Interpolate input sparse matches.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAlpha(alpha = 0.7)}：Alpha is a parameter defining a global weight for transforming geodesic distance into weight.
\item \code{setCostMap(costMap)}：Interface to provide a more elaborated cost map, i.e. edge map, for the edge-aware term. This implementation is based on a rather simple gradient-based edge map estimation. To used more complex edge map estimator (e.g. StructuredEdgeDetection that has been used in the original publication) that may lead to improved accuracies, the internal edge map estimation can be bypassed here.
\item \code{setFGSLambda(lambda = 500)}：Sets the respective fastGlobalSmootherFilter parameter.
\item \code{setFGSSigma(sigma = 1.5)}：Sets the respective fastGlobalSmootherFilter parameter.
\item \code{setK(k = 32)}：K is a number of nearest-neighbor matches considered, when fitting a locally affine model for a superpixel segment. However, lower values would make the interpolation noticeably faster. The original implementation of [130] uses 32.
\item \code{setMaxFlow(maxFlow = 250)}：MaxFlow is a threshold to validate the predictions using a certain piece-wise affine model. If the prediction exceeds the treshold the translational model will be applied instead.
\item \code{setModelIter(modelIter = 4)}：Parameter defining the number of iterations for piece-wise affine model estimation.
\item \code{setRefineModels(refineModles = TRUE)}：Parameter to choose wether additional refinement of the piece-wise affine models is employed.
\item \code{setSuperpixelMode(mode = 100)}：Parameter to choose superpixel algorithm variant to use
\item \code{setSuperpixelNNCnt(spNN = 150)}：Parameter defines the number of nearest-neighbor matches for each superpixel considered, when fitting a locally affine model.
\item \code{setSuperpixelRuler(ruler = 15)}：Parameter to tune enforcement of superpixel smoothness factor used for oversegmentation.
\item \code{setSuperpixelSize(spSize = 15)}：Get the internal cost, i.e. edge map, used for estimating the edge-aware term.
\item \code{setUseGlobalSmootherFilter(use_FGS = TRUE)}：Sets whether the fastGlobalSmootherFilter post-processing is employed.
\item \code{setUseVariationalRefinement(use_variational_refinement = FALSE)}：Parameter to choose wether the VariationalRefinement post-processing is employed.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvSparseMatchInterpolator}}（\code{cv::ximgproc::SparseMatchInterpolator}）}
\keyword{opencv}
