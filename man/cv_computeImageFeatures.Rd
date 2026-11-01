% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_computeImageFeatures}
\alias{cv_computeImageFeatures}
\title{cv_computeImageFeatures}
\usage{cv_computeImageFeatures(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{R 侧入口 \code{cv_computeImageFeatures}，对应 C++ 的 \code{cv::detail::computeImageFeatures}。}
\details{
\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

void computeImageFeatures(const Ptr<Feature2D> & featuresFinder, InputArrayOfArrays images, std::vector<ImageFeatures> & features, InputArrayOfArrays masks = noArray())

void computeImageFeatures(const Ptr<Feature2D> & featuresFinder, InputArray image, ImageFeatures & features, InputArray mask = noArray())

}

\strong{C++ 头文件：}\code{#include <opencv2/stitching/detail/matchers.hpp>}
}
\keyword{opencv}
