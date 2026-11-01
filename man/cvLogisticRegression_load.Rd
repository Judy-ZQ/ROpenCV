% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvLogisticRegression_load}
\alias{cvLogisticRegression_load}
\title{Loads and creates a serialized LogisticRegression from a file}
\usage{cvLogisticRegression_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized LogisticRegression}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<LogisticRegression>} 对应的 R 对象。}
\description{Loads and creates a serialized LogisticRegression from a file.}
\details{
Use LogisticRegression::save to serialize and store an LogisticRegression to disk. Load the LogisticRegression from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
