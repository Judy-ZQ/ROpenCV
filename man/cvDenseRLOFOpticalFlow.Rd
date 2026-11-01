% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDenseRLOFOpticalFlow}
\alias{cvDenseRLOFOpticalFlow}
\title{Fast dense optical flow computation based on robust local optical flow (RLOF) algorithms and sparse-to-dense interpolation scheme}
\usage{cvDenseRLOFOpticalFlow(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDenseRLOFOpticalFlow} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Fast dense optical flow computation based on robust local optical flow (RLOF) algorithms and sparse-to-dense interpolation scheme.}
\details{
The RLOF is a fast local optical flow approach described in [239] [240] [241] and [242] similar to the pyramidal iterative Lucas-Kanade method as proposed by [36]. More details and experiments can be found in the following thesis [243]. The implementation is derived from optflow::calcOpticalFlowPyrLK .
The sparse-to-dense interpolation scheme allows for fast computation of dense optical flow using RLOF (see [104]). For this scheme the following steps are applied:
\enumerate{
\item motion vector seeded at a regular sampled grid are computed. The sparsity of this grid can be configured with setGridStep
\item (optinally) errornous motion vectors are filter based on the forward backward confidence. The threshold can be configured with setForwardBackward. The filter is only applied if the threshold >0 but than the runtime is doubled due to the estimation of the backward flow.
\item Vector field interpolation is applied to the motion vector set to obtain a dense vector field.
}
For the RLOF configuration see optflow::RLOFOpticalFlowParameter for further details. Parameters have been described in [239] [240] [241] and [242].
\strong{C++ 头文件：}\code{#include <opencv2/optflow/rlofflow.hpp>}
\strong{构造}
\preformatted{
cvDenseRLOFOpticalFlow(rlofParam = NULL, forwardBackwardThreshold = 1, gridStep = c(6, 6), interp_type = INTERP_EPIC, epicK = 128, epicSigma = 0.05, epicLambda = 999.0, ricSPSize = 15, ricSLICType = 100, use_post_proc = TRUE, fgsLambda = 500.0, fgsSigma = 1.5, use_variational_refinement = FALSE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDenseRLOFOpticalFlow(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(I0, I1, flow = NULL)}：Calculates an optical flow.
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}：Releases all inner buffers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getEPICK()}：see ximgproc::EdgeAwareInterpolator K value.
\item \code{getEPICLambda()}：see ximgproc::EdgeAwareInterpolator lambda value.
\item \code{getEPICSigma()}：see ximgproc::EdgeAwareInterpolator sigma value.
\item \code{getFgsLambda()}：see ximgproc::EdgeAwareInterpolator .
\item \code{getFgsSigma()}：see ximgproc::EdgeAwareInterpolator .
\item \code{getForwardBackward()}：Threshold for the forward backward confidence check.
\item \code{getGridStep()}：Size of the grid to spawn the motion vectors.
\item \code{getInterpolation()}：Interpolation used to compute the dense optical flow.
\item \code{getRICSLICType()}：Parameter to choose superpixel algorithm variant to use
\item \code{getRICSPSize()}：Parameter to tune the approximate size of the superpixel used for oversegmentation.
\item \code{getRLOFOpticalFlowParameter()}：Configuration of the RLOF alogrithm.
\item \code{getUsePostProc()}：enables ximgproc::fastGlobalSmootherFilter
\item \code{getUseVariationalRefinement()}：enables VariationalRefinement
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setEPICK(val)}：see ximgproc::EdgeAwareInterpolator K value.
\item \code{setEPICLambda(val)}：see ximgproc::EdgeAwareInterpolator lambda value.
\item \code{setEPICSigma(val)}：see ximgproc::EdgeAwareInterpolator sigma value.
\item \code{setFgsLambda(val)}：see ximgproc::EdgeAwareInterpolator .
\item \code{setFgsSigma(val)}：see ximgproc::EdgeAwareInterpolator .
\item \code{setForwardBackward(val)}：Threshold for the forward backward confidence check.
\item \code{setGridStep(val)}：Size of the grid to spawn the motion vectors.
\item \code{setInterpolation(val)}：Interpolation used to compute the dense optical flow.
\item \code{setRICSLICType(val)}：Parameter to choose superpixel algorithm variant to use
\item \code{setRICSPSize(val)}：Parameter to tune the approximate size of the superpixel used for oversegmentation.
\item \code{setRLOFOpticalFlowParameter(val)}：Configuration of the RLOF alogrithm.
\item \code{setUsePostProc(val)}：enables ximgproc::fastGlobalSmootherFilter
\item \code{setUseVariationalRefinement(val)}：enables VariationalRefinement
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDenseOpticalFlow}}（\code{cv::DenseOpticalFlow}）}
\keyword{opencv}
