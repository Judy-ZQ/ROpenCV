% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadOCRHMMClassifier}
\alias{cv_loadOCRHMMClassifier}
\title{Allow to implicitly load the default character classifier when creating an OCRHMMDecoder object}
\usage{cv_loadOCRHMMClassifier(filename, classifier)}
\arguments{
\item{filename}{The XML or YAML file with the classifier model (e.g. OCRBeamSearch_CNN_model_data.xml.gz)}
\item{classifier}{Can be one of classifier_type enum values.}
}
\value{\code{Ptr<OCRHMMDecoder::ClassifierCallback>} 对应的 R 对象。}
\description{Allow to implicitly load the default character classifier when creating an OCRHMMDecoder object.}
\details{
\strong{C++ 头文件：}\code{#include <opencv2/text/ocr.hpp>}
}
\keyword{opencv}
