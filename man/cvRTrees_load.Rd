% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvRTrees_load}
\alias{cvRTrees_load}
\title{Loads and creates a serialized RTree from a file}
\usage{cvRTrees_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized RTree}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<RTrees>} 对应的 R 对象。}
\description{Loads and creates a serialized RTree from a file.}
\details{
Use RTree::save to serialize and store an RTree to disk. Load the RTree from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
