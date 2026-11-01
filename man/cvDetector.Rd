% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDetector}
\alias{cvDetector}
\title{Object detector using the LINE template matching algorithm with any set of modalities}
\usage{cvDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Object detector using the LINE template matching algorithm with any set of modalities.}
\details{
C++ 类 \code{cv::linemod::Detector} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/rgbd/linemod.hpp>}
\strong{构造}
\preformatted{
cvDetector()
cvDetector(modalities, T_pyramid)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{addSyntheticTemplate(templates, class_id)}：Add a new object template computed by external means.
\item \code{addTemplate(sources, class_id, object_mask)}：Add new object template.
\item \code{classIds()}
\item \code{getModalities()}：Get the modalities used by this detector.
\item \code{getT(pyramid_level)}：Get sampling step T at pyramid_level.
\item \code{getTemplates(class_id, template_id)}：Get the template pyramid identified by template_id.
\item \code{match(sources, threshold, class_ids = NULL, masks = NULL, quantized_images = NULL)}：Detect objects by template matching.
\item \code{numClasses()}
\item \code{numTemplates(class_id)}
\item \code{pyramidLevels()}：Get number of pyramid levels used by this detector.
\item \code{read(fn)}
\item \code{readClasses(class_ids, format)}
\item \code{writeClasses(format)}：Member Data Documentation
}
}
\keyword{opencv}
