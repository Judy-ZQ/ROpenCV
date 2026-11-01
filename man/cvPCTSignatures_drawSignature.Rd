% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPCTSignatures_drawSignature}
\alias{cvPCTSignatures_drawSignature}
\title{Draws signature in the source image and outputs the result}
\usage{cvPCTSignatures_drawSignature(source, signature,
    radiusToShorterSideRatio = 0.125, borderThickness = 1, dst = NULL)}
\arguments{
\item{source}{Source image.}
\item{signature}{Image signature.}
\item{radiusToShorterSideRatio}{Determines maximal radius of signature in the output image.}
\item{borderThickness}{Border thickness of the visualized signature.}
\item{dst}{输出图像。省略时新建并返回；提供时在原对象上填充并返回它。传一个已存在的 \code{cvMat} 可以复用缓冲区。}
}
\value{\code{static void} 对应的 R 对象。}
\description{Draws signature in the source image and outputs the result. Signatures are visualized as a circle with radius based on signature weight and color based on signature color. Contrast and entropy are not visualized.}
\keyword{opencv}
