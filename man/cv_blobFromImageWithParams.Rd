% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_blobFromImageWithParams}
\alias{cv_blobFromImageWithParams}
\title{Creates 4-dimensional blob from image with given params}
\usage{cv_blobFromImageWithParams(...)}
\arguments{
\item{...}{重载分发：按参数名与个数自动匹配下面的某个 C++ 重载。}
}
\value{\code{cvMat} 图像。}
\description{Creates 4-dimensional blob from image with given params.}
\details{
This function is an extension of blobFromImage to meet more image preprocess needs. Given input image and preprocessing parameters, and function outputs the blob.

\strong{重载}（R 侧按参数名与个数自动选择）：

\preformatted{

Mat blobFromImageWithParams(InputArray image, const Image2BlobParams& param = Image2BlobParams())

void blobFromImageWithParams(InputArray image, OutputArray blob, const Image2BlobParams& param = Image2BlobParams())

}

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
