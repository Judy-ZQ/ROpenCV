% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getAvailableBackends}
\alias{cv_getAvailableBackends}
\title{cv_getAvailableBackends}
\usage{cv_getAvailableBackends()}
\value{list，每项为 \code{ std::pair<Backend, Target> } 对应的 R 对象。}
\description{R 侧入口 \code{cv_getAvailableBackends}，对应 C++ 的 \code{cv::dnn::getAvailableBackends}。}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
