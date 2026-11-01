% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_composeRT}
\alias{cv_composeRT}
\title{Combines two rotation-and-shift transformations}
\usage{cv_composeRT(rvec1, tvec1, rvec2, tvec2, rvec3 = NULL, tvec3 = NULL,
    dr3dr1 = NULL, dr3dt1 = NULL, dr3dr2 = NULL, dr3dt2 = NULL,
    dt3dr1 = NULL, dt3dt1 = NULL, dt3dr2 = NULL, dt3dt2 = NULL)}
\arguments{
\item{rvec1}{First rotation vector.}
\item{tvec1}{First translation vector.}
\item{rvec2}{Second rotation vector.}
\item{tvec2}{Second translation vector.}
\item{rvec3}{Output rotation vector of the superposition.}
\item{tvec3}{Output translation vector of the superposition.}
\item{dr3dr1}{Optional output derivative of rvec3 with regard to rvec1}
\item{dr3dt1}{Optional output derivative of rvec3 with regard to tvec1}
\item{dr3dr2}{Optional output derivative of rvec3 with regard to rvec2}
\item{dr3dt2}{Optional output derivative of rvec3 with regard to tvec2}
\item{dt3dr1}{Optional output derivative of tvec3 with regard to rvec1}
\item{dt3dt1}{Optional output derivative of tvec3 with regard to tvec1}
\item{dt3dr2}{Optional output derivative of tvec3 with regard to rvec2}
\item{dt3dt2}{Optional output derivative of tvec3 with regard to tvec2}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Combines two rotation-and-shift transformations.}
\details{
The functions compute:

where denotes a rotation vector to a rotation matrix transformation, and denotes the inverse transformation. See Rodrigues for details.

Also, the functions can compute the derivatives of the output vectors with regards to the input vectors (see matMulDeriv ). The functions are used inside stereoCalibrate but can also be used in your own code where Levenberg-Marquardt or another gradient-based solver is used to optimize a function that contains a matrix multiplication.

\strong{C++ 头文件：}\code{#include <opencv2/3d.hpp>}
}
\keyword{opencv}
