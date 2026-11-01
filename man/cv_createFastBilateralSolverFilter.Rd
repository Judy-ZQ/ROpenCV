% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createFastBilateralSolverFilter}
\alias{cv_createFastBilateralSolverFilter}
\title{Factory method, create instance of FastBilateralSolverFilter and execute the initialization routines}
\usage{cv_createFastBilateralSolverFilter(guide, sigma_spatial, sigma_luma,
    sigma_chroma, lambda = 128, num_iter = 25, max_tol = 1e-05)}
\arguments{
\item{guide}{image serving as guide for filtering. It should have 8-bit depth and either 1 or 3 channels.}
\item{sigma_spatial}{parameter, that is similar to spatial space sigma (bandwidth) in bilateralFilter.}
\item{sigma_luma}{parameter, that is similar to luma space sigma (bandwidth) in bilateralFilter.}
\item{sigma_chroma}{parameter, that is similar to chroma space sigma (bandwidth) in bilateralFilter.}
\item{lambda}{smoothness strength parameter for solver.}
\item{num_iter}{number of iterations used for solver, 25 is usually enough.}
\item{max_tol}{convergence tolerance used for solver.}
}
\value{\code{Ptr<FastBilateralSolverFilter>} 对应的 R 对象。}
\description{Factory method, create instance of FastBilateralSolverFilter and execute the initialization routines.}
\details{
For more details about the Fast Bilateral Solver parameters, see the original paper [19].

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_filter.hpp>}
}
\keyword{opencv}
