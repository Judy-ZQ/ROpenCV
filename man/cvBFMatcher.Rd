% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBFMatcher}
\alias{cvBFMatcher}
\title{Brute-force descriptor matcher}
\usage{cvBFMatcher(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBFMatcher} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Brute-force descriptor matcher.}
\details{
For each descriptor in the first set, this matcher finds the closest descriptor in the second set by trying each one. This descriptor matcher supports masking permissible matches of descriptor sets.
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvBFMatcher(normType = NORM_L2, crossCheck = FALSE)
cvBFMatcher(normType = NORM_L2, crossCheck = FALSE)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBFMatcher(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{add(descriptors)}：Adds descriptors to train a CPU(trainDescCollectionis) or GPU(utrainDescCollectionis) descriptor collection.
\item \code{clear()}：Clears the train descriptor collections.
\item \code{clone(emptyTrainData = FALSE)}：Clones the matcher.
\item \code{empty()}：Returns true if there are no train descriptors in the both collections.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getTrainDescriptors()}：Returns a constant link to the train descriptor collection trainDescCollection .
\item \code{isMaskSupported()}：Returns true if the descriptor matcher supports masking permissible matches.
\item \code{knnMatch(queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE)}
\item \code{match(queryDescriptors, trainDescriptors, mask = NULL)}
\item \code{radiusMatch(queryDescriptors, trainDescriptors, maxDistance, mask = NULL, compactResult = FALSE)}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{train()}：Trains a descriptor matcher.
\item \code{write(fileName)}：Member Data Documentation
}
}
\seealso{父类 \code{\link{cvDescriptorMatcher}}（\code{cv::DescriptorMatcher}）}
\keyword{opencv}
