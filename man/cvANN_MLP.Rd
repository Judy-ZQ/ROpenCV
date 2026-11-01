% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvANN_MLP}
\alias{cvANN_MLP}
\title{Artificial Neural Networks - Multi-Layer Perceptrons}
\usage{cvANN_MLP(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvANN_MLP} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Artificial Neural Networks - Multi-Layer Perceptrons.}
\details{
Unlike many other models in ML that are constructed and trained at once, in the MLP model these steps are separated. First, a network with the specified topology is created using the non-default constructor or the method ANN_MLP::create. All the weights are set to zeros. Then, the network is trained using a set of input and output vectors. The training procedure can be repeated more than once, that is, the weights can be adjusted based on the new training data.
Additional flags for StatModel::train are available: ANN_MLP::TrainFlags.
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvANN_MLP()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvANN_MLP(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getAnnealCoolingRatio()}：ANNEAL: Update cooling ratio. It must be >0 and less than 1. Default value is 0.95.
\item \code{getAnnealFinalT()}：ANNEAL: Update final temperature. It must be >=0 and less than initialT. Default value is 0.1.
\item \code{getAnnealInitialT()}：ANNEAL: Update initial temperature. It must be >=0. Default value is 10.
\item \code{getAnnealItePerStep()}：ANNEAL: Update iteration per step. It must be >0 . Default value is 10.
\item \code{getBackpropMomentumScale()}：BPROP: Strength of the momentum term (the difference between weights on the 2 previous iterations). This parameter provides some inertia to smooth the random fluctuations of the weights. It can vary from 0 (the feature is disabled) to 1 and beyond. The value 0.1 or so is good enough. Default value is 0.1.
\item \code{getBackpropWeightScale()}：BPROP: Strength of the weight gradient term. The recommended value is about 0.1. Default value is 0.1.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getLayerSizes()}：Integer vector specifying the number of neurons in each layer including the input and output layers. The very first element specifies the number of elements in the input layer. The last element - number of elements in the output layer.
\item \code{getRpropDW0()}：RPROP: Initial value of update-values . Default value is 0.1.
\item \code{getRpropDWMax()}：RPROP: Update-values upper limit . It must be >1. Default value is 50.
\item \code{getRpropDWMin()}：RPROP: Update-values lower limit . It must be positive. Default value is FLT_EPSILON.
\item \code{getRpropDWMinus()}：RPROP: Decrease factor . It must be <1. Default value is 0.5.
\item \code{getRpropDWPlus()}：RPROP: Increase factor . It must be >1. Default value is 1.2.
\item \code{getTermCriteria()}：Termination criteria of the training algorithm. You can specify the maximum number of iterations (maxCount) and/or how much the error could change between the iterations to make the algorithm continue (epsilon). Default value is TermCriteria(TermCriteria::MAX_ITER + TermCriteria::EPS, 1000, 0.01).
\item \code{getTrainMethod()}：Returns current training method
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{getWeights(layerIdx)}
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Predicts response(s) for the provided sample(s)
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setActivationFunction(type, param1 = 0, param2 = 0)}：Initialize the activation function for each neuron. Currently the default and the only fully supported activation function is ANN_MLP::SIGMOID_SYM.
\item \code{setAnnealCoolingRatio(val)}
\item \code{setAnnealFinalT(val)}
\item \code{setAnnealInitialT(val)}
\item \code{setAnnealItePerStep(val)}
\item \code{setBackpropMomentumScale(val)}
\item \code{setBackpropWeightScale(val)}
\item \code{setLayerSizes(layer_sizes)}：Integer vector specifying the number of neurons in each layer including the input and output layers. The very first element specifies the number of elements in the input layer. The last element - number of elements in the output layer. Default value is empty Mat.
\item \code{setRpropDW0(val)}
\item \code{setRpropDWMax(val)}
\item \code{setRpropDWMin(val)}
\item \code{setRpropDWMinus(val)}
\item \code{setRpropDWPlus(val)}
\item \code{setTermCriteria(val)}
\item \code{setTrainMethod(method, param1 = 0, param2 = 0)}：Sets training method and common parameters.
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStatModel}}（\code{cv::ml::StatModel}）}
\keyword{opencv}
