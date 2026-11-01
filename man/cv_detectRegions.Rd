% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_detectRegions}
\alias{cv_detectRegions}
\title{Extracts text regions from image}
\usage{cv_detectRegions(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Extracts text regions from image.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void detectRegions(InputArray image, const Ptr<ERFilter>& er_filter1, const Ptr<ERFilter>& er_filter2, std::vector< std::vector<Point> >& regions)

void detectRegions(InputArray image, const Ptr<ERFilter>& er_filter1, const Ptr<ERFilter>& er_filter2, std::vector<Rect> & groups_rects, int method = ERGROUPING_ORIENTATION_HORIZ, const String& filename = String(), float minProbability = (float)0.5)

}

\strong{C++ 头文件：}\code{#include <opencv2/text/erfilter.hpp>}
}
\keyword{opencv}
