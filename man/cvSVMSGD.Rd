% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSVMSGD}
\alias{cvSVMSGD}
\title{Stochastic Gradient Descent SVM classifier}
\usage{cvSVMSGD(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSVMSGD} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Stochastic Gradient Descent SVM classifier.}
\details{
SVMSGD provides a fast and easy-to-use implementation of the SVM classifier using the Stochastic Gradient Descent approach, as presented in [35].
The classifier has following parameters:
\itemize{
\item model type,
\item margin type,
\item margin regularization ,
\item initial step size ,
\item step decreasing power ,
\item and termination criteria.
}
The model type may have one of the following values: SGD and ASGD.
\itemize{
\item SGD is the classic version of SVMSGD classifier: every next step is calculated by the formula where is the weights vector for decision function at step ,
\item is the step size of model parameters at the iteration , it is decreased on each step by the formula
\item is the target functional from SVM task for sample with number , this sample is chosen stochastically on each step of the algorithm.
}
The recommended model type is ASGD (following [35]).
The margin type may have one of the following values: SOFT_MARGIN or HARD_MARGIN.
\itemize{
\item You should use HARD_MARGIN type, if you have linearly separable sets.
\item You should use SOFT_MARGIN type, if you have non-linearly separable sets or sets with outliers.
\item In the general case (if you know nothing about linear separability of your sets), use SOFT_MARGIN.
}
The other parameters may be described as follows:
\itemize{
\item Margin regularization parameter is responsible for weights decreasing at each step and for the strength of restrictions on outliers (the less the parameter, the less probability that an outlier will be ignored). Recommended value for SGD model is 0.0001, for ASGD model is 0.00001.
\item Initial step size parameter is the initial value for the step size . You will have to find the best initial step for your problem.
\item Step decreasing power is the power parameter for decreasing by the formula, mentioned above. Recommended value for SGD model is 1, for ASGD model is 0.75.
\item Termination criteria can be TermCriteria::COUNT, TermCriteria::EPS or TermCriteria::COUNT + TermCriteria::EPS. You will have to find the best termination criteria for your problem.
}
Note that the parameters margin regularization, initial step size, and step decreasing power should be positive.
To use SVMSGD algorithm do as follows:
\itemize{
\item first, create the SVMSGD object. The algorithm will set optimal parameters by default, but you can set your own parameters via functions setSvmsgdType , setMarginType , setMarginRegularization , setInitialStepSize , and setStepDecreasingPower .
\item then the SVM model can be trained using the train features and the correspondent labels by the method train .
\item after that, the label of a new feature vector can be predicted using the method predict .
}
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvSVMSGD()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSVMSGD(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getInitialStepSize()}：Parameter initialStepSize of a SVMSGD optimization problem.
\item \code{getMarginRegularization()}：Parameter marginRegularization of a SVMSGD optimization problem.
\item \code{getMarginType()}：Margin type, one of SVMSGD::MarginType.
\item \code{getShift()}
\item \code{getStepDecreasingPower()}：Parameter stepDecreasingPower of a SVMSGD optimization problem.
\item \code{getSvmsgdType()}：Algorithm type, one of SVMSGD::SvmsgdType.
\item \code{getTermCriteria()}：Termination criteria of the training algorithm. You can specify the maximum number of iterations (maxCount) and/or how much the error could change between the iterations to make the algorithm continue (epsilon).
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{getWeights()}
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Predicts response(s) for the provided sample(s)
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setInitialStepSize(InitialStepSize)}：Parameter initialStepSize of a SVMSGD optimization problem.
\item \code{setMarginRegularization(marginRegularization)}：Parameter marginRegularization of a SVMSGD optimization problem.
\item \code{setMarginType(marginType)}：Margin type, one of SVMSGD::MarginType.
\item \code{setOptimalParameters(svmsgdType = ASGD, marginType = SOFT_MARGIN)}：Function sets optimal parameters values for chosen SVM SGD model.
\item \code{setStepDecreasingPower(stepDecreasingPower)}：Parameter stepDecreasingPower of a SVMSGD optimization problem.
\item \code{setSvmsgdType(svmsgdType)}：Algorithm type, one of SVMSGD::SvmsgdType.
\item \code{setTermCriteria(val)}：Termination criteria of the training algorithm. You can specify the maximum number of iterations (maxCount) and/or how much the error could change between the iterations to make the algorithm continue (epsilon).
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStatModel}}（\code{cv::ml::StatModel}）}
\keyword{opencv}
