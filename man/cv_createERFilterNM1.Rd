% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createERFilterNM1}
\alias{cv_createERFilterNM1}
\title{Create an Extremal Region Filter for the 1st stage classifier of N&M algorithm [205]}
\usage{cv_createERFilterNM1(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{Ptr<ERFilter>} 对应的 R 对象。}
\description{Create an Extremal Region Filter for the 1st stage classifier of N&M algorithm [205].}
\details{
The component tree of the image is extracted by a threshold increased step by step from 0 to 255, incrementally computable descriptors (aspect_ratio, compactness, number of holes, and number of horizontal crossings) are computed for each ER and used as features for a classifier which estimates the class-conditional probability P(er|character). The value of P(er|character) is tracked using the inclusion relation of ER across all thresholds and only the ERs which correspond to local maximum of the probability P(er|character) are selected (if the local maximum of the probability is above a global limit pmin and the difference between local maximum and local minimum is greater than minProbabilityDiff).

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Ptr<ERFilter> createERFilterNM1(const Ptr<ERFilter::Callback>& cb, int thresholdDelta = 1, float minArea = (float)0.00025, float maxArea = (float)0.13, float minProbability = (float)0.4, bool nonMaxSuppression = true, float minProbabilityDiff = (float)0.1)

Ptr<ERFilter> createERFilterNM1(const String& filename, int thresholdDelta = 1, float minArea = (float)0.00025, float maxArea = (float)0.13, float minProbability = (float)0.4, bool nonMaxSuppression = true, float minProbabilityDiff = (float)0.1)

}

\strong{C++ 头文件：}\code{#include <opencv2/text/erfilter.hpp>}
}
\keyword{opencv}
