% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_loadClassifierNM1}
\alias{cv_loadClassifierNM1}
\title{Allow to implicitly load the default classifier when creating an ERFilter object}
\usage{cv_loadClassifierNM1(filename)}
\arguments{
\item{filename}{The XML or YAML file with the classifier model (e.g. trained_classifierNM1.xml)}
}
\value{\code{Ptr<ERFilter::Callback>} 对应的 R 对象。}
\description{Allow to implicitly load the default classifier when creating an ERFilter object.}
\details{
returns a pointer to ERFilter::Callback.

\strong{C++ 头文件：}\code{#include <opencv2/text/erfilter.hpp>}
}
\keyword{opencv}
