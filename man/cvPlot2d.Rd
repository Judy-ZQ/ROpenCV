% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPlot2d}
\alias{cvPlot2d}
\title{cv::plot::Plot2d}
\usage{cvPlot2d(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPlot2d} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{\code{cv::plot::Plot2d} 的 R 包装：构造函数与可调方法见下。}
\details{
C++ 类 \code{cv::plot::Plot2d} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/plot.hpp>}
\strong{构造}
\preformatted{
cvPlot2d(data)
cvPlot2d(dataX, dataY)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPlot2d(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{render(dst = NULL)}
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setGridLinesNumber(gridLinesNumber)}
\item \code{setInvertOrientation(invertOrientation)}
\item \code{setMaxX(plotMaxX)}
\item \code{setMaxY(plotMaxY)}
\item \code{setMinX(plotMinX)}
\item \code{setMinY(plotMinY)}
\item \code{setNeedPlotLine(needPlotLine)}：Switches data visualization mode.
\item \code{setPlotAxisColor(plotAxisColor)}
\item \code{setPlotBackgroundColor(plotBackgroundColor)}
\item \code{setPlotGridColor(plotGridColor)}
\item \code{setPlotLineColor(plotLineColor)}
\item \code{setPlotLineWidth(plotLineWidth)}
\item \code{setPlotSize(plotSizeWidth, plotSizeHeight)}
\item \code{setPlotTextColor(plotTextColor)}
\item \code{setPointIdxToPrint(pointIdx)}：Sets the index of a point which coordinates will be printed on the top left corner of the plot (if ShowText flag is true).
\item \code{setShowGrid(needShowGrid)}
\item \code{setShowText(needShowText)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
