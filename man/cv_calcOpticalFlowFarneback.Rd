% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_calcOpticalFlowFarneback}
\alias{cv_calcOpticalFlowFarneback}
\title{Computes a dense optical flow using the Gunnar Farneback's algorithm}
\usage{cv_calcOpticalFlowFarneback(prev, next_, flow = NULL, pyr_scale, levels,
    winsize, iterations, poly_n, poly_sigma, flags)}
\arguments{
\item{prev}{first 8-bit single-channel input image.}
\item{next_}{含义见下方 C++ 签名。}
\item{flow}{computed flow image that has the same size as prev and type CV_32FC2.}
\item{pyr_scale}{parameter, specifying the image scale (<1) to build pyramids for each image; pyr_scale=0.5 means a classical pyramid, where each next layer is twice smaller than the previous one.}
\item{levels}{number of pyramid layers including the initial image; levels=1 means that no extra layers are created and only the original images are used.}
\item{winsize}{averaging window size; larger values increase the algorithm robustness to image noise and give more chances for fast motion detection, but yield more blurred motion field.}
\item{iterations}{number of iterations the algorithm does at each pyramid level.}
\item{poly_n}{size of the pixel neighborhood used to find polynomial expansion in each pixel; larger values mean that the image will be approximated with smoother surfaces, yielding more robust algorithm and more blurred motion field, typically poly_n =5 or 7.}
\item{poly_sigma}{standard deviation of the Gaussian that is used to smooth derivatives used as a basis for the polynomial expansion; for poly_n=5, you can set poly_sigma=1.1, for poly_n=7, a good value would be poly_sigma=1.5.}
\item{flags}{operation flags that can be a combination of the following: OPTFLOW_USE_INITIAL_FLOW uses the input flow as an initial flow approximation. OPTFLOW_FARNEBACK_GAUSSIAN uses the Gaussian filter instead of a box filter of the same size for optical flow estimation; usually, this option gives z more accurate flow than with a box filter, at the cost of lower speed; normally, winsize for a Gaussian window should be set to a larger value to achieve the same level of robustness.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes a dense optical flow using the Gunnar Farneback's algorithm.}
\details{
The function finds an optical flow for each prev pixel using the [82] algorithm so that

\itemize{
\item An example using the optical flow algorithm described by Gunnar Farneback can be found at opencv_source_code/samples/cpp/fback.cpp
\item (Python) An example using the optical flow algorithm described by Gunnar Farneback can be found at opencv_source_code/samples/python/opt_flow.py
}

\strong{注意：}Some examples:

\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
}
\keyword{opencv}
