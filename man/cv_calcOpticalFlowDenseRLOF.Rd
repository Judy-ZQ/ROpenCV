% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcOpticalFlowDenseRLOF}
\alias{cv_calcOpticalFlowDenseRLOF}
\title{Fast dense optical flow computation based on robust local optical flow (RLOF) algorithms and sparse-to-dense interpolation scheme}
\usage{cv_calcOpticalFlowDenseRLOF(I0, I1, flow = NULL, rlofParam = NULL,
    forwardBackwardThreshold = 0, gridStep = c(6, 6),
    interp_type = INTERP_EPIC, epicK = 128, epicSigma = 0.05,
    epicLambda = 100, ricSPSize = 15, ricSLICType = 100,
    use_post_proc = TRUE, fgsLambda = 500, fgsSigma = 1.5,
    use_variational_refinement = FALSE)}
\arguments{
\item{I0}{first 8-bit input image. If The cross-based RLOF is used (by selecting optflow::RLOFOpticalFlowParameter::supportRegionType = SupportRegionType::SR_CROSS) image has to be a 8-bit 3 channel image.}
\item{I1}{second 8-bit input image. If The cross-based RLOF is used (by selecting optflow::RLOFOpticalFlowParameter::supportRegionType = SupportRegionType::SR_CROSS) image has to be a 8-bit 3 channel image.}
\item{flow}{computed flow image that has the same size as I0 and type CV_32FC2.}
\item{rlofParam}{see optflow::RLOFOpticalFlowParameter}
\item{forwardBackwardThreshold}{Threshold for the forward backward confidence check. For each grid point a motion vector is computed. If the forward backward error is larger than threshold given by this function then the motion vector will not be used by the following vector field interpolation. denotes the backward flow. Note, the forward backward test will only be applied if the threshold > 0. This may results into a doubled runtime for the motion estimation.}
\item{gridStep}{Size of the grid to spawn the motion vectors. For each grid point a motion vector is computed. Some motion vectors will be removed due to the forwatd backward threshold (if set >0). The rest will be the base of the vector field interpolation.}
\item{interp_type}{interpolation method used to compute the dense optical flow. Two interpolation algorithms are supported: INTERP_GEO applies the fast geodesic interpolation, see [104]. INTERP_EPIC_RESIDUAL applies the edge-preserving interpolation, see [226],Geistert2016.}
\item{epicK}{see ximgproc::EdgeAwareInterpolator sets the respective parameter.}
\item{epicSigma}{see ximgproc::EdgeAwareInterpolator sets the respective parameter.}
\item{epicLambda}{see ximgproc::EdgeAwareInterpolator sets the respective parameter.}
\item{ricSPSize}{see ximgproc::RICInterpolator sets the respective parameter.}
\item{ricSLICType}{see ximgproc::RICInterpolator sets the respective parameter.}
\item{use_post_proc}{enables ximgproc::fastGlobalSmootherFilter parameter.}
\item{fgsLambda}{sets the respective ximgproc::fastGlobalSmootherFilter parameter.}
\item{fgsSigma}{sets the respective ximgproc::fastGlobalSmootherFilter parameter.}
\item{use_variational_refinement}{enables VariationalRefinement}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fast dense optical flow computation based on robust local optical flow (RLOF) algorithms and sparse-to-dense interpolation scheme.}
\details{
The RLOF is a fast local optical flow approach described in [239] [240] [241] and [242] similar to the pyramidal iterative Lucas-Kanade method as proposed by [36]. More details and experiments can be found in the following thesis [243]. The implementation is derived from optflow::calcOpticalFlowPyrLK .

The sparse-to-dense interpolation scheme allows for fast computation of dense optical flow using RLOF (see [104]). For this scheme the following steps are applied:

\enumerate{
\item motion vector seeded at a regular sampled grid are computed. The sparsity of this grid can be configured with setGridStep
\item (optinally) errornous motion vectors are filter based on the forward backward confidence. The threshold can be configured with setForwardBackward. The filter is only applied if the threshold >0 but than the runtime is doubled due to the estimation of the backward flow.
\item Vector field interpolation is applied to the motion vector set to obtain a dense vector field.
}

Parameters have been described in [239], [240], [241], [242]. For the RLOF configuration see optflow::RLOFOpticalFlowParameter for further details.

\strong{注意：}If the grid size is set to (1,1) and the forward backward threshold <= 0 that the dense optical flow field is purely computed with the RLOF. SIMD parallelization is only available when compiling with SSE4.1. Note that in output, if no correspondences are found between I0 and I1, the flow is set to 0.

\strong{C++ 头文件：}\code{#include <opencv2/optflow/rlofflow.hpp>}
}
\keyword{opencv}
