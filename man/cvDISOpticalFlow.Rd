% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDISOpticalFlow}
\alias{cvDISOpticalFlow}
\title{DIS optical flow algorithm}
\usage{cvDISOpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDISOpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{DIS optical flow algorithm.}
\details{
This class implements the Dense Inverse Search (DIS) optical flow algorithm. More details about the algorithm can be found at [151] . Includes three presets with preselected parameters to provide reasonable trade-off between speed and quality. However, even the slowest preset is still relatively fast, use DeepFlow if you need better quality and don't care about speed.
This implementation includes several additional features compared to the algorithm described in the paper, including spatial propagation of flow vectors (getUseSpatialPropagation), as well as an option to utilize an initial flow approximation passed to calc (which is, essentially, temporal propagation, if the previous frame's flow field is passed).
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvDISOpticalFlow(preset = PRESET_FAST)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDISOpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(I0, I1, flow = NULL)}：Calculates an optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}：Releases all inner buffers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getFinestScale()}：Finest level of the Gaussian pyramid on which the flow is computed (zero level corresponds to the original image resolution). The final flow is obtained by bilinear upscaling.
\item \code{getGradientDescentIterations()}：Maximum number of gradient descent iterations in the patch inverse search stage. Higher values may improve quality in some cases.
\item \code{getPatchSize()}：Size of an image patch for matching (in pixels). Normally, default 8x8 patches work well enough in most cases.
\item \code{getPatchStride()}：Stride between neighbor patches. Must be less than patch size. Lower values correspond to higher flow quality.
\item \code{getUseMeanNormalization()}：Whether to use mean-normalization of patches when computing patch distance. It is turned on by default as it typically provides a noticeable quality boost because of increased robustness to illumination variations. Turn it off if you are certain that your sequence doesn't contain any changes in illumination.
\item \code{getUseSpatialPropagation()}：Whether to use spatial propagation of good optical flow vectors. This option is turned on by default, as it tends to work better on average and can sometimes help recover from major errors introduced by the coarse-to-fine scheme employed by the DIS optical flow algorithm. Turning this option off can make the output flow field a bit smoother, however.
\item \code{getVariationalRefinementAlpha()}：Weight of the smoothness term.
\item \code{getVariationalRefinementDelta()}：Weight of the color constancy term.
\item \code{getVariationalRefinementEpsilon()}：Norm value shift for robust penalizer.
\item \code{getVariationalRefinementGamma()}：Weight of the gradient constancy term.
\item \code{getVariationalRefinementIterations()}：Number of fixed point iterations of variational refinement per scale. Set to zero to disable variational refinement completely. Higher values will typically result in more smooth and high-quality flow.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setFinestScale(val)}：Finest level of the Gaussian pyramid on which the flow is computed (zero level corresponds to the original image resolution). The final flow is obtained by bilinear upscaling.
\item \code{setGradientDescentIterations(val)}：Maximum number of gradient descent iterations in the patch inverse search stage. Higher values may improve quality in some cases.
\item \code{setPatchSize(val)}：Size of an image patch for matching (in pixels). Normally, default 8x8 patches work well enough in most cases.
\item \code{setPatchStride(val)}：Stride between neighbor patches. Must be less than patch size. Lower values correspond to higher flow quality.
\item \code{setUseMeanNormalization(val)}：Whether to use mean-normalization of patches when computing patch distance. It is turned on by default as it typically provides a noticeable quality boost because of increased robustness to illumination variations. Turn it off if you are certain that your sequence doesn't contain any changes in illumination.
\item \code{setUseSpatialPropagation(val)}：Whether to use spatial propagation of good optical flow vectors. This option is turned on by default, as it tends to work better on average and can sometimes help recover from major errors introduced by the coarse-to-fine scheme employed by the DIS optical flow algorithm. Turning this option off can make the output flow field a bit smoother, however.
\item \code{setVariationalRefinementAlpha(val)}：Weight of the smoothness term.
\item \code{setVariationalRefinementDelta(val)}：Weight of the color constancy term.
\item \code{setVariationalRefinementEpsilon(val)}：Norm value shift for robust penalizer.
\item \code{setVariationalRefinementGamma(val)}：Weight of the gradient constancy term.
\item \code{setVariationalRefinementIterations(val)}：Maximum number of gradient descent iterations in the patch inverse search stage. Higher values may improve quality in some cases.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDenseOpticalFlow}}（\code{cv::DenseOpticalFlow}）}
\keyword{opencv}
