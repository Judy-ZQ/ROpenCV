% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityMSE_compute}
\alias{cvQualityMSE_compute}
\title{static method for computing quality}
\usage{cvQualityMSE_compute(ref, cmp, dst = NULL)}
\arguments{
\item{ref}{reference image}
\item{cmp}{comparison image=}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{static cv::Scalar} 对应的 R 对象。}
\description{static method for computing quality}
\keyword{opencv}
