% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_drawLineMatches}
\alias{cv_drawLineMatches}
\title{Draws the found matches of keylines from two images}
\usage{cv_drawLineMatches(img1, keylines1, img2, keylines2, matches1to2,
    matchColor = -1, singleLineColor = -1, matchesMask = NULL, flags = DEFAULT)}
\arguments{
\item{img1}{first image}
\item{keylines1}{keylines extracted from first image}
\item{img2}{second image}
\item{keylines2}{keylines extracted from second image}
\item{matches1to2}{vector of matches}
\item{matchColor}{drawing color for matches (chosen randomly in case of default value)}
\item{singleLineColor}{drawing color for keylines (chosen randomly in case of default value)}
\item{matchesMask}{mask to indicate which matches must be drawn}
\item{flags}{drawing flags, see DrawLinesMatchesFlags}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{Draws the found matches of keylines from two images.}
\details{
\strong{注意：}If both matchColor and singleLineColor are set to their default values, function draws matched lines and line connecting them with same color

\strong{C++ 头文件：}\code{#include <opencv2/line_descriptor/descriptor.hpp>}
}
\keyword{opencv}
