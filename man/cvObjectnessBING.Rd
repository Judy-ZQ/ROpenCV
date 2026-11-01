% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvObjectnessBING}
\alias{cvObjectnessBING}
\title{Objectness algorithms based on [3] [3] Cheng, Ming-Ming, et al}
\usage{cvObjectnessBING(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvObjectnessBING} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Objectness algorithms based on [3] [3] Cheng, Ming-Ming, et al. "BING: Binarized normed gradients for objectness estimation at 300fps." IEEE CVPR. 2014.}
\details{
the Binarized normed gradients algorithm from [54]
\strong{C++ 头文件：}\code{#include <opencv2/saliency/saliencySpecializedClasses.hpp>}
\strong{构造}
\preformatted{
cvObjectnessBING()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvObjectnessBING(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{computeSaliency(image, dst = NULL)}
\item \code{getBase()}
\item \code{getNSS()}
\item \code{getW()}
\item \code{getobjectnessValues()}：Return the list of the rectangles' objectness value,.
\item \code{read()}
\item \code{setBBResDir(resultsDir)}：This is a utility function that allows to set an arbitrary path in which the algorithm will save the optional results.
\item \code{setBase(val)}
\item \code{setNSS(val)}
\item \code{setTrainingPath(trainingPath)}：This is a utility function that allows to set the correct path from which the algorithm will load the trained model.
\item \code{setW(val)}
\item \code{write()}
}
}
\keyword{opencv}
