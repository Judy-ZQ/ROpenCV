% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_EMD}
\alias{cv_EMD}
\title{Computes the "minimal work" distance between two weighted point configurations}
\usage{cv_EMD(signature1, signature2, distType, cost = NULL, flow = NULL)}
\arguments{
\item{signature1}{First signature, a floating-point matrix. Each row stores the point weight followed by the point coordinates. The matrix is allowed to have a single column (weights only) if the user-defined cost matrix is used. The weights must be non-negative and have at least one non-zero value.}
\item{signature2}{Second signature of the same format as signature1 , though the number of rows may be different. The total weights may be different. In this case an extra "dummy" point is added to either signature1 or signature2. The weights must be non-negative and have at least one non-zero value.}
\item{distType}{Used metric. See DistanceTypes.}
\item{cost}{User-defined cost matrix. Also, if a cost matrix is used, lower boundary lowerBound cannot be calculated because it needs a metric function.}
\item{flow}{Resultant flow matrix: is a flow from -th point of signature1 to -th point of signature2 .}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{float}）挂在 \code{attr(x, "value")} 上。}
\description{Computes the "minimal work" distance between two weighted point configurations.}
\details{
The function computes the earth mover distance and/or a lower boundary of the distance between the two weighted point configurations. One of the applications described in [231], [232] is multi-dimensional histogram comparison for image retrieval. EMD is a transportation problem that is solved using some modification of a simplex algorithm, thus the complexity is exponential in the worst case, though, on average it is much faster. In the case of a real metric the lower boundary can be calculated even faster (using linear-time algorithm) and it can be used to determine roughly whether the two signatures are far enough so that they cannot relate to the same object.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
