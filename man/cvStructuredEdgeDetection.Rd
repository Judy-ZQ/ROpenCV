% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvStructuredEdgeDetection}
\alias{cvStructuredEdgeDetection}
\title{Class implementing edge detection algorithm from [70]}
\usage{cvStructuredEdgeDetection(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvStructuredEdgeDetection} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing edge detection algorithm from [70]}
\details{
C++ 类 \code{cv::ximgproc::StructuredEdgeDetection} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ximgproc/structured_edge_detection.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvStructuredEdgeDetection(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{computeOrientation(src, dst = NULL)}：The function computes orientation from edge image.
\item \code{detectEdges(src, dst = NULL)}：The function detects edges in src and draw them to dst.
\item \code{edgesNms(edge_image, orientation_image, r = 2, s = 0, m = 1, isParallel = TRUE, dst = NULL)}：The function edgenms in edge image and suppress edges where edge is stronger in orthogonal direction.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
