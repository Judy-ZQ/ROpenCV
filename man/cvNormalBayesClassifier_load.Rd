% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvNormalBayesClassifier_load}
\alias{cvNormalBayesClassifier_load}
\title{Loads and creates a serialized NormalBayesClassifier from a file}
\usage{cvNormalBayesClassifier_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized NormalBayesClassifier}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<NormalBayesClassifier>} 对应的 R 对象。}
\description{Loads and creates a serialized NormalBayesClassifier from a file.}
\details{
Use NormalBayesClassifier::save to serialize and store an NormalBayesClassifier to disk. Load the NormalBayesClassifier from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
