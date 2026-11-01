% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvVariationalRefinement}
\alias{cvVariationalRefinement}
\title{Variational optical flow refinement}
\usage{cvVariationalRefinement(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvVariationalRefinement} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Variational optical flow refinement.}
\details{
This class implements variational refinement of the input flow field, i.e. it uses input flow to initialize the minimization of the following functional: , where are color constancy, gradient constancy and smoothness terms respectively. is a robust penalizer to limit the influence of outliers. A complete formulation and a description of the minimization procedure can be found in [42]
\strong{C++ 头文件：}\code{#include <opencv2/video/tracking.hpp>}
\strong{构造}
\preformatted{
cvVariationalRefinement()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvVariationalRefinement(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calc(I0, I1, flow = NULL)}：Calculates an optical flow.
\item \code{calcUV(I0, I1, flow_u = NULL, flow_v = NULL)}：calc function overload to handle separate horizontal (u) and vertical (v) flow components (to avoid extra splits/merges)
\item \code{clear()}：Clears the algorithm state.
\item \code{collectGarbage()}：Releases all inner buffers.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getAlpha()}：Weight of the smoothness term.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDelta()}：Weight of the color constancy term.
\item \code{getEpsilon()}：Norm value shift for robust penalizer.
\item \code{getFixedPointIterations()}：Number of outer (fixed-point) iterations in the minimization procedure.
\item \code{getGamma()}：Weight of the gradient constancy term.
\item \code{getOmega()}：Relaxation factor in SOR.
\item \code{getSorIterations()}：Number of inner successive over-relaxation (SOR) iterations in the minimization procedure to solve the respective linear system.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAlpha(val)}：Weight of the smoothness term.
\item \code{setDelta(val)}：Weight of the color constancy term.
\item \code{setEpsilon(val)}：Norm value shift for robust penalizer.
\item \code{setFixedPointIterations(val)}：Number of outer (fixed-point) iterations in the minimization procedure.
\item \code{setGamma(val)}：Weight of the gradient constancy term.
\item \code{setOmega(val)}：Relaxation factor in SOR.
\item \code{setSorIterations(val)}：Number of inner successive over-relaxation (SOR) iterations in the minimization procedure to solve the respective linear system.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDenseOpticalFlow}}（\code{cv::DenseOpticalFlow}）}
\keyword{opencv}
