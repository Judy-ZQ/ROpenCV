% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cv_kmeans}
\alias{cv_kmeans}
\title{Finds centers of clusters and groups input samples around the clusters}
\usage{cv_kmeans(data, K, bestLabels = NULL, criteria, attempts, flags,
    centers = NULL)}
\arguments{
\item{data}{Data for clustering. An array of N-Dimensional points with float coordinates is needed. Examples of this array can be: Mat points(count, 2, CV_32F); Mat points(count, 1, CV_32FC2); Mat points(1, count, CV_32FC2); std::vector<cv::Point2f> points(sampleCount);}
\item{K}{Number of clusters to split the set by.}
\item{bestLabels}{Input/output integer array that stores the cluster indices for every sample.}
\item{criteria}{The algorithm termination criteria, that is, the maximum number of iterations and/or the desired accuracy. The accuracy is specified as criteria.epsilon. As soon as each of the cluster centers moves by less than criteria.epsilon on some iteration, the algorithm stops.}
\item{attempts}{Flag to specify the number of times the algorithm is executed using different initial labellings. The algorithm returns the labels that yield the best compactness (see the last function parameter).}
\item{flags}{Flag that can take values of cv::KmeansFlags}
\item{centers}{Output matrix of the cluster centers, one row per each cluster center.}
}
\value{返回输出图像（\code{cvMat}），C++ 的标量返回值（\code{double}）挂在 \code{attr(x, "value")} 上。}
\description{Finds centers of clusters and groups input samples around the clusters.}
\details{
The function kmeans implements a k-means algorithm that finds the centers of cluster_count clusters and groups the input samples around the clusters. As an output, contains a 0-based cluster index for the sample stored in the row of the samples matrix.

\strong{注意：}(Python) An example on K-means clustering can be found at opencv_source_code/samples/python/kmeans.py

\strong{C++ 头文件：}\code{#include <opencv2/core.hpp>}
}
\keyword{opencv}
