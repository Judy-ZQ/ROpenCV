% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvKNearest}
\alias{cvKNearest}
\title{The class implements K-Nearest Neighbors model}
\usage{cvKNearest(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvKNearest} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The class implements K-Nearest Neighbors model.}
\details{
\strong{样本必须是 CV_32F，而且默认 k 会骗你。}\code{Mat(双精度矩阵)} 给的是 CV_64F，\code{Mat(整数矩阵)} 给的是 CV_32S，两个都会被 \code{train()} 拒掉。CV_32S 尤其容易误判：它先过了 \code{setData} 里 \code{samples.type() == CV_32F || CV_32S} 那道断言，再到 \code{KNearestImpl::train} 里被 \code{new_samples.type() == CV_32F} 拦下，报错位置和第一道门不在一处。所以样本一律 \code{cv_mat_convert(Mat(X), CV_32F)}。\code{responses} 浮点、整数都收。另一个不会报错的坑：构造出来的对象默认 \code{k = 10}，训练样本少于 10 个时 \code{predict()} 退化成全局多数投票，所有查询点都塌到同一类——所以小数据集上必须显式 \code{setDefaultK()}。
C++ 类 \code{cv::ml::KNearest} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvKNearest()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvKNearest(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{findNearest(samples, k, results = NULL, neighborResponses = NULL, dist = NULL)}：Finds the neighbors and predicts responses for input vectors.
\item \code{getAlgorithmType()}：Algorithm type, one of KNearest::Types.
\item \code{getDefaultK()}：Default number of neighbors to use in predict method.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getEmax()}：Parameter for KDTree implementation.
\item \code{getIsClassifier()}：Whether classification or regression model should be trained.
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Predicts response(s) for the provided sample(s)
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setAlgorithmType(val)}
\item \code{setDefaultK(val)}
\item \code{setEmax(val)}
\item \code{setIsClassifier(val)}
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStatModel}}（\code{cv::ml::StatModel}）}
\keyword{opencv}
