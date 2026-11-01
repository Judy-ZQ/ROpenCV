% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvDTrees_load}
\alias{cvDTrees_load}
\title{Loads and creates a serialized DTrees from a file}
\usage{cvDTrees_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized DTree}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<DTrees>} 对应的 R 对象。}
\description{Loads and creates a serialized DTrees from a file.}
\details{
Use DTree::save to serialize and store an DTree to disk. Load the DTree from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
