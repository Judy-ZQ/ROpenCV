% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createERFilterNM2}
\alias{cv_createERFilterNM2}
\title{Create an Extremal Region Filter for the 2nd stage classifier of N&M algorithm [205]}
\usage{cv_createERFilterNM2(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{Ptr<ERFilter>} 对应的 R 对象。}
\description{Create an Extremal Region Filter for the 2nd stage classifier of N&M algorithm [205].}
\details{
In the second stage, the ERs that passed the first stage are classified into character and non-character classes using more informative but also more computationally expensive features. The classifier uses all the features calculated in the first stage and the following additional features: hole area ratio, convex hull ratio, and number of outer inflexion points.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Ptr<ERFilter> createERFilterNM2(const Ptr<ERFilter::Callback>& cb, float minProbability = (float)0.3)

Ptr<ERFilter> createERFilterNM2(const String& filename, float minProbability = (float)0.3)

}

\strong{C++ 头文件：}\code{#include <opencv2/text/erfilter.hpp>}
}
\keyword{opencv}
