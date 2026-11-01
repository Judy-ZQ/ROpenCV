% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvEM}
\alias{cvEM}
\title{The class implements the Expectation Maximization algorithm}
\usage{cvEM(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvEM} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{The class implements the Expectation Maximization algorithm.}
\details{
C++ 类 \code{cv::ml::EM} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvEM()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvEM(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getClustersNumber()}：The number of mixture components in the Gaussian mixture model. Default value of the parameter is EM::DEFAULT_NCLUSTERS=5. Some of EM implementation could determine the optimal number of mixtures within a specified value range, but that is not the case in ML yet.
\item \code{getCovarianceMatrixType()}：Constraint on covariance matrices which defines type of matrices. See EM::Types.
\item \code{getCovs()}：Returns covariation matrices.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getMeans()}：Returns the cluster centers (means of the Gaussian mixture)
\item \code{getTermCriteria()}：The termination criteria of the EM algorithm. The EM algorithm can be terminated by the number of iterations termCrit.maxCount (number of M-steps) or when relative change of likelihood logarithm is less than termCrit.epsilon. Default maximum number of iterations is EM::DEFAULT_MAX_ITERS=100.
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{getWeights()}：Returns weights of the mixtures.
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Returns posterior probabilities for the provided samples.
\item \code{predict2(sample, dst = NULL)}：Returns a likelihood logarithm value and an index of the most probable mixture component for the given sample.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setClustersNumber(val)}
\item \code{setCovarianceMatrixType(val)}
\item \code{setTermCriteria(val)}
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{trainE(samples, means0, covs0 = NULL, weights0 = NULL, logLikelihoods = NULL, labels = NULL, probs = NULL)}：Estimate the Gaussian mixture parameters from a samples set.
\item \code{trainEM(samples, logLikelihoods = NULL, labels = NULL, probs = NULL)}：Estimate the Gaussian mixture parameters from a samples set.
\item \code{trainM(samples, probs0, logLikelihoods = NULL, labels = NULL, probs = NULL)}：Estimate the Gaussian mixture parameters from a samples set.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStatModel}}（\code{cv::ml::StatModel}）}
\keyword{opencv}
