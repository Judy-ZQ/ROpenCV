% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_estimateGlobalMotionLeastSquares}
\alias{cv_estimateGlobalMotionLeastSquares}
\title{Estimates best global motion between two 2D point clouds in the least-squares sense}
\usage{cv_estimateGlobalMotionLeastSquares(points0 = NULL, points1 = NULL,
    model = MM_AFFINE)}
\arguments{
\item{points0}{Source set of 2D points (32F).}
\item{points1}{Destination set of 2D points (32F).}
\item{model}{Motion model (up to MM_AFFINE).}
}
\value{\code{cvMat} 图像。}
\description{Estimates best global motion between two 2D point clouds in the least-squares sense.}
\details{
\strong{注意：}Works in-place and changes input point arrays.

\strong{C++ 头文件：}\code{#include <opencv2/videostab/global_motion.hpp>}
}
\keyword{opencv}
