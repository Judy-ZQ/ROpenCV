% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvPCTSignatures}
\alias{cvPCTSignatures}
\title{Class implementing PCT (position-color-texture) signature extraction as described in [152]}
\usage{cvPCTSignatures(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvPCTSignatures} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class implementing PCT (position-color-texture) signature extraction as described in [152]. The algorithm is divided to a feature sampler and a clusterizer. Feature sampler produces samples at given set of coordinates. Clusterizer then produces clusters of these samples using k-means algorithm. Resulting set of clusters is the signature of the input image.}
\details{
A signature is an array of SIGNATURE_DIMENSION-dimensional points. Used dimensions are: weight, x, y position; lab color, contrast, entropy. [152] [22]
\strong{C++ 头文件：}\code{#include <opencv2/xfeatures2d.hpp>}
\strong{构造}
\preformatted{
cvPCTSignatures(initSamplingPoints, initSeedCount)
cvPCTSignatures(initSamplingPoints, initClusterSeedIndexes)
cvPCTSignatures(initSampleCount = 2000, initSeedCount = 400, pointDistribution = 0)
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvPCTSignatures(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{computeSignature(image, dst = NULL)}：Computes signature of given image.
\item \code{computeSignatures(images, signatures = NULL)}：Computes signatures for multiple images in parallel.
\item \code{empty()}：Returns true if the Algorithm is empty (e.g. in the very beginning or after unsuccessful read.
\item \code{getClusterMinSize()}：This parameter multiplied by the index of iteration gives lower limit for cluster size. Clusters containing fewer points than specified by the limit have their centroid dismissed and points are reassigned.
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getDistanceFunction()}：Distance function selector used for measuring distance between two points in k-means.
\item \code{getDropThreshold()}：Remove centroids in k-means whose weight is lesser or equal to given threshold.
\item \code{getGrayscaleBits()}：Color resolution of the greyscale bitmap represented in allocated bits (i.e., value 4 means that 16 shades of grey are used). The greyscale bitmap is used for computing contrast and entropy values.
\item \code{getInitSeedCount()}：Number of initial seeds (initial number of clusters) for the k-means algorithm.
\item \code{getInitSeedIndexes()}：Initial seeds (initial number of clusters) for the k-means algorithm.
\item \code{getIterationCount()}：Number of iterations of the k-means clustering. We use fixed number of iterations, since the modified clustering is pruning clusters (not iteratively refining k clusters).
\item \code{getJoiningDistance()}：Threshold euclidean distance between two centroids. If two cluster centers are closer than this distance, one of the centroid is dismissed and points are reassigned.
\item \code{getMaxClustersCount()}：Maximal number of generated clusters. If the number is exceeded, the clusters are sorted by their weights and the smallest clusters are cropped.
\item \code{getSampleCount()}：Number of initial samples taken from the image.
\item \code{getSamplingPoints()}：Initial samples taken from the image. These sampled features become the input for clustering.
\item \code{getWeightA()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWeightB()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWeightContrast()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWeightEntropy()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWeightL()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWeightX()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWeightY()}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{getWindowRadius()}：Size of the texture sampling window used to compute contrast and entropy (center of the window is always in the pixel selected by x,y coordinates of the corresponding feature sample).
\item \code{read(fn)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setClusterMinSize(clusterMinSize)}：This parameter multiplied by the index of iteration gives lower limit for cluster size. Clusters containing fewer points than specified by the limit have their centroid dismissed and points are reassigned.
\item \code{setDistanceFunction(distanceFunction)}：Distance function selector used for measuring distance between two points in k-means. Available: L0_25, L0_5, L1, L2, L2SQUARED, L5, L_INFINITY.
\item \code{setDropThreshold(dropThreshold)}：Remove centroids in k-means whose weight is lesser or equal to given threshold.
\item \code{setGrayscaleBits(grayscaleBits)}：Color resolution of the greyscale bitmap represented in allocated bits (i.e., value 4 means that 16 shades of grey are used). The greyscale bitmap is used for computing contrast and entropy values.
\item \code{setInitSeedIndexes(initSeedIndexes)}：Initial seed indexes for the k-means algorithm.
\item \code{setIterationCount(iterationCount)}：Number of iterations of the k-means clustering. We use fixed number of iterations, since the modified clustering is pruning clusters (not iteratively refining k clusters).
\item \code{setJoiningDistance(joiningDistance)}：Threshold euclidean distance between two centroids. If two cluster centers are closer than this distance, one of the centroid is dismissed and points are reassigned.
\item \code{setMaxClustersCount(maxClustersCount)}：Maximal number of generated clusters. If the number is exceeded, the clusters are sorted by their weights and the smallest clusters are cropped.
\item \code{setSamplingPoints(samplingPoints)}：Sets sampling points used to sample the input image.
\item \code{setTranslation(idx, value)}：Translations of the individual axes of the feature space.
\item \code{setTranslations(translations)}：Translations of the individual axes of the feature space.
\item \code{setWeight(idx, value)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space.
\item \code{setWeightA(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeightB(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeightContrast(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeightEntropy(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeightL(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeightX(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeightY(weight)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space (x,y = position; L,a,b = color in CIE Lab space; c = contrast. e = entropy)
\item \code{setWeights(weights)}：Weights (multiplicative constants) that linearly stretch individual axes of the feature space.
\item \code{setWindowRadius(radius)}：Size of the texture sampling window used to compute contrast and entropy (center of the window is always in the pixel selected by x,y coordinates of the corresponding feature sample).
\item \code{write(fs, name)}：Deprecated
}
}
\seealso{父类 \code{\link{cvAlgorithm}}（\code{cv::Algorithm}）}
\keyword{opencv}
