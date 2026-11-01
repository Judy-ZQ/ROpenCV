% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_NMSBoxesBatched}
\alias{cv_NMSBoxesBatched}
\title{Performs batched non maximum suppression on given boxes and corresponding scores across different classes}
\usage{cv_NMSBoxesBatched(bboxes, scores, class_ids, score_threshold, nms_threshold,
    eta = 1, top_k = 0)}
\arguments{
\item{bboxes}{a set of bounding boxes to apply NMS.}
\item{scores}{a set of corresponding confidences.}
\item{class_ids}{a set of corresponding class ids. Ids are integer and usually start from 0.}
\item{score_threshold}{a threshold used to filter boxes by score.}
\item{nms_threshold}{a threshold used in non maximum suppression.}
\item{eta}{a coefficient in adaptive threshold formula: .}
\item{top_k}{if \code{>0}, keep at most \code{top_k} picked indices.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Performs batched non maximum suppression on given boxes and corresponding scores across different classes.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
