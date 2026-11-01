% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKNearest_load}
\alias{cvKNearest_load}
\title{Loads and creates a serialized knearest from a file}
\usage{cvKNearest_load(filepath)}
\arguments{
\item{filepath}{path to serialized KNearest}
}
\value{\code{static Ptr<KNearest>} 对应的 R 对象。}
\description{Loads and creates a serialized knearest from a file.}
\details{
Use KNearest::save to serialize and store an KNearest to disk. Load the KNearest from this file again, by calling this function with the path to the file.
}
\keyword{opencv}
