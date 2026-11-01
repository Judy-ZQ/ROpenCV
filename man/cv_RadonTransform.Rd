% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_RadonTransform}
\alias{cv_RadonTransform}
\title{Calculate Radon Transform of an image}
\usage{cv_RadonTransform(src, theta = 1, start_angle = 0, end_angle = 180,
    crop = FALSE, norm = FALSE, dst = NULL)}
\arguments{
\item{src}{The source (input) image.}
\item{theta}{Angle resolution of the transform in degrees.}
\item{start_angle}{Start angle of the transform in degrees.}
\item{end_angle}{End angle of the transform in degrees.}
\item{crop}{Crop the source image into a circle.}
\item{norm}{Normalize the output Mat to grayscale and convert type to CV_8U}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculate Radon Transform of an image.}
\details{
This function calculates the Radon Transform of a given image in any range. See https://engineering.purdue.edu/~malcolm/pct/CTI_Ch03.pdf for detail. If the input type is CV_8U, the output will be CV_32S. If the input type is CV_32F or CV_64F, the output will be CV_64F The output size will be num_of_integral x src_diagonal_length. If crop is selected, the input image will be crop into square then circle, and output size will be num_of_integral x min_edge.
}
\keyword{opencv}
