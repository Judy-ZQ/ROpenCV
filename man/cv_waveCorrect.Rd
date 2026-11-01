% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_waveCorrect}
\alias{cv_waveCorrect}
\title{Tries to make panorama more horizontal (or vertical)}
\usage{cv_waveCorrect(rmats = NULL, kind)}
\arguments{
\item{rmats}{Camera rotation matrices.}
\item{kind}{Correction kind, see detail::WaveCorrectKind.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Tries to make panorama more horizontal (or vertical).}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/motion_estimators.hpp>}
}
\keyword{opencv}
