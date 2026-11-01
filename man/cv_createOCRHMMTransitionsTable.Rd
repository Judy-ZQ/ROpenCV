% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_createOCRHMMTransitionsTable}
\alias{cv_createOCRHMMTransitionsTable}
\title{Utility function to create a tailored language model transitions table from a given list of words (lexicon)}
\usage{cv_createOCRHMMTransitionsTable(vocabulary, lexicon = NULL)}
\arguments{
\item{vocabulary}{The language vocabulary (chars when ASCII English text).}
\item{lexicon}{The list of words that are expected to be found in a particular image.}
}
\value{\code{cvMat} 图像。}
\description{Utility function to create a tailored language model transitions table from a given list of words (lexicon).}
\details{
The function calculate frequency statistics of character pairs from the given lexicon and fills the output transition_probabilities_table with them. The transition_probabilities_table can be used as input in the OCRHMMDecoder::create and OCRBeamSearchDecoder::create methods.

\strong{注意：}(C++) An alternative would be to load the default generic language transition table provided in the text module samples folder (created from ispell 42869 english words list) : https://github.com/opencv/opencv_contrib/blob/master/modules/text/samples/OCRHMM_transitions_table.xml

\strong{C++ 头文件：}\code{#include <opencv2/text/ocr.hpp>}
}
\keyword{opencv}
