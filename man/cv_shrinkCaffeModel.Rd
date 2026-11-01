% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_shrinkCaffeModel}
\alias{cv_shrinkCaffeModel}
\title{Convert all weights of Caffe network to half precision floating point}
\usage{cv_shrinkCaffeModel(src, dst, layersTypes = NULL)}
\arguments{
\item{src}{Path to origin model from Caffe framework contains single precision floating point weights (usually has \code{.caffemodel} extension).}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
\item{layersTypes}{Set of layers types which parameters will be converted. By default, converts only Convolutional and Fully-Connected layers' weights.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Convert all weights of Caffe network to half precision floating point.}
\details{
\strong{注意：}Shrinked model has no origin float32 weights so it can't be used in origin Caffe framework anymore. However the structure of data is taken from NVidia's Caffe fork: https://github.com/NVIDIA/caffe. So the resulting model may be used there.

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
