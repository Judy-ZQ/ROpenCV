% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadOCRBeamSearchClassifierCNN}
\alias{cv_loadOCRBeamSearchClassifierCNN}
\title{Allow to implicitly load the default character classifier when creating an OCRBeamSearchDecoder object}
\usage{cv_loadOCRBeamSearchClassifierCNN(filename)}
\arguments{
\item{filename}{The XML or YAML file with the classifier model (e.g. OCRBeamSearch_CNN_model_data.xml.gz)}
}
\value{\code{Ptr<OCRBeamSearchDecoder::ClassifierCallback>} 对应的 R 对象。}
\description{Allow to implicitly load the default character classifier when creating an OCRBeamSearchDecoder object.}
\details{
The CNN default classifier is based in the scene text recognition method proposed by Adam Coates & Andrew NG in [Coates11a]. The character classifier consists in a Single Layer Convolutional Neural Network and a linear classifier. It is applied to the input image in a sliding window fashion, providing a set of recognitions at each window location.

\strong{C++ 头文件：}\code{#include <opencv2/text/ocr.hpp>}
}
\keyword{opencv}
