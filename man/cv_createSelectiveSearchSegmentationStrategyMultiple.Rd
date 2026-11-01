% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createSelectiveSearchSegmentationStrategyMultiple}
\alias{cv_createSelectiveSearchSegmentationStrategyMultiple}
\title{Create a new multiple strategy and set one subtrategy}
\usage{cv_createSelectiveSearchSegmentationStrategyMultiple(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{Ptr<SelectiveSearchSegmentationStrategyMultiple>} 对应的 R 对象。}
\description{Create a new multiple strategy and set one subtrategy.}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Ptr<SelectiveSearchSegmentationStrategyMultiple> createSelectiveSearchSegmentationStrategyMultiple()

Ptr<SelectiveSearchSegmentationStrategyMultiple> createSelectiveSearchSegmentationStrategyMultiple(Ptr<SelectiveSearchSegmentationStrategy> s1)

Ptr<SelectiveSearchSegmentationStrategyMultiple> createSelectiveSearchSegmentationStrategyMultiple(Ptr<SelectiveSearchSegmentationStrategy> s1, Ptr<SelectiveSearchSegmentationStrategy> s2)

Ptr<SelectiveSearchSegmentationStrategyMultiple> createSelectiveSearchSegmentationStrategyMultiple(Ptr<SelectiveSearchSegmentationStrategy> s1, Ptr<SelectiveSearchSegmentationStrategy> s2, Ptr<SelectiveSearchSegmentationStrategy> s3)

Ptr<SelectiveSearchSegmentationStrategyMultiple> createSelectiveSearchSegmentationStrategyMultiple(Ptr<SelectiveSearchSegmentationStrategy> s1, Ptr<SelectiveSearchSegmentationStrategy> s2, Ptr<SelectiveSearchSegmentationStrategy> s3, Ptr<SelectiveSearchSegmentationStrategy> s4)

}

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/segmentation.hpp>}
}
\keyword{opencv}
