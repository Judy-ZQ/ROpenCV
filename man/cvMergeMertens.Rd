% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvMergeMertens}
\alias{cvMergeMertens}
\title{Pixels are weighted using contrast, saturation and well-exposedness measures, than images are combined using laplacian pyramids}
\usage{cvMergeMertens(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvMergeMertens} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Pixels are weighted using contrast, saturation and well-exposedness measures, than images are combined using laplacian pyramids.}
\details{
The resulting image weight is constructed as weighted average of contrast, saturation and well-exposedness measures.
The resulting image doesn't require tonemapping and can be converted to 8-bit image by multiplying by 255, but it's recommended to apply gamma correction and/or linear tonemapping.
For more information see [189] .
\strong{C++ 头文件：}\code{#include <opencv2/photo.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvMergeMertens(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getContrastWeight()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getExposureWeight()}
\item \code{getSaturationWeight()}
\item \code{process(src, times, response, dst = NULL)}：Short version of process, that doesn't take extra arguments.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setContrastWeight(contrast_weiht)}
\item \code{setExposureWeight(exposure_weight)}
\item \code{setSaturationWeight(saturation_weight)}
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvMergeExposures}}（\code{cv::MergeExposures}）}
\keyword{opencv}
