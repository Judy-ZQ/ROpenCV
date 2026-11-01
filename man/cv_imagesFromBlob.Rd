% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_imagesFromBlob}
\alias{cv_imagesFromBlob}
\title{Parse a 4D blob and output the images it contains as 2D arrays through a simpler data structure (std::vector<cv::Mat>)}
\usage{cv_imagesFromBlob(blob_, images_ = NULL)}
\arguments{
\item{blob_}{4 dimensional array (images, channels, height, width) in floating point precision (CV_32F) from which you would like to extract the images.}
\item{images_}{array of 2D Mat containing the images extracted from the blob in floating point precision (CV_32F). They are non normalized neither mean added. The number of returned images equals the first dimension of the blob (batch size). Every image has a number of channels equals to the second dimension of the blob (depth).}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Parse a 4D blob and output the images it contains as 2D arrays through a simpler data structure (std::vector<cv::Mat>).}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
