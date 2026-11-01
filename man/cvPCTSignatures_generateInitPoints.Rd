% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPCTSignatures_generateInitPoints}
\alias{cvPCTSignatures_generateInitPoints}
\title{Generates initial sampling points according to selected point distribution}
\usage{cvPCTSignatures_generateInitPoints(initPoints = NULL, count, pointDistribution)}
\arguments{
\item{initPoints}{Output vector where the generated points will be saved.}
\item{count}{Number of points to generate.}
\item{pointDistribution}{Point distribution selector. Available: UNIFORM, REGULAR, NORMAL.}
}
\value{\code{static void} 对应的 R 对象。}
\description{Generates initial sampling points according to selected point distribution.}
\details{
\strong{注意：}Generated coordinates are in range [0..1)
}
\keyword{opencv}
