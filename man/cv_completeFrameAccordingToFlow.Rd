% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_completeFrameAccordingToFlow}
\alias{cv_completeFrameAccordingToFlow}
\title{cv_completeFrameAccordingToFlow}
\usage{cv_completeFrameAccordingToFlow(flowMask, flowX, flowY, frame1, mask1,
    distThresh, frame0 = NULL, mask0 = NULL)}
\arguments{
\item{flowMask}{含义见下方 C++ 签名。}
\item{flowX}{含义见下方 C++ 签名。}
\item{flowY}{含义见下方 C++ 签名。}
\item{frame1}{含义见下方 C++ 签名。}
\item{mask1}{含义见下方 C++ 签名。}
\item{distThresh}{含义见下方 C++ 签名。}
\item{frame0}{含义见下方 C++ 签名。}
\item{mask0}{含义见下方 C++ 签名。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{R 侧入口 \code{cv_completeFrameAccordingToFlow}，对应 C++ 的 \code{cv::videostab::completeFrameAccordingToFlow}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/videostab/inpainting.hpp>}
}
\keyword{opencv}
