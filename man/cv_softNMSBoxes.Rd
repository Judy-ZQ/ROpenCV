% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_softNMSBoxes}
\alias{cv_softNMSBoxes}
\title{Performs soft non maximum suppression given boxes and corresponding scores}
\usage{cv_softNMSBoxes(bboxes, scores, score_threshold, nms_threshold, top_k = 0,
    sigma = 0.5, method = SOFTNMS_GAUSSIAN)}
\arguments{
\item{bboxes}{a set of bounding boxes to apply Soft NMS.}
\item{scores}{a set of corresponding confidences.}
\item{score_threshold}{a threshold used to filter boxes by score.}
\item{nms_threshold}{a threshold used in non maximum suppression.}
\item{top_k}{keep at most \code{top_k} picked indices.}
\item{sigma}{parameter of Gaussian weighting.}
\item{method}{Gaussian or linear.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Performs soft non maximum suppression given boxes and corresponding scores. Reference: https://arxiv.org/abs/1704.04503.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
