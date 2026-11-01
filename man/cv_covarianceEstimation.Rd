% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_covarianceEstimation}
\alias{cv_covarianceEstimation}
\title{Computes the estimated covariance matrix of an image using the sliding window forumlation}
\usage{cv_covarianceEstimation(src, windowRows, windowCols, dst = NULL)}
\arguments{
\item{src}{The source image. Input image must be of a complex type.}
\item{windowRows}{The number of rows in the window.}
\item{windowCols}{The number of cols in the window. The window size parameters control the accuracy of the estimation. The sliding window moves over the entire image from the top-left corner to the bottom right corner. Each location of the window represents a sample. If the window is the size of the image, then this gives the exact covariance matrix. For all other cases, the sizes of the window will impact the number of samples and the number of elements in the estimated covariance matrix.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Computes the estimated covariance matrix of an image using the sliding window forumlation.}
\keyword{opencv}
