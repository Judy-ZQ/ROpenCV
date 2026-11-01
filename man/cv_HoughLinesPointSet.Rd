% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_HoughLinesPointSet}
\alias{cv_HoughLinesPointSet}
\title{Finds lines in a set of points using the standard Hough transform}
\usage{cv_HoughLinesPointSet(point, lines_max, threshold, min_rho, max_rho,
    rho_step, min_theta, max_theta, theta_step, dst = NULL)}
\arguments{
\item{point}{Input vector of points. Each vector must be encoded as a Point vector . Type must be CV_32FC2 or CV_32SC2.}
\item{lines_max}{Max count of Hough lines.}
\item{threshold}{Accumulator threshold parameter. Only those lines are returned that get enough votes .}
\item{min_rho}{Minimum value for for the accumulator (Note: can be negative. The absolute value is the distance of a line to the origin.).}
\item{max_rho}{Maximum value for for the accumulator.}
\item{rho_step}{Distance resolution of the accumulator.}
\item{min_theta}{Minimum angle value of the accumulator in radians.}
\item{max_theta}{Upper bound for the angle value of the accumulator in radians. The actual maximum angle may be slightly less than max_theta, depending on the parameters min_theta and theta_step.}
\item{theta_step}{Angle resolution of the accumulator in radians.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Finds lines in a set of points using the standard Hough transform.}
\details{
The function finds lines in a set of points using a modification of the Hough transform.

\strong{C++ 头文件：}\code{#include <opencv2/imgproc.hpp>}
}
\keyword{opencv}
