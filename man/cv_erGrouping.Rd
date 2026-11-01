% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_erGrouping}
\alias{cv_erGrouping}
\title{Find groups of Extremal Regions that are organized as text blocks}
\usage{cv_erGrouping(image, channel, regions, method = ERGROUPING_ORIENTATION_HORIZ,
    filename = "", minProbablity)}
\arguments{
\item{image}{含义见下方 C++ 签名。}
\item{channel}{含义见下方 C++ 签名。}
\item{regions}{Vector of ER's retrieved from the ERFilter algorithm from each channel.}
\item{method}{Grouping method (see text::erGrouping_Modes). Can be one of ERGROUPING_ORIENTATION_HORIZ, ERGROUPING_ORIENTATION_ANY.}
\item{filename}{The XML or YAML file with the classifier model (e.g. samples/trained_classifier_erGrouping.xml). Only to use when grouping method is ERGROUPING_ORIENTATION_ANY.}
\item{minProbablity}{The minimum probability for accepting a group. Only to use when grouping method is ERGROUPING_ORIENTATION_ANY.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Find groups of Extremal Regions that are organized as text blocks.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/text/erfilter.hpp>}
}
\keyword{opencv}
