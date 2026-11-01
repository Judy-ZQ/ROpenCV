% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadDatasetList}
\alias{cv_loadDatasetList}
\title{A utility to load list of paths to training image and annotation file}
\usage{cv_loadDatasetList(imageList, annotationList, images = NULL,
    annotations = NULL)}
\arguments{
\item{imageList}{The specified file contains paths to the training images.}
\item{annotationList}{The specified file contains paths to the training annotations.}
\item{images}{The loaded paths of training images.}
\item{annotations}{The loaded paths of annotation files.}
}
\value{逻辑标量。}
\description{A utility to load list of paths to training image and annotation file.}
\details{
Example of usage:

\strong{C++ 头文件：}\code{#include <opencv2/face/facemark_train.hpp>}
}
\keyword{opencv}
