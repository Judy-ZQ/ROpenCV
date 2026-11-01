% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvOCRBeamSearchDecoder}
\alias{cvOCRBeamSearchDecoder}
\title{OCRBeamSearchDecoder class provides an interface for OCR using Beam Search algorithm}
\usage{cvOCRBeamSearchDecoder(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvOCRBeamSearchDecoder} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{OCRBeamSearchDecoder class provides an interface for OCR using Beam Search algorithm.}
\details{
\itemize{
\item (C++) An example on using OCRBeamSearchDecoder recognition combined with scene text detection can be found at the demo sample: https://github.com/opencv/opencv_contrib/blob/master/modules/text/samples/word_recognition.cpp
}
\strong{C++ 头文件：}\code{#include <opencv2/text/ocr.hpp>}
\strong{构造}
\preformatted{
cvOCRBeamSearchDecoder(classifier, vocabulary, transition_probabilities_table, emission_probabilities_table, mode = OCR_DECODER_VITERBI, beam_size = 500)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvOCRBeamSearchDecoder(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{run(image, mask = NULL, min_confidence, component_level = 0)}：Implements cv::text::BaseOCR.
}
}
\keyword{opencv}
