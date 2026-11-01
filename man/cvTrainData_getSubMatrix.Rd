% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrainData_getSubMatrix}
\alias{cvTrainData_getSubMatrix}
\title{Extract from matrix rows/cols specified by passed indexes}
\usage{cvTrainData_getSubMatrix(matrix, idx, layout)}
\arguments{
\item{matrix}{input matrix (supported types: CV_32S, CV_32F, CV_64F)}
\item{idx}{1D index vector}
\item{layout}{specifies to extract rows (cv::ml::ROW_SAMPLES) or to extract columns (cv::ml::COL_SAMPLES)}
}
\value{\code{static Mat} 对应的 R 对象。}
\description{Extract from matrix rows/cols specified by passed indexes.}
\keyword{opencv}
