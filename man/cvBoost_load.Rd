% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBoost_load}
\alias{cvBoost_load}
\title{Loads and creates a serialized Boost from a file}
\usage{cvBoost_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized Boost}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<Boost>} 对应的 R 对象。}
\description{Loads and creates a serialized Boost from a file.}
\details{
Use Boost::save to serialize and store an RTree to disk. Load the Boost from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
