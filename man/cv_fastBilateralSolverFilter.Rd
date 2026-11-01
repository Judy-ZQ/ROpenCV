% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_fastBilateralSolverFilter}
\alias{cv_fastBilateralSolverFilter}
\title{Simple one-line Fast Bilateral Solver filter call}
\usage{cv_fastBilateralSolverFilter(guide, src, confidence, sigma_spatial = 8,
    sigma_luma = 8, sigma_chroma = 8, lambda = 128, num_iter = 25,
    max_tol = 1e-05, dst = NULL)}
\arguments{
\item{guide}{image serving as guide for filtering. It should have 8-bit depth and either 1 or 3 channels.}
\item{src}{source image for filtering with unsigned 8-bit or signed 16-bit or floating-point 32-bit depth and up to 4 channels.}
\item{confidence}{confidence image with unsigned 8-bit or floating-point 32-bit confidence and 1 channel.}
\item{sigma_spatial}{parameter, that is similar to spatial space sigma (bandwidth) in bilateralFilter.}
\item{sigma_luma}{parameter, that is similar to luma space sigma (bandwidth) in bilateralFilter.}
\item{sigma_chroma}{parameter, that is similar to chroma space sigma (bandwidth) in bilateralFilter.}
\item{lambda}{smoothness strength parameter for solver.}
\item{num_iter}{number of iterations used for solver, 25 is usually enough.}
\item{max_tol}{convergence tolerance used for solver.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Simple one-line Fast Bilateral Solver filter call. If you have multiple images to filter with the same guide then use FastBilateralSolverFilter interface to avoid extra computations.}
\details{
For more details about the Fast Bilateral Solver parameters, see the original paper [19].

\strong{注意：}Confidence images with CV_8U depth are expected to in [0, 255] and CV_32F in [0, 1] range.

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
