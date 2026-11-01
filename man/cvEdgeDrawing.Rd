% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvEdgeDrawing}
\alias{cvEdgeDrawing}
\title{Class implementing the ED (EdgeDrawing) [273], EDLines [4], EDPF [5] and EDCircles [6] algorithms}
\usage{cvEdgeDrawing(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvEdgeDrawing} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing the ED (EdgeDrawing) [273], EDLines [4], EDPF [5] and EDCircles [6] algorithms.}
\details{
C++ 类 \code{cv::ximgproc::EdgeDrawing} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/edge_drawing.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvEdgeDrawing(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{detectEdges(src)}：Detects edges in a grayscale image and prepares them to detect lines and ellipses.
\item \code{detectEllipses(dst = NULL)}：Detects circles and ellipses.
\item \code{detectLines(dst = NULL)}：Detects lines.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getEdgeImage(dst = NULL)}：returns Edge Image prepared by detectEdges function.
\item \code{getGradientImage(dst = NULL)}：returns Gradient Image prepared by detectEdges function.
\item \code{getSegmentIndicesOfLines()}：Returns for each line found in detectLines its edge segment index in getSegments
\item \code{getSegments()}：Returns std::vector<std::vector<Point>> of detected edge segments, see detectEdges
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setParams(parameters)}：sets parameters.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\section{Params 的字段}{
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
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
}
\keyword{opencv}
