% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSVM_load}
\alias{cvSVM_load}
\title{Loads and creates a serialized svm from a file}
\usage{cvSVM_load(filepath)}
\arguments{
\item{filepath}{path to serialized svm}
}
\value{\code{static Ptr<SVM>} 对应的 R 对象。}
\description{Loads and creates a serialized svm from a file.}
\details{
Use SVM::save to serialize and store an SVM to disk. Load the SVM from this file again, by calling this function with the path to the file.
}
\keyword{opencv}
