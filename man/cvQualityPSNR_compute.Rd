% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityPSNR_compute}
\alias{cvQualityPSNR_compute}
\title{static method for computing quality}
\usage{cvQualityPSNR_compute(ref, cmp, maxPixelValue = 255, dst = NULL)}
\arguments{
\item{ref}{reference image}
\item{cmp}{comparison image}
\item{maxPixelValue}{maximum per-channel value for any individual pixel; eg 255 for uint8 image}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{static cv::Scalar} 对应的 R 对象。}
\description{static method for computing quality}
\keyword{opencv}
