% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_matchLOGOS}
\alias{cv_matchLOGOS}
\title{LOGOS (Local geometric support for high-outlier spatial verification) feature matching strategy described in [175] }
\usage{cv_matchLOGOS(keypoints1, keypoints2, nn1, nn2)}
\arguments{
\item{keypoints1}{Input keypoints of image1.}
\item{keypoints2}{Input keypoints of image2.}
\item{nn1}{Index to the closest BoW centroid for each descriptors of image1.}
\item{nn2}{Index to the closest BoW centroid for each descriptors of image2.}
}
\value{不可见地返回 \code{NULL}（结果写回传入的对象）。}
\description{LOGOS (Local geometric support for high-outlier spatial verification) feature matching strategy described in [175] .}
\details{
\strong{注意：}This matching strategy is suitable for features matching against large scale database. First step consists in constructing the bag-of-words (BoW) from a representative image database. Image descriptors are then represented by their closest codevector (nearest BoW centroid).

\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
}
\keyword{opencv}
