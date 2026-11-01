% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_extendDictionary}
\alias{cv_extendDictionary}
\title{Extend base dictionary by new nMarkers}
\usage{cv_extendDictionary(nMarkers, markerSize, baseDictionary = NULL,
    randomSeed = 0)}
\arguments{
\item{nMarkers}{number of markers in the dictionary}
\item{markerSize}{number of bits per dimension of each markers}
\item{baseDictionary}{Include the markers in this dictionary at the beginning (optional)}
\item{randomSeed}{a user supplied seed for theRNG}
}
\value{\code{Dictionary} 对应的 R 对象。}
\description{Extend base dictionary by new nMarkers.}
\details{
This function creates a new dictionary composed by nMarkers markers and each markers composed by markerSize x markerSize bits. If baseDictionary is provided, its markers are directly included and the rest are generated based on them. If the size of baseDictionary is higher than nMarkers, only the first nMarkers in baseDictionary are taken and no new marker is added.

\strong{C++ 头文件：}\code{#include <opencv2/objdetect/aruco_dictionary.hpp>}
}
\keyword{opencv}
