% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_findFile}
\alias{cv_findFile}
\title{Try to find requested data file}
\usage{cv_findFile(relative_path, required = TRUE, silentMode = FALSE)}
\arguments{
\item{relative_path}{Relative path to data file}
\item{required}{Specify "file not found" handling. If true, function prints information message and raises cv::Exception. If false, function returns empty result}
\item{silentMode}{Disables messages}
}
\value{Returns path (absolute or relative to the current directory) or empty string if file is not found}
\description{Try to find requested data file.}
\details{
Search directories:

\enumerate{
\item Directories passed via \code{addSamplesDataSearchPath }
\item OPENCV_SAMPLES_DATA_PATH_HINT environment variable
\item OPENCV_SAMPLES_DATA_PATH environment variable If parameter value is not empty and nothing is found then stop searching.
\item Detects build/install path based on: a. current working directory (CWD) b. and/or binary module location (opencv_core/opencv_world, doesn't work with static linkage)
\item Scan \\code\{<source>/\{,data,samples/data\}\} directories if build directory is detected or the current directory is in source tree.
\item Scan \code{<install>/share/OpenCV} directory if install directory is detected.
}

\strong{C++ 头文件：}\code{#include <opencv2/core/utility.hpp>}
}
\keyword{opencv}
