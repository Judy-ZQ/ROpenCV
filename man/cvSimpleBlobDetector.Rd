% do not edit by hand: 由 tools/gen/emit_docs.py 生成
\encoding{UTF-8}
\name{cvSimpleBlobDetector}
\alias{cvSimpleBlobDetector}
\title{Class for extracting blobs from an image}
\usage{cvSimpleBlobDetector(...)}
\arguments{
\item{...}{构造参数，原样透传给 C++ 的构造函数或 \code{create()} 静态工厂。}
}
\value{一个 \code{cvSimpleBlobDetector} 对象（继承 \code{cvObject}）。方法以 \code{obj$method(...)} 调用。}
\description{Class for extracting blobs from an image.}
\details{
The class implements a simple algorithm for extracting blobs from an image:
\enumerate{
\item Convert the source image to binary images by applying thresholding with several thresholds from minThreshold (inclusive) to maxThreshold (exclusive) with distance thresholdStep between neighboring thresholds.
\item Extract connected components from every binary image by findContours and calculate their centers.
\item Group centers from several binary images by their coordinates. Close centers form one group that corresponds to one blob, which is controlled by the minDistBetweenBlobs parameter.
\item From the groups, estimate final centers of blobs and their radiuses and return as locations and sizes of keypoints.
}
This class performs several filtrations of returned blobs. You should set filterBy* to true/false to turn on/off corresponding filtration. Available filtrations:
\itemize{
\item By color. This filter compares the intensity of a binary image at the center of a blob to blobColor. If they differ, the blob is filtered out. Use blobColor = 0 to extract dark blobs and blobColor = 255 to extract light blobs.
\item By area. Extracted blobs have an area between minArea (inclusive) and maxArea (exclusive).
\item By circularity. Extracted blobs have circularity between minCircularity (inclusive) and maxCircularity (exclusive).
\item By ratio of the minimum inertia to maximum inertia. Extracted blobs have this ratio between minInertiaRatio (inclusive) and maxInertiaRatio (exclusive).
\item By convexity. Extracted blobs have convexity (area / area of blob convex hull) between minConvexity (inclusive) and maxConvexity (exclusive).
}
Default values of parameters are tuned to extract dark circular blobs.
\strong{C++ 头文件：}\code{#include <opencv2/features2d.hpp>}
\strong{构造}
\preformatted{
cvSimpleBlobDetector(parameters = list())
}
\strong{方法}
方法都挂在对象上，第一个参数永远是接收者，不用手写：
\preformatted{obj <- cvSimpleBlobDetector(...)
obj$name(arg1, arg2)}
\itemize{
\item \code{clear()}：Clears the algorithm state.
\item \code{compute(images, descriptors = NULL)}
\item \code{defaultNorm()}
\item \code{descriptorSize()}
\item \code{descriptorType()}
\item \code{detect(images, masks = NULL)}
\item \code{detectAndCompute(image, mask = NULL, useProvidedKeypoints = FALSE, descriptors = NULL)}：Detects keypoints and computes the descriptors
\item \code{empty()}：Return true if detector object is empty.
\item \code{getBlobContours()}
\item \code{getDefaultName()}：Returns the algorithm string identifier. This string is used as top level xml/yml node tag when the object is saved to a file or string.
\item \code{getParams()}
\item \code{read(fileName)}：Reads algorithm parameters from a file storage.
\item \code{save(filename)}：Saves the algorithm to a file. In order to make this method work, the derived class must implement Algorithm::write(FileStorage& fs).
\item \code{setParams(params)}
\item \code{write(fileName)}：Stores algorithm parameters in a file storage.
}
}
\seealso{父类 \code{\link{cvFeature2D}}（\code{cv::Feature2D}）}
\section{Params 的字段}{
该参数在 R 侧是一个命名 list，字段名与 C++ 一致；未给出的字段保持 OpenCV 默认值，写错字段名会直接报错。
\itemize{
\item \code{blobColor}（\code{uchar}）
\item \code{collectContours}（\code{bool}）
\item \code{filterByArea}（\code{bool}）
\item \code{filterByCircularity}（\code{bool}）
\item \code{filterByColor}（\code{bool}）
\item \code{filterByConvexity}（\code{bool}）
\item \code{filterByInertia}（\code{bool}）
\item \code{maxArea}（\code{float}）
\item \code{maxCircularity}（\code{float}）
\item \code{maxConvexity}（\code{float}）
\item \code{maxInertiaRatio}（\code{float}）
\item \code{maxThreshold}（\code{float}）
\item \code{minArea}（\code{float}）
\item \code{minCircularity}（\code{float}）
\item \code{minConvexity}（\code{float}）
\item \code{minDistBetweenBlobs}（\code{float}）
\item \code{minInertiaRatio}（\code{float}）
\item \code{minRepeatability}（\code{size_t}）
\item \code{minThreshold}（\code{float}）
\item \code{thresholdStep}（\code{float}）
}
}
\keyword{opencv}
