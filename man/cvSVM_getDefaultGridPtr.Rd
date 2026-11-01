% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSVM_getDefaultGridPtr}
\alias{cvSVM_getDefaultGridPtr}
\title{Generates a grid for SVM parameters}
\usage{cvSVM_getDefaultGridPtr(param_id)}
\arguments{
\item{param_id}{SVM parameters IDs that must be one of the SVM::ParamTypes. The grid is generated for the parameter with this ID.}
}
\value{\code{static Ptr<ParamGrid>} 对应的 R 对象。}
\description{Generates a grid for SVM parameters.}
\details{
The function generates a grid pointer for the specified parameter of the SVM algorithm. The grid may be passed to the function SVM::trainAuto.
}
\keyword{opencv}
