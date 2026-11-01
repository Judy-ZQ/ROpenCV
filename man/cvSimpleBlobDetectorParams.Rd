% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSimpleBlobDetectorParams}
\alias{cvSimpleBlobDetectorParams}
\title{\code{cv::SimpleBlobDetector::Params} 参数对象}
\usage{cvSimpleBlobDetectorParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvSimpleBlobDetectorParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::SimpleBlobDetector::Params} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::SimpleBlobDetector::Params")} 查全部字段。

\itemize{

\item \code{blobColor}（\code{uchar}）

\item \code{collectContours}（\code{bool}）

\item \code{filterByArea}（\code{bool}）

\item \code{filterByCircularity}（\code{bool}）

\item \code{filterByColor}（\code{bool}）

\item \code{filterByConvexity}（\code{bool}）

\item \code{filterByInertia}（\code{bool}）

\item \code{maxArea}（\code{float}）

\item \code{maxCircularity}（\code{float}）

\item \code{maxConvexity}（\code{float}）

\item \code{maxInertiaRatio}（\code{float}）

\item \code{maxThreshold}（\code{float}）

\item \code{minArea}（\code{float}）

\item \code{minCircularity}（\code{float}）

\item \code{minConvexity}（\code{float}）

\item \code{minDistBetweenBlobs}（\code{float}）

\item \code{minInertiaRatio}（\code{float}）

\item \code{minRepeatability}（\code{size_t}）

\item \code{minThreshold}（\code{float}）

\item \code{thresholdStep}（\code{float}）

}

\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
}
\keyword{opencv}
