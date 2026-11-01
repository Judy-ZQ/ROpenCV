% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityBRISQUE_computeFeatures}
\alias{cvQualityBRISQUE_computeFeatures}
\title{static method for computing image features used by the BRISQUE algorithm}
\usage{cvQualityBRISQUE_computeFeatures(img, dst = NULL)}
\arguments{
\item{img}{image (BGR(A) or grayscale) for which to compute features}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{static void} 对应的 R 对象。}
\description{static method for computing image features used by the BRISQUE algorithm}
\keyword{opencv}
