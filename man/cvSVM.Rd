% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSVM}
\alias{cvSVM}
\title{Support Vector Machines}
\usage{cvSVM(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSVM} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Support Vector Machines.}
\details{
\strong{分类问题要整数响应。}样本同样必须是 CV_32F；\code{responses} 在分类问题里必须是**类别**，传浮点的 0.0 / 1.0 会报 \code{the responses must be categorical}。用 \code{Mat(matrix(as.integer(y)))}（即 CV_32S）即可。存盘用 \code{obj$save(path)}，读回来用 \code{cvSVM_load(path)}——\code{obj$read()} 要的是 FileNode 对象，不是路径。
C++ 类 \code{cv::ml::SVM} 的 R 绑定。
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvSVM()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSVM(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{calcError(data, test, dst = NULL)}：Computes error on the training or test dataset.
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getC()}：Parameter C of a SVM optimization problem. For SVM::C_SVC, SVM::EPS_SVR or SVM::NU_SVR. Default value is 0.
\item \code{getClassWeights()}：Optional weights in the SVM::C_SVC problem, assigned to particular classes. They are multiplied by C so the parameter C of class i becomes \code{classWeights(i) * C}. Thus these weights affect the misclassification penalty for different classes. The larger weight, the larger penalty on misclassification of data from the corresponding class. Default value is empty Mat.
\item \code{getCoef0()}：Parameter coef0 of a kernel function. For SVM::POLY or SVM::SIGMOID. Default value is 0.
\item \code{getDecisionFunction(i, alpha = NULL, svidx = NULL)}：Retrieves the decision function.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDegree()}：Parameter degree of a kernel function. For SVM::POLY. Default value is 0.
\item \code{getGamma()}：Parameter of a kernel function. For SVM::POLY, SVM::RBF, SVM::SIGMOID or SVM::CHI2. Default value is 1.
\item \code{getKernelType()}：Type of a SVM kernel. See SVM::KernelTypes. Default value is SVM::RBF.
\item \code{getNu()}：Parameter of a SVM optimization problem. For SVM::NU_SVC, SVM::ONE_CLASS or SVM::NU_SVR. Default value is 0.
\item \code{getP()}：Parameter of a SVM optimization problem. For SVM::EPS_SVR. Default value is 0.
\item \code{getSupportVectors()}：Retrieves all the support vectors.
\item \code{getTermCriteria()}：Termination criteria of the iterative SVM training procedure which solves a partial case of constrained quadratic optimization problem. You can specify tolerance and/or the maximum number of iterations. Default value is \code{TermCriteria( TermCriteria::MAX_ITER + TermCriteria::EPS, 1000, FLT_EPSILON )};
\item \code{getType()}：Type of a SVM formulation. See SVM::Types. Default value is SVM::C_SVC.
\item \code{getUncompressedSupportVectors()}：Retrieves all the uncompressed support vectors of a linear SVM.
\item \code{getVarCount()}：Returns the number of variables in training samples.
\item \code{isClassifier()}：Returns true if the model is classifier.
\item \code{isTrained()}：Returns true if the model is trained.
\item \code{predict(samples, flags = 0, dst = NULL)}：Predicts response(s) for the provided sample(s)
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setC(val)}
\item \code{setClassWeights(val)}
\item \code{setCoef0(val)}
\item \code{setDegree(val)}
\item \code{setGamma(val)}
\item \code{setKernel(kernelType)}：Initialize with one of predefined kernels. See SVM::KernelTypes.
\item \code{setNu(val)}
\item \code{setP(val)}
\item \code{setTermCriteria(val)}
\item \code{setType(val)}
\item \code{train(samples, layout, responses)}：Trains the statistical model.
\item \code{trainAuto(samples, layout, responses, kFold = 10, Cgrid = NULL, gammaGrid = NULL, pGrid = NULL, nuGrid = NULL, coeffGrid = NULL, degreeGrid = NULL, balanced = FALSE)}：Trains an SVM with optimal parameters.
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvStatModel}}（\code{cv::ml::StatModel}）}
\keyword{opencv}
