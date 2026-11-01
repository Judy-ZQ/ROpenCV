% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcOpticalFlowSparseToDense}
\alias{cv_calcOpticalFlowSparseToDense}
\title{Fast dense optical flow based on PyrLK sparse matches interpolation}
\usage{cv_calcOpticalFlowSparseToDense(from, to, grid_step = 8, k = 128,
    sigma = 0.05, use_post_proc = TRUE, fgs_lambda = 500, fgs_sigma = 1.5,
    dst = NULL)}
\arguments{
\item{from}{first 8-bit 3-channel or 1-channel image.}
\item{to}{second 8-bit 3-channel or 1-channel image of the same size as from}
\item{grid_step}{stride used in sparse match computation. Lower values usually result in higher quality but slow down the algorithm.}
\item{k}{number of nearest-neighbor matches considered, when fitting a locally affine model. Lower values can make the algorithm noticeably faster at the cost of some quality degradation.}
\item{sigma}{parameter defining how fast the weights decrease in the locally-weighted affine fitting. Higher values can help preserve fine details, lower values can help to get rid of the noise in the output flow.}
\item{use_post_proc}{defines whether the ximgproc::fastGlobalSmootherFilter is used for post-processing after interpolation}
\item{fgs_lambda}{see the respective parameter of the ximgproc::fastGlobalSmootherFilter}
\item{fgs_sigma}{see the respective parameter of the ximgproc::fastGlobalSmootherFilter}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Fast dense optical flow based on PyrLK sparse matches interpolation.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/optflow.hpp>}
}
\keyword{opencv}
