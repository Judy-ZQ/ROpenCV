% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_FastHoughTransform}
\alias{cv_FastHoughTransform}
\title{Calculates 2D Fast Hough transform of an image}
\usage{cv_FastHoughTransform(src, dstMatDepth, angleRange = ARO_315_135,
    op = FHT_ADD, makeSkew = HDO_DESKEW, dst = NULL)}
\arguments{
\item{src}{The source (input) image.}
\item{dstMatDepth}{The depth of destination image}
\item{angleRange}{The part of Hough space to calculate, see cv::AngleRangeOption}
\item{op}{The operation to be applied, see cv::HoughOp}
\item{makeSkew}{Specifies to do or not to do image skewing, see cv::HoughDeskewOption}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{返回输出图像（\code{cvMat}）。}
\description{Calculates 2D Fast Hough transform of an image.}
\details{
The function calculates the fast Hough transform for full, half or quarter range of angles.
}
\keyword{opencv}
