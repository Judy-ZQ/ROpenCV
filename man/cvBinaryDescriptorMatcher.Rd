% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvBinaryDescriptorMatcher}
\alias{cvBinaryDescriptorMatcher}
\title{furnishes all functionalities for querying a dataset provided by user or internal to class (that user must, anyway, populate) on the model}
\usage{cvBinaryDescriptorMatcher(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvBinaryDescriptorMatcher} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{furnishes all functionalities for querying a dataset provided by user or internal to class (that user must, anyway, populate) on the model of Descriptor Matchers}
\details{
Once descriptors have been extracted from an image (both they represent lines and points), it becomes interesting to be able to match a descriptor with another one extracted from a different image and representing the same line or point, seen from a differente perspective or on a different scale. In reaching such goal, the main headache is designing an efficient search algorithm to associate a query descriptor to one extracted from a dataset. In the following, a matching modality based on Multi-Index Hashing (MiHashing) will be described.
The theory described in this section is based on [210] . Given a dataset populated with binary codes, each code is indexed m times into m different hash tables, according to m substrings it has been divided into. Thus, given a query code, all the entries close to it at least in one substring are returned by search as neighbor candidates. Returned entries are then checked for validity by verifying that their full codes are not distant (in Hamming space) more than r bits from query code. In details, each binary code h composed of b bits is divided into m disjoint substrings , each with length or bits. Formally, when two codes h and g differ by at the most r bits, in at the least one of their m substrings they differ by at the most bits. In particular, when (where is the Hamming norm), there must exist a substring k (with ) such that
That means that if Hamming distance between each of the m substring is strictly greater than , then must be larger that r and that is a contradiction. If the codes in dataset are divided into m substrings, then m tables will be built. Given a query q with substrings , i-th hash table is searched for entries distant at the most from and a set of candidates is obtained. The union of sets is a superset of the r-neighbors of q. Then, last step of algorithm is computing the Hamming distance between q and each element in , deleting the codes that are distant more that r from q.
\strong{C++ 头文件：}\code{#include <opencv2/line_descriptor/descriptor.hpp>}
\strong{构造}
\preformatted{
cvBinaryDescriptorMatcher()
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvBinaryDescriptorMatcher(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{knnMatch(queryDescriptors, trainDescriptors, k, mask = NULL, compactResult = FALSE)}：For every input query descriptor, retrieve the best k matching ones from a dataset provided from user or from the one internal to class.
\item \code{match(queryDescriptors, trainDescriptors, mask = NULL)}：For every input query descriptor, retrieve the best matching one from a dataset provided from user or from the one internal to class.
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
