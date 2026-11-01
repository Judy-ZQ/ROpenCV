% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBoost}
\alias{cvBoost}
\title{Boosted tree classifier derived from DTrees}
\usage{cvBoost(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBoost} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Boosted tree classifier derived from DTrees.}
\details{
C++ 类 \code{cv::ml::Boost} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvBoost()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBoost(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getBoostType()}：Type of the boosting algorithm. See Boost::Types. Default value is Boost::REAL.
\item \code{getCVFolds()}：If CVFolds > 1 then algorithms prunes the built decision tree using K-fold cross-validation procedure where K is equal to CVFolds. Default value is 10.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getMaxCategories()}：Cluster possible values of a categorical variable into K<=maxCategories clusters to find a suboptimal split. If a discrete variable, on which the training procedure tries to make a split, takes more than maxCategories values, the precise best subset estimation may take a very long time because the algorithm is exponential. Instead, many decision trees engines (including our implementation) try to find sub-optimal split in this case by clustering all the samples into maxCategories clusters that is some categories are merged together. The clustering is applied only in n > 2-class classification problems for categorical variables with N > max_categories possible values. In case of regression and 2-class classification the optimal split can be found efficiently without employing clustering, thus the parameter is not used in these cases. Default value is 10.
\item \code{getMaxDepth()}：The maximum possible depth of the tree. That is the training algorithms attempts to split a node while its depth is less than maxDepth. The root node has zero depth. The actual depth may be smaller if the other termination criteria are met (see the outline of the training procedure here), and/or if the tree is pruned. Default value is INT_MAX.
\item \code{getMinSampleCount()}：If the number of samples in a node is less than this parameter then the node will not be split.
\item \code{getPriors()}：The array of a priori class probabilities, sorted by the class label value.
\item \code{getRegressionAccuracy()}：Termination criteria for regression trees. If all absolute differences between an estimated value in a node and values of train samples in this node are less than this parameter then the node will not be split further. Default value is 0.01f
\item \code{getTruncatePrunedTree()}：If true then pruned branches are physically removed from the tree. Otherwise they are retained and it is possible to get results from the original unpruned (or pruned less aggressively) tree. Default value is true.
\item \code{getUse1SERule()}：If true then a pruning will be harsher. This will make a tree more compact and more resistant to the training data noise but a bit less accurate. Default value is true.
\item \code{getUseSurrogates()}：If true then surrogate splits will be built. These splits allow to work with missing data and compute variable importance correctly. Default value is false.
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{getWeakCount()}：The number of weak classifiers. Default value is 100.
\item \code{getWeightTrimRate()}：A threshold between 0 and 1 used to save computational time. Samples with summary weight do not participate in the next iteration of training. Set this parameter to 0 to turn off this functionality. Default value is 0.95.
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Predicts response(s) for the provided sample(s)
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setBoostType(val)}
\item \code{setCVFolds(val)}
\item \code{setMaxCategories(val)}
\item \code{setMaxDepth(val)}
\item \code{setMinSampleCount(val)}
\item \code{setPriors(val)}：The array of a priori class probabilities, sorted by the class label value.
\item \code{setRegressionAccuracy(val)}
\item \code{setTruncatePrunedTree(val)}
\item \code{setUse1SERule(val)}
\item \code{setUseSurrogates(val)}
\item \code{setWeakCount(val)}
\item \code{setWeightTrimRate(val)}
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvDTrees}}（\code{cv::ml::DTrees}）}
\keyword{opencv}
