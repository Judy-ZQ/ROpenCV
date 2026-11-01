% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSVMSGD_load}
\alias{cvSVMSGD_load}
\title{Loads and creates a serialized SVMSGD from a file}
\usage{cvSVMSGD_load(filepath, nodeName = "")}
\arguments{
\item{filepath}{path to serialized SVMSGD}
\item{nodeName}{name of node containing the classifier}
}
\value{\code{static Ptr<SVMSGD>} 对应的 R 对象。}
\description{Loads and creates a serialized SVMSGD from a file.}
\details{
Use SVMSGD::save to serialize and store an SVMSGD to disk. Load the SVMSGD from this file again, by calling this function with the path to the file. Optionally specify the node for the file containing the classifier
}
\keyword{opencv}
