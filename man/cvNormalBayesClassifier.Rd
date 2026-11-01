% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvNormalBayesClassifier}
\alias{cvNormalBayesClassifier}
\title{Bayes classifier for normally distributed data}
\usage{cvNormalBayesClassifier(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvNormalBayesClassifier} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Bayes classifier for normally distributed data.}
\details{
C++ 类 \code{cv::ml::NormalBayesClassifier} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvNormalBayesClassifier()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvNormalBayesClassifier(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Predicts response(s) for the provided sample(s)
\item \code{predictProb(inputs, flags = 0, outputs = NULL, outputProbs = NULL)}：Predicts the response for sample(s).
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStatModel}}（\code{cv::ml::StatModel}）}
\keyword{opencv}
