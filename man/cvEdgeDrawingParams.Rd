% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvEdgeDrawingParams}
\alias{cvEdgeDrawingParams}
\title{\code{cv::ximgproc::EdgeDrawing::Params} 参数对象}
\usage{cvEdgeDrawingParams(...)}
\arguments{
\item{...}{字段按名字给出，未给出的保持 OpenCV 的默认值；写错字段名会直接报错。}
}
\value{一个 \code{cvEdgeDrawingParams} 对象，可直接作为其它函数的 \code{params} 参数。}
\description{\code{cv::ximgproc::EdgeDrawing::Params} 的参数对象，字段按名字给出。}
\details{
\strong{字段}

字段名与 C++ 结构体一致，可用 \code{cv_struct_fields("cv::ximgproc::EdgeDrawing::Params")} 查全部字段。

\itemize{

\item \code{AnchorThresholdValue}（\code{int}）：threshold value used to select anchor points. Default value is 0

\item \code{EdgeDetectionOperator}（\code{int}）：indicates the operator used for gradient calculation.

\item \code{GradientThresholdValue}（\code{int}）：threshold value of gradiential difference between pixels. Used to create gradient image. Default value is 20

\item \code{LineFitErrorThreshold}（\code{double}）：Default value is 1.0.

\item \code{MaxDistanceBetweenTwoLines}（\code{double}）：Default value is 6.0.

\item \code{MaxErrorThreshold}（\code{double}）：Default value is 1.3.

\item \code{MinLineLength}（\code{int}）：minimun line length to detect.

\item \code{MinPathLength}（\code{int}）：minimun connected pixels length processed to create an edge segment.

\item \code{NFAValidation}（\code{bool}）：Default value is true. indicates if NFA (Number of False Alarms) algorithm will be used for line and ellipse validation.

\item \code{PFmode}（\code{bool}）：Parameter Free mode will be activated when this value is set as true. Default value is false.

\item \code{ScanInterval}（\code{int}）：Default value is 1.

\item \code{Sigma}（\code{float}）：sigma value for internal GaussianBlur function. Default value is 1.0

\item \code{SumFlag}（\code{bool}）

}

\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_drawing.hpp>}
}
\keyword{opencv}
