% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_detectTextSWT}
\alias{cv_detectTextSWT}
\title{Applies the Stroke Width Transform operator followed by filtering of connected components of similar Stroke Widths to return letter candida}
\usage{cv_detectTextSWT(input, dark_on_light, draw = NULL, chainBBs = NULL)}
\arguments{
\item{input}{the input image with 3 channels.}
\item{dark_on_light}{a boolean value signifying whether the text is darker or lighter than the background, it is observed to reverse the gradient obtained from Scharr operator, and significantly affect the result.}
\item{draw}{an optional Mat of type CV_8UC3 which visualises the detected letters using bounding boxes.}
\item{chainBBs}{an optional parameter which chains the letter candidates according to heuristics in the paper and returns all possible regions where text is likely to occur.}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Applies the Stroke Width Transform operator followed by filtering of connected components of similar Stroke Widths to return letter candidates. It also chain them by proximity and size, saving the result in chainBBs.}
\keyword{opencv}
