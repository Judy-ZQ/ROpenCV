% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_NMSBoxes}
\alias{cv_NMSBoxes}
\title{Performs non maximum suppression given boxes and corresponding scores}
\usage{cv_NMSBoxes(bboxes, scores, score_threshold, nms_threshold, eta = 1, top_k = 0)}
\arguments{
\item{bboxes}{a set of bounding boxes to apply NMS.}
\item{scores}{a set of corresponding confidences.}
\item{score_threshold}{a threshold used to filter boxes by score.}
\item{nms_threshold}{a threshold used in non maximum suppression.}
\item{eta}{a coefficient in adaptive threshold formula: .}
\item{top_k}{if \code{>0}, keep at most \code{top_k} picked indices.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Performs non maximum suppression given boxes and corresponding scores.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void NMSBoxes(const std::vector<Rect2d>& bboxes, const std::vector<float>& scores, const float score_threshold, const float nms_threshold, std::vector<int>& indices, const float eta = 1.f, const int top_k = 0)

void NMSBoxes(const std::vector<RotatedRect>& bboxes, const std::vector<float>& scores, const float score_threshold, const float nms_threshold, std::vector<int>& indices, const float eta = 1.f, const int top_k = 0)

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
