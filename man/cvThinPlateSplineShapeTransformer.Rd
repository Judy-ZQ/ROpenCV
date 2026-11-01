% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvThinPlateSplineShapeTransformer}
\alias{cvThinPlateSplineShapeTransformer}
\title{Definition of the transformation}
\usage{cvThinPlateSplineShapeTransformer(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvThinPlateSplineShapeTransformer} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Definition of the transformation.}
\details{
occupied in the paper "Principal Warps: Thin-Plate Splines and Decomposition of Deformations", by F.L. Bookstein (PAMI 1989). :
\strong{C++ 头文件：}\code{#include <opencv2/shape/shape_transformer.hpp>}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvThinPlateSplineShapeTransformer(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{applyTransformation(input, dst = NULL)}：Apply a transformation, given a pre-estimated transformation parameters.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{estimateTransformation(transformingShape, targetShape, matches = NULL)}：Estimate the transformation parameters of the current transformer algorithm, based on point matches.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getRegularizationParameter()}
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setRegularizationParameter(beta)}：Set the regularization parameter for relaxing the exact interpolation requirements of the TPS algorithm.
\item \code{warpImage(transformingImage, flags = INTER_LINEAR, borderMode = BORDER_CONSTANT, borderValue = NULL, dst = NULL)}：Apply a transformation, given a pre-estimated transformation parameters, to an Image.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvShapeTransformer}}（\code{cv::ShapeTransformer}）}
\keyword{opencv}
