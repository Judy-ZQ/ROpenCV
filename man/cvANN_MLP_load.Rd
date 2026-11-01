% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvANN_MLP_load}
\alias{cvANN_MLP_load}
\title{Loads and creates a serialized ANN from a file}
\usage{cvANN_MLP_load(filepath)}
\arguments{
\item{filepath}{path to serialized ANN}
}
\value{\code{static Ptr<ANN_MLP>} 对应的 R 对象。}
\description{Loads and creates a serialized ANN from a file.}
\details{
Use ANN::save to serialize and store an ANN to disk. Load the ANN from this file again, by calling this function with the path to the file.
}
\keyword{opencv}
