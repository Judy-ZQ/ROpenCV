% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvImage2BlobParams}
\alias{cvImage2BlobParams}
\title{Processing params of image to blob}
\usage{cvImage2BlobParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvImage2BlobParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{Processing params of image to blob.}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::dnn::Image2BlobParams")} 查全部字段。

\itemize{

\item \code{borderValue}（\code{Scalar}）：Value used in padding mode for padding.

\item \code{datalayout}（\code{DataLayout}）：Order of output dimensions. Choose DNN_LAYOUT_NCHW or DNN_LAYOUT_NHWC.

\item \code{ddepth}（\code{int}）：Depth of output blob. Choose CV_32F or CV_8U.

\item \code{mean}（\code{Scalar}）：Scalar with mean values which are subtracted from channels.

\item \code{paddingmode}（\code{ImagePaddingMode}）：Image padding mode.

\item \code{scalefactor}（\code{Scalar}）：scalefactor multiplier for input image values.

\item \code{size}（\code{Size}）：Spatial size for output image.

\item \code{swapRB}（\code{bool}）：Flag which indicates that swap first and last channels.

}

Processing params of image to blob.

It includes all possible image processing operations and corresponding parameters.

\strong{C++ 头文件：}\code{#include <opencv2/dnn/dnn.hpp>}
}
\keyword{opencv}
