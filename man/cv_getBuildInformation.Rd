% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_getBuildInformation}
\alias{cv_getBuildInformation}
\title{Returns full configuration time cmake output}
\usage{cv_getBuildInformation()}
\value{\code{const String&} 对应的 R 对象。}
\description{Returns full configuration time cmake output.}
\details{
Returned value is raw cmake output including version control system revision, compiler version, compiler flags, enabled modules and third party libraries, etc. Output format depends on target architecture.

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
