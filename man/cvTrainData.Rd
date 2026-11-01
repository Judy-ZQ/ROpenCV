% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvTrainData}
\alias{cvTrainData}
\title{Class encapsulating training data}
\usage{cvTrainData(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvTrainData} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class encapsulating training data.}
\details{
Please note that the class only specifies the interface of training data, but not implementation. All the statistical model classes in ml module accepts Ptr<TrainData> as parameter. In other words, you can create your own class derived from TrainData and pass smart pointer to the instance of this class into StatModel::train.
\strong{C++ 头文件：}\code{#include <opencv2/ml.hpp>}
\strong{构造}
\preformatted{
cvTrainData(samples, layout, responses, varIdx = NULL, sampleIdx = NULL, sampleWeights = NULL, varType = NULL)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvTrainData(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{getCatCount(vi)}
\item \code{getCatMap()}
\item \code{getCatOfs()}
\item \code{getClassLabels()}：Returns the vector of class labels.
\item \code{getDefaultSubstValues()}
\item \code{getLayout()}
\item \code{getMissing()}
\item \code{getNAllVars()}
\item \code{getNSamples()}
\item \code{getNTestSamples()}
\item \code{getNTrainSamples()}
\item \code{getNVars()}
\item \code{getNames(names = NULL)}：Returns vector of symbolic names captured in loadFromCSV
\item \code{getNormCatResponses()}
\item \code{getResponseType()}
\item \code{getResponses()}
\item \code{getSample(varIdx, sidx)}
\item \code{getSampleWeights()}
\item \code{getSamples()}
\item \code{getTestNormCatResponses()}
\item \code{getTestResponses()}
\item \code{getTestSampleIdx()}
\item \code{getTestSampleWeights()}
\item \code{getTestSamples()}：Returns matrix of test samples.
\item \code{getTrainNormCatResponses()}：Returns the vector of normalized categorical responses.
\item \code{getTrainResponses()}：Returns the vector of responses.
\item \code{getTrainSampleIdx()}
\item \code{getTrainSampleWeights()}
\item \code{getTrainSamples(layout = ROW_SAMPLE, compressSamples = TRUE, compressVars = TRUE)}：Returns matrix of train samples.
\item \code{getValues(vi, sidx)}
\item \code{getVarIdx()}
\item \code{getVarSymbolFlags()}
\item \code{getVarType()}
\item \code{setTrainTestSplit(count, shuffle = TRUE)}：Splits the training data into the training and test parts.
\item \code{setTrainTestSplitRatio(ratio, shuffle = TRUE)}：Splits the training data into the training and test parts.
\item \code{shuffleTrainTest()}
}
}
\keyword{opencv}
