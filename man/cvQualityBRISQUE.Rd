% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvQualityBRISQUE}
\alias{cvQualityBRISQUE}
\title{BRISQUE (Blind/Referenceless Image Spatial Quality Evaluator) is a No Reference Image Quality Assessment (NR-IQA) algorithm}
\usage{cvQualityBRISQUE(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvQualityBRISQUE} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{BRISQUE (Blind/Referenceless Image Spatial Quality Evaluator) is a No Reference Image Quality Assessment (NR-IQA) algorithm.}
\details{
BRISQUE computes a score based on extracting Natural Scene Statistics (https://en.wikipedia.org/wiki/Scene_statistics) and calculating feature vectors. See Mittal et al. [196] for original paper and original implementation [195] .
A trained model is provided in the /samples/ directory and is trained on the LIVE-R2 database [129] as in the original implementation. When evaluated against the TID2008 database [203] , the SROCC is -0.8424 versus the SROCC of -0.8354 in the original implementation. C++ code for the BRISQUE LIVE-R2 trainer and TID2008 evaluator are also provided in the /samples/ directory.
\strong{C++ 头文件：}\code{#include <opencv2/quality/qualitybrisque.hpp>}
\strong{构造}
\preformatted{
cvQualityBRISQUE(model_file_path, range_file_path)
cvQualityBRISQUE(model, range)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvQualityBRISQUE(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Implements Algorithm::clear
\item \code{compute(img)}：static method for computing quality
\item \code{empty()}：Implements Algorithm::empty
\item \code{getQualityMap(dst = NULL)}：Returns output quality map that was generated during computation, if supported by the algorithm
}
}
\seealso{父类 \code{\link{cvQualityBase}}（\code{cv::quality::QualityBase}）}
\keyword{opencv}
