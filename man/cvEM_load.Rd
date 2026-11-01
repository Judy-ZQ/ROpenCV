% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvEM_load}
\alias{cvEM_load}
\title{Loads and creates a serialized EM from a file}
\usage{cvEM_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized EM}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<EM>} 对应的 R 对象。}
\description{Loads and creates a serialized EM from a file.}
\details{
Use EM::save to serialize and store an EM to disk. Load the EM from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
