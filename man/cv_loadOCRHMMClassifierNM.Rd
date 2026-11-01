% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadOCRHMMClassifierNM}
\alias{cv_loadOCRHMMClassifierNM}
\title{Allow to implicitly load the default character classifier when creating an OCRHMMDecoder object}
\usage{cv_loadOCRHMMClassifierNM(filename)}
\arguments{
\item{filename}{The XML or YAML file with the classifier model (e.g. OCRHMM_knn_model_data.xml)}
}
\value{\code{Ptr<OCRHMMDecoder::ClassifierCallback>} 对应的 R 对象。}
\description{Allow to implicitly load the default character classifier when creating an OCRHMMDecoder object.}
\details{
The KNN default classifier is based in the scene text recognition method proposed by Lukás Neumann & Jiri Matas in [Neumann11b]. Basically, the region (contour) in the input image is normalized to a fixed size, while retaining the centroid and aspect ratio, in order to extract a feature vector based on gradient orientations along the chain-code of its perimeter. Then, the region is classified using a KNN model trained with synthetic data of rendered characters with different standard font types.

\strong{C++ 头文件：}\code{#include <opencv2/text/ocr.hpp>}
}
\keyword{opencv}
